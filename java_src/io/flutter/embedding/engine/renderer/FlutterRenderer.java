package io.flutter.embedding.engine.renderer;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.SyncFence;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import androidx.annotation.Keep;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.lifecycle.m;
import io.flutter.Build;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.view.TextureRegistry;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public class FlutterRenderer implements TextureRegistry {
    private static final String TAG = "FlutterRenderer";
    public static boolean debugDisableSurfaceClear = false;
    public static boolean debugForceSurfaceProducerGlTextures = false;
    private final FlutterJNI flutterJNI;
    private final FlutterUiDisplayListener flutterUiDisplayListener;
    private Surface surface;
    private final AtomicLong nextTextureId = new AtomicLong(0);
    private boolean isDisplayingFlutterUi = false;
    private final Handler handler = new Handler();
    private final Set<WeakReference<TextureRegistry.OnTrimMemoryListener>> onTrimMemoryListeners = new HashSet();
    private final List<ImageReaderSurfaceProducer> imageReaderProducers = new ArrayList();

    /* loaded from: classes2.dex */
    public static final class DisplayFeature {
        public final Rect bounds;
        public final DisplayFeatureState state;
        public final DisplayFeatureType type;

        public DisplayFeature(Rect rect, DisplayFeatureType displayFeatureType, DisplayFeatureState displayFeatureState) {
            this.bounds = rect;
            this.type = displayFeatureType;
            this.state = displayFeatureState;
        }
    }

    /* loaded from: classes2.dex */
    public enum DisplayFeatureState {
        UNKNOWN(0),
        POSTURE_FLAT(1),
        POSTURE_HALF_OPENED(2);
        
        public final int encodedValue;

        DisplayFeatureState(int i10) {
            this.encodedValue = i10;
        }
    }

    /* loaded from: classes2.dex */
    public enum DisplayFeatureType {
        UNKNOWN(0),
        FOLD(1),
        HINGE(2),
        CUTOUT(3);
        
        public final int encodedValue;

        DisplayFeatureType(int i10) {
            this.encodedValue = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Keep
    @TargetApi(29)
    /* loaded from: classes2.dex */
    public final class ImageReaderSurfaceProducer implements TextureRegistry.SurfaceProducer, TextureRegistry.ImageConsumer, TextureRegistry.OnTrimMemoryListener {
        private static final boolean CLEANUP_ON_MEMORY_PRESSURE = true;
        private static final int MAX_DEQUEUED_IMAGES = 2;
        private static final int MAX_IMAGES = 6;
        private static final String TAG = "ImageReaderSurfaceProducer";
        private static final boolean VERBOSE_LOGS = false;
        private static final boolean trimOnMemoryPressure = true;

        /* renamed from: id  reason: collision with root package name */
        private final long f21523id;
        private boolean released;
        private boolean ignoringFence = false;
        private int requestedWidth = 1;
        private int requestedHeight = 1;
        private boolean createNewReader = true;
        private boolean notifiedDestroy = false;
        private long lastDequeueTime = 0;
        private long lastQueueTime = 0;
        private long lastScheduleTime = 0;
        private int numTrims = 0;
        private final Object lock = new Object();
        private final ArrayDeque<PerImageReader> imageReaderQueue = new ArrayDeque<>();
        private final HashMap<ImageReader, PerImageReader> perImageReaders = new HashMap<>();
        private ArrayList<PerImage> lastDequeuedImage = new ArrayList<>();
        private PerImageReader lastReaderDequeuedFrom = null;
        private TextureRegistry.SurfaceProducer.Callback callback = null;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2.dex */
        public class PerImage {
            public final Image image;
            public final long queuedTime;

            public PerImage(Image image, long j10) {
                this.image = image;
                this.queuedTime = j10;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2.dex */
        public class PerImageReader {
            public final ImageReader reader;
            private final ArrayDeque<PerImage> imageQueue = new ArrayDeque<>();
            private boolean closed = false;

            public PerImageReader(ImageReader imageReader) {
                this.reader = imageReader;
                imageReader.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: io.flutter.embedding.engine.renderer.j
                    @Override // android.media.ImageReader.OnImageAvailableListener
                    public final void onImageAvailable(ImageReader imageReader2) {
                        FlutterRenderer.ImageReaderSurfaceProducer.PerImageReader.this.lambda$new$0(imageReader2);
                    }
                }, new Handler(Looper.getMainLooper()));
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$new$0(ImageReader imageReader) {
                Image image;
                try {
                    image = imageReader.acquireLatestImage();
                } catch (IllegalStateException e10) {
                    Log.e(ImageReaderSurfaceProducer.TAG, "onImageAvailable acquireLatestImage failed: " + e10);
                    image = null;
                }
                if (image == null) {
                    return;
                }
                if (!ImageReaderSurfaceProducer.this.released && !this.closed) {
                    ImageReaderSurfaceProducer.this.onImage(imageReader, image);
                } else {
                    image.close();
                }
            }

            boolean canPrune() {
                if (this.imageQueue.isEmpty() && ImageReaderSurfaceProducer.this.lastReaderDequeuedFrom != this) {
                    return true;
                }
                return false;
            }

            void close() {
                this.closed = true;
                this.reader.close();
                this.imageQueue.clear();
            }

            PerImage dequeueImage() {
                if (this.imageQueue.isEmpty()) {
                    return null;
                }
                return this.imageQueue.removeFirst();
            }

            boolean imageQueueIsEmpty() {
                return this.imageQueue.isEmpty();
            }

            PerImage queueImage(Image image) {
                if (this.closed) {
                    return null;
                }
                PerImage perImage = new PerImage(image, System.nanoTime());
                this.imageQueue.add(perImage);
                while (this.imageQueue.size() > 2) {
                    this.imageQueue.removeFirst().image.close();
                }
                return perImage;
            }
        }

        ImageReaderSurfaceProducer(long j10) {
            this.f21523id = j10;
        }

        private void cleanup() {
            synchronized (this.lock) {
                for (PerImageReader perImageReader : this.perImageReaders.values()) {
                    if (this.lastReaderDequeuedFrom == perImageReader) {
                        this.lastReaderDequeuedFrom = null;
                    }
                    perImageReader.close();
                }
                this.perImageReaders.clear();
                if (this.lastDequeuedImage.size() > 0) {
                    Iterator<PerImage> it = this.lastDequeuedImage.iterator();
                    while (it.hasNext()) {
                        it.next().image.close();
                    }
                    this.lastDequeuedImage.clear();
                }
                PerImageReader perImageReader2 = this.lastReaderDequeuedFrom;
                if (perImageReader2 != null) {
                    perImageReader2.close();
                    this.lastReaderDequeuedFrom = null;
                }
                this.imageReaderQueue.clear();
            }
        }

        private ImageReader createImageReader() {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 33) {
                return createImageReader33();
            }
            if (i10 >= 29) {
                return createImageReader29();
            }
            throw new UnsupportedOperationException("ImageReaderPlatformViewRenderTarget requires API version 29+");
        }

        @TargetApi(29)
        private ImageReader createImageReader29() {
            ImageReader newInstance;
            newInstance = ImageReader.newInstance(this.requestedWidth, this.requestedHeight, 34, 6, 256L);
            return newInstance;
        }

        @TargetApi(Build.API_LEVELS.API_33)
        private ImageReader createImageReader33() {
            ImageReader build;
            h.a();
            ImageReader.Builder a10 = g.a(this.requestedWidth, this.requestedHeight);
            a10.setMaxImages(6);
            a10.setImageFormat(34);
            a10.setUsage(256L);
            build = a10.build();
            return build;
        }

        private PerImageReader getActiveReader() {
            synchronized (this.lock) {
                if (this.createNewReader) {
                    this.createNewReader = false;
                    return getOrCreatePerImageReader(createImageReader());
                }
                return this.imageReaderQueue.peekLast();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dequeueImage$0() {
            if (!this.released) {
                FlutterRenderer.this.scheduleEngineFrame();
            }
        }

        private void maybeWaitOnFence(Image image) {
            if (image == null || this.ignoringFence) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                waitOnFence(image);
                return;
            }
            this.ignoringFence = true;
            Log.d(TAG, "ImageTextureEntry can't wait on the fence on Android < 33");
        }

        private void releaseInternal() {
            cleanup();
            this.released = true;
            FlutterRenderer.this.removeOnTrimMemoryListener(this);
            FlutterRenderer.this.imageReaderProducers.remove(this);
        }

        @TargetApi(Build.API_LEVELS.API_33)
        private void waitOnFence(Image image) {
            SyncFence fence;
            try {
                fence = image.getFence();
                fence.awaitForever();
            } catch (IOException unused) {
            }
        }

        @Override // io.flutter.view.TextureRegistry.ImageConsumer
        @TargetApi(29)
        public Image acquireLatestImage() {
            PerImage dequeueImage = dequeueImage();
            if (dequeueImage == null) {
                return null;
            }
            maybeWaitOnFence(dequeueImage.image);
            return dequeueImage.image;
        }

        double deltaMillis(long j10) {
            return j10 / 1000000.0d;
        }

        PerImage dequeueImage() {
            PerImage perImage;
            boolean z10;
            synchronized (this.lock) {
                Iterator<PerImageReader> it = this.imageReaderQueue.iterator();
                perImage = null;
                while (true) {
                    z10 = false;
                    if (!it.hasNext()) {
                        break;
                    }
                    PerImageReader next = it.next();
                    PerImage dequeueImage = next.dequeueImage();
                    if (dequeueImage == null) {
                        perImage = dequeueImage;
                    } else {
                        while (this.lastDequeuedImage.size() > 2) {
                            this.lastDequeuedImage.remove(0).image.close();
                        }
                        this.lastDequeuedImage.add(dequeueImage);
                        this.lastReaderDequeuedFrom = next;
                        perImage = dequeueImage;
                    }
                }
                pruneImageReaderQueue();
                Iterator<PerImageReader> it2 = this.imageReaderQueue.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    } else if (!it2.next().imageQueueIsEmpty()) {
                        z10 = true;
                        break;
                    }
                }
            }
            if (z10) {
                FlutterRenderer.this.handler.post(new Runnable() { // from class: io.flutter.embedding.engine.renderer.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        FlutterRenderer.ImageReaderSurfaceProducer.this.lambda$dequeueImage$0();
                    }
                });
            }
            return perImage;
        }

        public void disableFenceForTest() {
            this.ignoringFence = true;
        }

        protected void finalize() {
            try {
                if (this.released) {
                    return;
                }
                releaseInternal();
                FlutterRenderer.this.handler.post(new TextureFinalizerRunnable(this.f21523id, FlutterRenderer.this.flutterJNI));
            } finally {
                super.finalize();
            }
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer
        public Surface getForcedNewSurface() {
            this.createNewReader = true;
            return getSurface();
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer
        public int getHeight() {
            return this.requestedHeight;
        }

        PerImageReader getOrCreatePerImageReader(ImageReader imageReader) {
            PerImageReader perImageReader = this.perImageReaders.get(imageReader);
            if (perImageReader == null) {
                PerImageReader perImageReader2 = new PerImageReader(imageReader);
                this.perImageReaders.put(imageReader, perImageReader2);
                this.imageReaderQueue.add(perImageReader2);
                return perImageReader2;
            }
            return perImageReader;
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer
        public Surface getSurface() {
            return getActiveReader().reader.getSurface();
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer
        public int getWidth() {
            return this.requestedWidth;
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer
        public boolean handlesCropAndRotation() {
            return false;
        }

        @Override // io.flutter.view.TextureRegistry.TextureEntry
        public long id() {
            return this.f21523id;
        }

        public int numImageReaders() {
            int size;
            synchronized (this.lock) {
                size = this.imageReaderQueue.size();
            }
            return size;
        }

        public int numImages() {
            int i10;
            synchronized (this.lock) {
                Iterator<PerImageReader> it = this.imageReaderQueue.iterator();
                i10 = 0;
                while (it.hasNext()) {
                    i10 += it.next().imageQueue.size();
                }
            }
            return i10;
        }

        public int numTrims() {
            int i10;
            synchronized (this.lock) {
                i10 = this.numTrims;
            }
            return i10;
        }

        void onImage(ImageReader imageReader, Image image) {
            PerImage queueImage;
            synchronized (this.lock) {
                queueImage = getOrCreatePerImageReader(imageReader).queueImage(image);
            }
            if (queueImage == null) {
                return;
            }
            FlutterRenderer.this.scheduleEngineFrame();
        }

        @Override // io.flutter.view.TextureRegistry.OnTrimMemoryListener
        public void onTrimMemory(int i10) {
            if (i10 < 40) {
                return;
            }
            synchronized (this.lock) {
                this.numTrims++;
            }
            TextureRegistry.SurfaceProducer.Callback callback = this.callback;
            if (callback != null) {
                this.notifiedDestroy = true;
                callback.onSurfaceCleanup();
            }
            cleanup();
            this.createNewReader = true;
        }

        public int pendingDequeuedImages() {
            return this.lastDequeuedImage.size();
        }

        void pruneImageReaderQueue() {
            PerImageReader peekFirst;
            while (this.imageReaderQueue.size() > 1 && (peekFirst = this.imageReaderQueue.peekFirst()) != null && peekFirst.canPrune()) {
                this.imageReaderQueue.removeFirst();
                this.perImageReaders.remove(peekFirst.reader);
                peekFirst.close();
            }
        }

        @Override // io.flutter.view.TextureRegistry.TextureEntry
        public void release() {
            if (this.released) {
                return;
            }
            releaseInternal();
            FlutterRenderer.this.unregisterTexture(this.f21523id);
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer
        public void scheduleFrame() {
            FlutterRenderer.this.scheduleEngineFrame();
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer
        public void setCallback(TextureRegistry.SurfaceProducer.Callback callback) {
            this.callback = callback;
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer
        public void setSize(int i10, int i11) {
            int max = Math.max(1, i10);
            int max2 = Math.max(1, i11);
            if (this.requestedWidth == max && this.requestedHeight == max2) {
                return;
            }
            this.createNewReader = true;
            this.requestedHeight = max2;
            this.requestedWidth = max;
        }
    }

    @Keep
    /* loaded from: classes2.dex */
    final class ImageTextureRegistryEntry implements TextureRegistry.ImageTextureEntry, TextureRegistry.ImageConsumer {
        private static final String TAG = "ImageTextureRegistryEntry";

        /* renamed from: id  reason: collision with root package name */
        private final long f21524id;
        private boolean ignoringFence = false;
        private Image image;
        private boolean released;

        ImageTextureRegistryEntry(long j10) {
            this.f21524id = j10;
        }

        @TargetApi(29)
        private void maybeWaitOnFence(Image image) {
            if (image == null || this.ignoringFence) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                waitOnFence(image);
                return;
            }
            this.ignoringFence = true;
            Log.d(TAG, "ImageTextureEntry can't wait on the fence on Android < 33");
        }

        @TargetApi(Build.API_LEVELS.API_33)
        private void waitOnFence(Image image) {
            SyncFence fence;
            try {
                fence = image.getFence();
                fence.awaitForever();
            } catch (IOException unused) {
            }
        }

        @Override // io.flutter.view.TextureRegistry.ImageConsumer
        @TargetApi(29)
        public Image acquireLatestImage() {
            Image image;
            synchronized (this) {
                image = this.image;
                this.image = null;
            }
            maybeWaitOnFence(image);
            return image;
        }

        protected void finalize() {
            try {
                if (this.released) {
                    return;
                }
                Image image = this.image;
                if (image != null) {
                    image.close();
                    this.image = null;
                }
                this.released = true;
                FlutterRenderer.this.handler.post(new TextureFinalizerRunnable(this.f21524id, FlutterRenderer.this.flutterJNI));
            } finally {
                super.finalize();
            }
        }

        @Override // io.flutter.view.TextureRegistry.TextureEntry
        public long id() {
            return this.f21524id;
        }

        @Override // io.flutter.view.TextureRegistry.ImageTextureEntry
        public void pushImage(Image image) {
            Image image2;
            if (this.released) {
                return;
            }
            synchronized (this) {
                image2 = this.image;
                this.image = image;
            }
            if (image2 != null) {
                Log.e(TAG, "Dropping PlatformView Frame");
                image2.close();
            }
            if (image != null) {
                FlutterRenderer.this.scheduleEngineFrame();
            }
        }

        @Override // io.flutter.view.TextureRegistry.TextureEntry
        public void release() {
            if (this.released) {
                return;
            }
            this.released = true;
            Image image = this.image;
            if (image != null) {
                image.close();
                this.image = null;
            }
            FlutterRenderer.this.unregisterTexture(this.f21524id);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class SurfaceTextureRegistryEntry implements TextureRegistry.SurfaceTextureEntry, TextureRegistry.OnTrimMemoryListener {
        private TextureRegistry.OnFrameConsumedListener frameConsumedListener;

        /* renamed from: id  reason: collision with root package name */
        private final long f21525id;
        private boolean released;
        private final SurfaceTextureWrapper textureWrapper;
        private TextureRegistry.OnTrimMemoryListener trimMemoryListener;

        SurfaceTextureRegistryEntry(long j10, SurfaceTexture surfaceTexture) {
            this.f21525id = j10;
            this.textureWrapper = new SurfaceTextureWrapper(surfaceTexture, new Runnable() { // from class: io.flutter.embedding.engine.renderer.k
                @Override // java.lang.Runnable
                public final void run() {
                    FlutterRenderer.SurfaceTextureRegistryEntry.this.lambda$new$0();
                }
            });
            surfaceTexture().setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: io.flutter.embedding.engine.renderer.l
                @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                    FlutterRenderer.SurfaceTextureRegistryEntry.this.lambda$new$1(surfaceTexture2);
                }
            }, new Handler());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            TextureRegistry.OnFrameConsumedListener onFrameConsumedListener = this.frameConsumedListener;
            if (onFrameConsumedListener != null) {
                onFrameConsumedListener.onFrameConsumed();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(SurfaceTexture surfaceTexture) {
            if (!this.released && FlutterRenderer.this.flutterJNI.isAttached()) {
                this.textureWrapper.markDirty();
                FlutterRenderer.this.scheduleEngineFrame();
            }
        }

        private void removeListener() {
            FlutterRenderer.this.removeOnTrimMemoryListener(this);
        }

        protected void finalize() {
            try {
                if (this.released) {
                    return;
                }
                FlutterRenderer.this.handler.post(new TextureFinalizerRunnable(this.f21525id, FlutterRenderer.this.flutterJNI));
            } finally {
                super.finalize();
            }
        }

        @Override // io.flutter.view.TextureRegistry.TextureEntry
        public long id() {
            return this.f21525id;
        }

        @Override // io.flutter.view.TextureRegistry.OnTrimMemoryListener
        public void onTrimMemory(int i10) {
            TextureRegistry.OnTrimMemoryListener onTrimMemoryListener = this.trimMemoryListener;
            if (onTrimMemoryListener != null) {
                onTrimMemoryListener.onTrimMemory(i10);
            }
        }

        @Override // io.flutter.view.TextureRegistry.TextureEntry
        public void release() {
            if (this.released) {
                return;
            }
            Log.v(FlutterRenderer.TAG, "Releasing a SurfaceTexture (" + this.f21525id + ").");
            this.textureWrapper.release();
            FlutterRenderer.this.unregisterTexture(this.f21525id);
            removeListener();
            this.released = true;
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceTextureEntry
        public void setOnFrameConsumedListener(TextureRegistry.OnFrameConsumedListener onFrameConsumedListener) {
            this.frameConsumedListener = onFrameConsumedListener;
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceTextureEntry
        public void setOnTrimMemoryListener(TextureRegistry.OnTrimMemoryListener onTrimMemoryListener) {
            this.trimMemoryListener = onTrimMemoryListener;
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceTextureEntry
        public SurfaceTexture surfaceTexture() {
            return this.textureWrapper.surfaceTexture();
        }

        public SurfaceTextureWrapper textureWrapper() {
            return this.textureWrapper;
        }
    }

    /* loaded from: classes2.dex */
    static final class TextureFinalizerRunnable implements Runnable {
        private final FlutterJNI flutterJNI;

        /* renamed from: id  reason: collision with root package name */
        private final long f21526id;

        /* JADX INFO: Access modifiers changed from: package-private */
        public TextureFinalizerRunnable(long j10, FlutterJNI flutterJNI) {
            this.f21526id = j10;
            this.flutterJNI = flutterJNI;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.flutterJNI.isAttached()) {
                return;
            }
            Log.v(FlutterRenderer.TAG, "Releasing a Texture (" + this.f21526id + ").");
            this.flutterJNI.unregisterTexture(this.f21526id);
        }
    }

    /* loaded from: classes2.dex */
    public static final class ViewportMetrics {
        public static final int unsetValue = -1;
        public float devicePixelRatio = 1.0f;
        public int width = 0;
        public int height = 0;
        public int viewPaddingTop = 0;
        public int viewPaddingRight = 0;
        public int viewPaddingBottom = 0;
        public int viewPaddingLeft = 0;
        public int viewInsetTop = 0;
        public int viewInsetRight = 0;
        public int viewInsetBottom = 0;
        public int viewInsetLeft = 0;
        public int systemGestureInsetTop = 0;
        public int systemGestureInsetRight = 0;
        public int systemGestureInsetBottom = 0;
        public int systemGestureInsetLeft = 0;
        public int physicalTouchSlop = -1;
        private final List<DisplayFeature> displayFeatures = new ArrayList();
        private final List<DisplayFeature> displayCutouts = new ArrayList();

        public List<DisplayFeature> getDisplayCutouts() {
            return this.displayCutouts;
        }

        public List<DisplayFeature> getDisplayFeatures() {
            return this.displayFeatures;
        }

        public void setDisplayCutouts(List<DisplayFeature> list) {
            this.displayCutouts.clear();
            this.displayCutouts.addAll(list);
        }

        public void setDisplayFeatures(List<DisplayFeature> list) {
            this.displayFeatures.clear();
            this.displayFeatures.addAll(list);
        }

        boolean validate() {
            if (this.width > 0 && this.height > 0 && this.devicePixelRatio > 0.0f) {
                return true;
            }
            return false;
        }
    }

    public FlutterRenderer(FlutterJNI flutterJNI) {
        FlutterUiDisplayListener flutterUiDisplayListener = new FlutterUiDisplayListener() { // from class: io.flutter.embedding.engine.renderer.FlutterRenderer.1
            @Override // io.flutter.embedding.engine.renderer.FlutterUiDisplayListener
            public void onFlutterUiDisplayed() {
                FlutterRenderer.this.isDisplayingFlutterUi = true;
            }

            @Override // io.flutter.embedding.engine.renderer.FlutterUiDisplayListener
            public void onFlutterUiNoLongerDisplayed() {
                FlutterRenderer.this.isDisplayingFlutterUi = false;
            }
        };
        this.flutterUiDisplayListener = flutterUiDisplayListener;
        this.flutterJNI = flutterJNI;
        flutterJNI.addIsDisplayingFlutterUiListener(flutterUiDisplayListener);
        ProcessLifecycleOwner.l().getLifecycle().a(new DefaultLifecycleObserver() { // from class: io.flutter.embedding.engine.renderer.FlutterRenderer.2
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onResume(m mVar) {
                Log.v(FlutterRenderer.TAG, "onResume called; notifying SurfaceProducers");
                for (ImageReaderSurfaceProducer imageReaderSurfaceProducer : FlutterRenderer.this.imageReaderProducers) {
                    if (imageReaderSurfaceProducer.callback != null && imageReaderSurfaceProducer.notifiedDestroy) {
                        imageReaderSurfaceProducer.notifiedDestroy = false;
                        imageReaderSurfaceProducer.callback.onSurfaceAvailable();
                    }
                }
            }
        });
    }

    private void clearDeadListeners() {
        Iterator<WeakReference<TextureRegistry.OnTrimMemoryListener>> it = this.onTrimMemoryListeners.iterator();
        while (it.hasNext()) {
            if (it.next().get() == null) {
                it.remove();
            }
        }
    }

    private void registerImageTexture(long j10, TextureRegistry.ImageConsumer imageConsumer, boolean z10) {
        this.flutterJNI.registerImageTexture(j10, imageConsumer, z10);
    }

    private void registerTexture(long j10, SurfaceTextureWrapper surfaceTextureWrapper) {
        this.flutterJNI.registerTexture(j10, surfaceTextureWrapper);
    }

    private void translateFeatureBounds(int[] iArr, int i10, Rect rect) {
        iArr[i10] = rect.left;
        iArr[i10 + 1] = rect.top;
        iArr[i10 + 2] = rect.right;
        iArr[i10 + 3] = rect.bottom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterTexture(long j10) {
        this.flutterJNI.unregisterTexture(j10);
    }

    public void addIsDisplayingFlutterUiListener(FlutterUiDisplayListener flutterUiDisplayListener) {
        this.flutterJNI.addIsDisplayingFlutterUiListener(flutterUiDisplayListener);
        if (this.isDisplayingFlutterUi) {
            flutterUiDisplayListener.onFlutterUiDisplayed();
        }
    }

    void addOnTrimMemoryListener(TextureRegistry.OnTrimMemoryListener onTrimMemoryListener) {
        clearDeadListeners();
        this.onTrimMemoryListeners.add(new WeakReference<>(onTrimMemoryListener));
    }

    @Override // io.flutter.view.TextureRegistry
    public TextureRegistry.ImageTextureEntry createImageTexture() {
        ImageTextureRegistryEntry imageTextureRegistryEntry = new ImageTextureRegistryEntry(this.nextTextureId.getAndIncrement());
        Log.v(TAG, "New ImageTextureEntry ID: " + imageTextureRegistryEntry.id());
        registerImageTexture(imageTextureRegistryEntry.id(), imageTextureRegistryEntry, false);
        return imageTextureRegistryEntry;
    }

    @Override // io.flutter.view.TextureRegistry
    public TextureRegistry.SurfaceProducer createSurfaceProducer(TextureRegistry.SurfaceLifecycle surfaceLifecycle) {
        boolean z10;
        if (!debugForceSurfaceProducerGlTextures && Build.VERSION.SDK_INT >= 29) {
            long andIncrement = this.nextTextureId.getAndIncrement();
            ImageReaderSurfaceProducer imageReaderSurfaceProducer = new ImageReaderSurfaceProducer(andIncrement);
            if (surfaceLifecycle == TextureRegistry.SurfaceLifecycle.resetInBackground) {
                z10 = true;
            } else {
                z10 = false;
            }
            registerImageTexture(andIncrement, imageReaderSurfaceProducer, z10);
            if (z10) {
                addOnTrimMemoryListener(imageReaderSurfaceProducer);
            }
            this.imageReaderProducers.add(imageReaderSurfaceProducer);
            Log.v(TAG, "New ImageReaderSurfaceProducer ID: " + andIncrement);
            return imageReaderSurfaceProducer;
        }
        TextureRegistry.SurfaceTextureEntry createSurfaceTexture = createSurfaceTexture();
        SurfaceTextureSurfaceProducer surfaceTextureSurfaceProducer = new SurfaceTextureSurfaceProducer(createSurfaceTexture.id(), this.handler, this.flutterJNI, createSurfaceTexture);
        Log.v(TAG, "New SurfaceTextureSurfaceProducer ID: " + createSurfaceTexture.id());
        return surfaceTextureSurfaceProducer;
    }

    @Override // io.flutter.view.TextureRegistry
    public TextureRegistry.SurfaceTextureEntry createSurfaceTexture() {
        Log.v(TAG, "Creating a SurfaceTexture.");
        return registerSurfaceTexture(new SurfaceTexture(0));
    }

    public void dispatchPointerDataPacket(ByteBuffer byteBuffer, int i10) {
        this.flutterJNI.dispatchPointerDataPacket(byteBuffer, i10);
    }

    public void dispatchSemanticsAction(int i10, int i11, ByteBuffer byteBuffer, int i12) {
        this.flutterJNI.dispatchSemanticsAction(i10, i11, byteBuffer, i12);
    }

    public Bitmap getBitmap() {
        return this.flutterJNI.getBitmap();
    }

    public boolean isDisplayingFlutterUi() {
        return this.isDisplayingFlutterUi;
    }

    public boolean isSoftwareRenderingEnabled() {
        return this.flutterJNI.getIsSoftwareRenderingEnabled();
    }

    @Override // io.flutter.view.TextureRegistry
    public void onTrimMemory(int i10) {
        Iterator<WeakReference<TextureRegistry.OnTrimMemoryListener>> it = this.onTrimMemoryListeners.iterator();
        while (it.hasNext()) {
            TextureRegistry.OnTrimMemoryListener onTrimMemoryListener = it.next().get();
            if (onTrimMemoryListener != null) {
                onTrimMemoryListener.onTrimMemory(i10);
            } else {
                it.remove();
            }
        }
    }

    @Override // io.flutter.view.TextureRegistry
    public TextureRegistry.SurfaceTextureEntry registerSurfaceTexture(SurfaceTexture surfaceTexture) {
        return registerSurfaceTexture(this.nextTextureId.getAndIncrement(), surfaceTexture);
    }

    public void removeIsDisplayingFlutterUiListener(FlutterUiDisplayListener flutterUiDisplayListener) {
        this.flutterJNI.removeIsDisplayingFlutterUiListener(flutterUiDisplayListener);
    }

    void removeOnTrimMemoryListener(TextureRegistry.OnTrimMemoryListener onTrimMemoryListener) {
        for (WeakReference<TextureRegistry.OnTrimMemoryListener> weakReference : this.onTrimMemoryListeners) {
            if (weakReference.get() == onTrimMemoryListener) {
                this.onTrimMemoryListeners.remove(weakReference);
                return;
            }
        }
    }

    void scheduleEngineFrame() {
        this.flutterJNI.scheduleFrame();
    }

    public void setAccessibilityFeatures(int i10) {
        this.flutterJNI.setAccessibilityFeatures(i10);
    }

    public void setSemanticsEnabled(boolean z10) {
        this.flutterJNI.setSemanticsEnabled(z10);
    }

    public void setViewportMetrics(ViewportMetrics viewportMetrics) {
        if (!viewportMetrics.validate()) {
            return;
        }
        Log.v(TAG, "Setting viewport metrics\nSize: " + viewportMetrics.width + " x " + viewportMetrics.height + "\nPadding - L: " + viewportMetrics.viewPaddingLeft + ", T: " + viewportMetrics.viewPaddingTop + ", R: " + viewportMetrics.viewPaddingRight + ", B: " + viewportMetrics.viewPaddingBottom + "\nInsets - L: " + viewportMetrics.viewInsetLeft + ", T: " + viewportMetrics.viewInsetTop + ", R: " + viewportMetrics.viewInsetRight + ", B: " + viewportMetrics.viewInsetBottom + "\nSystem Gesture Insets - L: " + viewportMetrics.systemGestureInsetLeft + ", T: " + viewportMetrics.systemGestureInsetTop + ", R: " + viewportMetrics.systemGestureInsetRight + ", B: " + viewportMetrics.systemGestureInsetRight + "\nDisplay Features: " + viewportMetrics.displayFeatures.size() + "\nDisplay Cutouts: " + viewportMetrics.displayCutouts.size());
        int size = viewportMetrics.displayFeatures.size() + viewportMetrics.displayCutouts.size();
        int[] iArr = new int[size * 4];
        int[] iArr2 = new int[size];
        int[] iArr3 = new int[size];
        for (int i10 = 0; i10 < viewportMetrics.displayFeatures.size(); i10++) {
            DisplayFeature displayFeature = (DisplayFeature) viewportMetrics.displayFeatures.get(i10);
            translateFeatureBounds(iArr, i10 * 4, displayFeature.bounds);
            iArr2[i10] = displayFeature.type.encodedValue;
            iArr3[i10] = displayFeature.state.encodedValue;
        }
        int size2 = viewportMetrics.displayFeatures.size() * 4;
        for (int i11 = 0; i11 < viewportMetrics.displayCutouts.size(); i11++) {
            DisplayFeature displayFeature2 = (DisplayFeature) viewportMetrics.displayCutouts.get(i11);
            translateFeatureBounds(iArr, (i11 * 4) + size2, displayFeature2.bounds);
            iArr2[viewportMetrics.displayFeatures.size() + i11] = displayFeature2.type.encodedValue;
            iArr3[viewportMetrics.displayFeatures.size() + i11] = displayFeature2.state.encodedValue;
        }
        this.flutterJNI.setViewportMetrics(viewportMetrics.devicePixelRatio, viewportMetrics.width, viewportMetrics.height, viewportMetrics.viewPaddingTop, viewportMetrics.viewPaddingRight, viewportMetrics.viewPaddingBottom, viewportMetrics.viewPaddingLeft, viewportMetrics.viewInsetTop, viewportMetrics.viewInsetRight, viewportMetrics.viewInsetBottom, viewportMetrics.viewInsetLeft, viewportMetrics.systemGestureInsetTop, viewportMetrics.systemGestureInsetRight, viewportMetrics.systemGestureInsetBottom, viewportMetrics.systemGestureInsetLeft, viewportMetrics.physicalTouchSlop, iArr, iArr2, iArr3);
    }

    public void startRenderingToSurface(Surface surface, boolean z10) {
        if (!z10) {
            stopRenderingToSurface();
        }
        this.surface = surface;
        if (z10) {
            this.flutterJNI.onSurfaceWindowChanged(surface);
        } else {
            this.flutterJNI.onSurfaceCreated(surface);
        }
    }

    public void stopRenderingToSurface() {
        if (this.surface != null) {
            this.flutterJNI.onSurfaceDestroyed();
            if (this.isDisplayingFlutterUi) {
                this.flutterUiDisplayListener.onFlutterUiNoLongerDisplayed();
            }
            this.isDisplayingFlutterUi = false;
            this.surface = null;
        }
    }

    public void surfaceChanged(int i10, int i11) {
        this.flutterJNI.onSurfaceChanged(i10, i11);
    }

    public void swapSurface(Surface surface) {
        this.surface = surface;
        this.flutterJNI.onSurfaceWindowChanged(surface);
    }

    private TextureRegistry.SurfaceTextureEntry registerSurfaceTexture(long j10, SurfaceTexture surfaceTexture) {
        surfaceTexture.detachFromGLContext();
        SurfaceTextureRegistryEntry surfaceTextureRegistryEntry = new SurfaceTextureRegistryEntry(j10, surfaceTexture);
        Log.v(TAG, "New SurfaceTexture ID: " + surfaceTextureRegistryEntry.id());
        registerTexture(surfaceTextureRegistryEntry.id(), surfaceTextureRegistryEntry.textureWrapper());
        addOnTrimMemoryListener(surfaceTextureRegistryEntry);
        return surfaceTextureRegistryEntry;
    }
}
