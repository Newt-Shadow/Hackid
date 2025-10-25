package io.flutter.embedding.engine.renderer;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.view.Surface;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.view.TextureRegistry;
/* loaded from: classes2.dex */
final class SurfaceTextureSurfaceProducer implements TextureRegistry.SurfaceProducer, TextureRegistry.GLTextureConsumer {
    private final FlutterJNI flutterJNI;
    private final Handler handler;

    /* renamed from: id  reason: collision with root package name */
    private final long f21527id;
    private boolean released;
    private int requestBufferWidth;
    private int requestedBufferHeight;
    private Surface surface;
    private final TextureRegistry.SurfaceTextureEntry texture;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SurfaceTextureSurfaceProducer(long j10, Handler handler, FlutterJNI flutterJNI, TextureRegistry.SurfaceTextureEntry surfaceTextureEntry) {
        this.f21527id = j10;
        this.handler = handler;
        this.flutterJNI = flutterJNI;
        this.texture = surfaceTextureEntry;
    }

    protected void finalize() {
        try {
            if (this.released) {
                return;
            }
            release();
            this.handler.post(new FlutterRenderer.TextureFinalizerRunnable(this.f21527id, this.flutterJNI));
        } finally {
            super.finalize();
        }
    }

    @Override // io.flutter.view.TextureRegistry.SurfaceProducer
    public Surface getForcedNewSurface() {
        this.surface = null;
        return getSurface();
    }

    @Override // io.flutter.view.TextureRegistry.SurfaceProducer
    public int getHeight() {
        return this.requestedBufferHeight;
    }

    @Override // io.flutter.view.TextureRegistry.SurfaceProducer
    public Surface getSurface() {
        if (this.surface == null) {
            this.surface = new Surface(this.texture.surfaceTexture());
        }
        return this.surface;
    }

    @Override // io.flutter.view.TextureRegistry.GLTextureConsumer
    public SurfaceTexture getSurfaceTexture() {
        return this.texture.surfaceTexture();
    }

    @Override // io.flutter.view.TextureRegistry.SurfaceProducer
    public int getWidth() {
        return this.requestBufferWidth;
    }

    @Override // io.flutter.view.TextureRegistry.SurfaceProducer
    public boolean handlesCropAndRotation() {
        return true;
    }

    @Override // io.flutter.view.TextureRegistry.TextureEntry
    public long id() {
        return this.f21527id;
    }

    @Override // io.flutter.view.TextureRegistry.TextureEntry
    public void release() {
        this.texture.release();
        this.surface.release();
        this.surface = null;
        this.released = true;
    }

    @Override // io.flutter.view.TextureRegistry.SurfaceProducer
    public void scheduleFrame() {
        this.flutterJNI.markTextureFrameAvailable(this.f21527id);
    }

    @Override // io.flutter.view.TextureRegistry.SurfaceProducer
    public void setCallback(TextureRegistry.SurfaceProducer.Callback callback) {
    }

    @Override // io.flutter.view.TextureRegistry.SurfaceProducer
    public void setSize(int i10, int i11) {
        this.requestBufferWidth = i10;
        this.requestedBufferHeight = i11;
        getSurfaceTexture().setDefaultBufferSize(i10, i11);
    }
}
