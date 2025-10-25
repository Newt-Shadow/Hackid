package io.flutter.view;

import android.graphics.SurfaceTexture;
import android.media.Image;
import android.view.Surface;
import androidx.annotation.Keep;
/* loaded from: classes2.dex */
public interface TextureRegistry {

    @Keep
    /* loaded from: classes2.dex */
    public interface GLTextureConsumer {
        SurfaceTexture getSurfaceTexture();
    }

    @Keep
    /* loaded from: classes2.dex */
    public interface ImageConsumer {
        Image acquireLatestImage();
    }

    @Keep
    /* loaded from: classes2.dex */
    public interface ImageTextureEntry extends TextureEntry {
        void pushImage(Image image);
    }

    /* loaded from: classes2.dex */
    public interface OnFrameConsumedListener {
        void onFrameConsumed();
    }

    /* loaded from: classes2.dex */
    public interface OnTrimMemoryListener {
        void onTrimMemory(int i10);
    }

    /* loaded from: classes2.dex */
    public enum SurfaceLifecycle {
        manual,
        resetInBackground
    }

    @Keep
    /* loaded from: classes2.dex */
    public interface SurfaceProducer extends TextureEntry {

        /* loaded from: classes2.dex */
        public interface Callback {
            default void onSurfaceAvailable() {
                onSurfaceCreated();
            }

            default void onSurfaceCleanup() {
                onSurfaceDestroyed();
            }

            @Deprecated(forRemoval = true, since = "Flutter 3.27")
            default void onSurfaceCreated() {
            }

            @Deprecated(forRemoval = true, since = "Flutter 3.28")
            default void onSurfaceDestroyed() {
            }
        }

        Surface getForcedNewSurface();

        int getHeight();

        Surface getSurface();

        int getWidth();

        boolean handlesCropAndRotation();

        void scheduleFrame();

        void setCallback(Callback callback);

        void setSize(int i10, int i11);
    }

    @Keep
    /* loaded from: classes2.dex */
    public interface SurfaceTextureEntry extends TextureEntry {
        default void setOnFrameConsumedListener(OnFrameConsumedListener onFrameConsumedListener) {
        }

        default void setOnTrimMemoryListener(OnTrimMemoryListener onTrimMemoryListener) {
        }

        SurfaceTexture surfaceTexture();
    }

    /* loaded from: classes2.dex */
    public interface TextureEntry {
        long id();

        void release();
    }

    ImageTextureEntry createImageTexture();

    default SurfaceProducer createSurfaceProducer() {
        return createSurfaceProducer(SurfaceLifecycle.manual);
    }

    SurfaceProducer createSurfaceProducer(SurfaceLifecycle surfaceLifecycle);

    SurfaceTextureEntry createSurfaceTexture();

    default void onTrimMemory(int i10) {
    }

    SurfaceTextureEntry registerSurfaceTexture(SurfaceTexture surfaceTexture);
}
