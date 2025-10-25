package ya;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.view.SurfaceHolder;
/* loaded from: classes.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private SurfaceHolder f33150a;

    /* renamed from: b  reason: collision with root package name */
    private SurfaceTexture f33151b;

    public j(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != null) {
            this.f33150a = surfaceHolder;
            return;
        }
        throw new IllegalArgumentException("surfaceHolder may not be null");
    }

    public void a(Camera camera) {
        SurfaceHolder surfaceHolder = this.f33150a;
        if (surfaceHolder != null) {
            camera.setPreviewDisplay(surfaceHolder);
        } else {
            camera.setPreviewTexture(this.f33151b);
        }
    }

    public j(SurfaceTexture surfaceTexture) {
        if (surfaceTexture != null) {
            this.f33151b = surfaceTexture;
            return;
        }
        throw new IllegalArgumentException("surfaceTexture may not be null");
    }
}
