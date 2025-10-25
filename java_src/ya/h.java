package ya;

import android.content.Context;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: n  reason: collision with root package name */
    private static final String f33119n = "h";

    /* renamed from: a  reason: collision with root package name */
    private Camera f33120a;

    /* renamed from: b  reason: collision with root package name */
    private Camera.CameraInfo f33121b;

    /* renamed from: c  reason: collision with root package name */
    private ya.a f33122c;

    /* renamed from: d  reason: collision with root package name */
    private h9.b f33123d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f33124e;

    /* renamed from: f  reason: collision with root package name */
    private String f33125f;

    /* renamed from: h  reason: collision with root package name */
    private m f33127h;

    /* renamed from: i  reason: collision with root package name */
    private xa.p f33128i;

    /* renamed from: j  reason: collision with root package name */
    private xa.p f33129j;

    /* renamed from: l  reason: collision with root package name */
    private Context f33131l;

    /* renamed from: g  reason: collision with root package name */
    private i f33126g = new i();

    /* renamed from: k  reason: collision with root package name */
    private int f33130k = -1;

    /* renamed from: m  reason: collision with root package name */
    private final a f33132m = new a();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class a implements Camera.PreviewCallback {

        /* renamed from: a  reason: collision with root package name */
        private p f33133a;

        /* renamed from: b  reason: collision with root package name */
        private xa.p f33134b;

        public a() {
        }

        public void a(p pVar) {
            this.f33133a = pVar;
        }

        public void b(xa.p pVar) {
            this.f33134b = pVar;
        }

        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] bArr, Camera camera) {
            xa.p pVar = this.f33134b;
            p pVar2 = this.f33133a;
            if (pVar != null && pVar2 != null) {
                try {
                    if (bArr != null) {
                        xa.q qVar = new xa.q(bArr, pVar.f32649a, pVar.f32650b, camera.getParameters().getPreviewFormat(), h.this.f());
                        if (h.this.f33121b.facing == 1) {
                            qVar.e(true);
                        }
                        pVar2.a(qVar);
                        return;
                    }
                    throw new NullPointerException("No preview data received");
                } catch (RuntimeException e10) {
                    Log.e(h.f33119n, "Camera preview failed", e10);
                    pVar2.b(e10);
                    return;
                }
            }
            Log.d(h.f33119n, "Got preview callback, but no handler or resolution available");
            if (pVar2 != null) {
                pVar2.b(new Exception("No resolution available"));
            }
        }
    }

    public h(Context context) {
        this.f33131l = context;
    }

    private int c() {
        int i10;
        int c10 = this.f33127h.c();
        int i11 = 0;
        if (c10 != 0) {
            if (c10 != 1) {
                if (c10 != 2) {
                    if (c10 == 3) {
                        i11 = 270;
                    }
                } else {
                    i11 = 180;
                }
            } else {
                i11 = 90;
            }
        }
        Camera.CameraInfo cameraInfo = this.f33121b;
        if (cameraInfo.facing == 1) {
            i10 = (360 - ((cameraInfo.orientation + i11) % 360)) % 360;
        } else {
            i10 = ((cameraInfo.orientation - i11) + 360) % 360;
        }
        String str = f33119n;
        Log.i(str, "Camera Display Orientation: " + i10);
        return i10;
    }

    private Camera.Parameters g() {
        Camera.Parameters parameters = this.f33120a.getParameters();
        String str = this.f33125f;
        if (str == null) {
            this.f33125f = parameters.flatten();
        } else {
            parameters.unflatten(str);
        }
        return parameters;
    }

    private static List i(Camera.Parameters parameters) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        ArrayList arrayList = new ArrayList();
        if (supportedPreviewSizes == null) {
            Camera.Size previewSize = parameters.getPreviewSize();
            if (previewSize != null) {
                new xa.p(previewSize.width, previewSize.height);
                arrayList.add(new xa.p(previewSize.width, previewSize.height));
            }
            return arrayList;
        }
        for (Camera.Size size : supportedPreviewSizes) {
            arrayList.add(new xa.p(size.width, size.height));
        }
        return arrayList;
    }

    private void n(int i10) {
        this.f33120a.setDisplayOrientation(i10);
    }

    private void p(boolean z10) {
        Camera.Parameters g10 = g();
        if (g10 == null) {
            Log.w(f33119n, "Device error: no camera parameters are available. Proceeding without configuration.");
            return;
        }
        String str = f33119n;
        Log.i(str, "Initial camera parameters: " + g10.flatten());
        if (z10) {
            Log.w(str, "In camera config safe mode -- most settings will not be honored");
        }
        c.g(g10, this.f33126g.a(), z10);
        if (!z10) {
            c.k(g10, false);
            if (this.f33126g.h()) {
                c.i(g10);
            }
            if (this.f33126g.e()) {
                c.c(g10);
            }
            if (this.f33126g.g()) {
                c.l(g10);
                c.h(g10);
                c.j(g10);
            }
        }
        List i10 = i(g10);
        if (i10.size() == 0) {
            this.f33128i = null;
        } else {
            xa.p a10 = this.f33127h.a(i10, j());
            this.f33128i = a10;
            g10.setPreviewSize(a10.f32649a, a10.f32650b);
        }
        if (Build.DEVICE.equals("glass-1")) {
            c.e(g10);
        }
        Log.i(str, "Final camera parameters: " + g10.flatten());
        this.f33120a.setParameters(g10);
    }

    private void r() {
        try {
            int c10 = c();
            this.f33130k = c10;
            n(c10);
        } catch (Exception unused) {
            Log.w(f33119n, "Failed to set rotation.");
        }
        try {
            p(false);
        } catch (Exception unused2) {
            try {
                p(true);
            } catch (Exception unused3) {
                Log.w(f33119n, "Camera rejected even safe-mode parameters! No configuration");
            }
        }
        Camera.Size previewSize = this.f33120a.getParameters().getPreviewSize();
        if (previewSize == null) {
            this.f33129j = this.f33128i;
        } else {
            this.f33129j = new xa.p(previewSize.width, previewSize.height);
        }
        this.f33132m.b(this.f33129j);
    }

    public void d() {
        Camera camera = this.f33120a;
        if (camera != null) {
            camera.release();
            this.f33120a = null;
        }
    }

    public void e() {
        if (this.f33120a != null) {
            r();
            return;
        }
        throw new RuntimeException("Camera not open");
    }

    public int f() {
        return this.f33130k;
    }

    public xa.p h() {
        if (this.f33129j == null) {
            return null;
        }
        if (j()) {
            return this.f33129j.b();
        }
        return this.f33129j;
    }

    public boolean j() {
        int i10 = this.f33130k;
        if (i10 != -1) {
            if (i10 % 180 != 0) {
                return true;
            }
            return false;
        }
        throw new IllegalStateException("Rotation not calculated yet. Call configure() first.");
    }

    public boolean k() {
        String flashMode;
        Camera.Parameters parameters = this.f33120a.getParameters();
        if (parameters == null || (flashMode = parameters.getFlashMode()) == null) {
            return false;
        }
        if (!"on".equals(flashMode) && !"torch".equals(flashMode)) {
            return false;
        }
        return true;
    }

    public void l() {
        Camera b10 = i9.a.b(this.f33126g.b());
        this.f33120a = b10;
        if (b10 != null) {
            int a10 = i9.a.a(this.f33126g.b());
            Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
            this.f33121b = cameraInfo;
            Camera.getCameraInfo(a10, cameraInfo);
            return;
        }
        throw new RuntimeException("Failed to open camera");
    }

    public void m(p pVar) {
        Camera camera = this.f33120a;
        if (camera != null && this.f33124e) {
            this.f33132m.a(pVar);
            camera.setOneShotPreviewCallback(this.f33132m);
        }
    }

    public void o(i iVar) {
        this.f33126g = iVar;
    }

    public void q(m mVar) {
        this.f33127h = mVar;
    }

    public void s(j jVar) {
        jVar.a(this.f33120a);
    }

    public void t(boolean z10) {
        if (this.f33120a != null) {
            try {
                if (z10 != k()) {
                    ya.a aVar = this.f33122c;
                    if (aVar != null) {
                        aVar.j();
                    }
                    Camera.Parameters parameters = this.f33120a.getParameters();
                    c.k(parameters, z10);
                    if (this.f33126g.f()) {
                        c.d(parameters, z10);
                    }
                    this.f33120a.setParameters(parameters);
                    ya.a aVar2 = this.f33122c;
                    if (aVar2 != null) {
                        aVar2.i();
                    }
                }
            } catch (RuntimeException e10) {
                Log.e(f33119n, "Failed to set torch", e10);
            }
        }
    }

    public void u() {
        Camera camera = this.f33120a;
        if (camera != null && !this.f33124e) {
            camera.startPreview();
            this.f33124e = true;
            this.f33122c = new ya.a(this.f33120a, this.f33126g);
            h9.b bVar = new h9.b(this.f33131l, this, this.f33126g);
            this.f33123d = bVar;
            bVar.d();
        }
    }

    public void v() {
        ya.a aVar = this.f33122c;
        if (aVar != null) {
            aVar.j();
            this.f33122c = null;
        }
        h9.b bVar = this.f33123d;
        if (bVar != null) {
            bVar.e();
            this.f33123d = null;
        }
        Camera camera = this.f33120a;
        if (camera != null && this.f33124e) {
            camera.stopPreview();
            this.f33132m.a(null);
            this.f33124e = false;
        }
    }
}
