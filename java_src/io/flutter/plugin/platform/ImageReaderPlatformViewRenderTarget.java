package io.flutter.plugin.platform;

import android.annotation.TargetApi;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import io.flutter.Build;
import io.flutter.Log;
import io.flutter.view.TextureRegistry;
@TargetApi(29)
/* loaded from: classes2.dex */
public class ImageReaderPlatformViewRenderTarget implements PlatformViewRenderTarget {
    private static final int MAX_IMAGES = 4;
    private static final String TAG = "ImageReaderPlatformViewRenderTarget";
    private ImageReader reader;
    private TextureRegistry.ImageTextureEntry textureEntry;
    private int bufferWidth = 0;
    private int bufferHeight = 0;
    private final Handler onImageAvailableHandler = new Handler();
    private final ImageReader.OnImageAvailableListener onImageAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: io.flutter.plugin.platform.ImageReaderPlatformViewRenderTarget.1
        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            Image image;
            try {
                image = imageReader.acquireLatestImage();
            } catch (IllegalStateException e10) {
                Log.e(ImageReaderPlatformViewRenderTarget.TAG, "onImageAvailable acquireLatestImage failed: " + e10.toString());
                image = null;
            }
            if (image == null) {
                return;
            }
            ImageReaderPlatformViewRenderTarget.this.textureEntry.pushImage(image);
        }
    };

    public ImageReaderPlatformViewRenderTarget(TextureRegistry.ImageTextureEntry imageTextureEntry) {
        if (Build.VERSION.SDK_INT >= 29) {
            this.textureEntry = imageTextureEntry;
            return;
        }
        throw new UnsupportedOperationException("ImageReaderPlatformViewRenderTarget requires API version 29+");
    }

    private void closeReader() {
        if (this.reader != null) {
            this.textureEntry.pushImage(null);
            this.reader.close();
            this.reader = null;
        }
    }

    protected ImageReader createImageReader() {
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
    protected ImageReader createImageReader29() {
        ImageReader newInstance;
        newInstance = ImageReader.newInstance(this.bufferWidth, this.bufferHeight, 34, 4, 256L);
        newInstance.setOnImageAvailableListener(this.onImageAvailableListener, this.onImageAvailableHandler);
        return newInstance;
    }

    @TargetApi(Build.API_LEVELS.API_33)
    protected ImageReader createImageReader33() {
        ImageReader build;
        io.flutter.embedding.engine.renderer.h.a();
        ImageReader.Builder a10 = io.flutter.embedding.engine.renderer.g.a(this.bufferWidth, this.bufferHeight);
        a10.setMaxImages(4);
        a10.setImageFormat(34);
        a10.setUsage(256L);
        build = a10.build();
        build.setOnImageAvailableListener(this.onImageAvailableListener, this.onImageAvailableHandler);
        return build;
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public int getHeight() {
        return this.bufferHeight;
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public long getId() {
        return this.textureEntry.id();
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public Surface getSurface() {
        return this.reader.getSurface();
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public int getWidth() {
        return this.bufferWidth;
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public boolean isReleased() {
        if (this.textureEntry == null) {
            return true;
        }
        return false;
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public void release() {
        closeReader();
        this.textureEntry = null;
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public void resize(int i10, int i11) {
        if (this.reader != null && this.bufferWidth == i10 && this.bufferHeight == i11) {
            return;
        }
        closeReader();
        this.bufferWidth = i10;
        this.bufferHeight = i11;
        this.reader = createImageReader();
    }
}
