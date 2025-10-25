package ya;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import xa.r;
/* loaded from: classes.dex */
public class g {

    /* renamed from: n  reason: collision with root package name */
    private static final String f33101n = "g";

    /* renamed from: a  reason: collision with root package name */
    private k f33102a;

    /* renamed from: b  reason: collision with root package name */
    private j f33103b;

    /* renamed from: c  reason: collision with root package name */
    private h f33104c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f33105d;

    /* renamed from: e  reason: collision with root package name */
    private m f33106e;

    /* renamed from: h  reason: collision with root package name */
    private Handler f33109h;

    /* renamed from: f  reason: collision with root package name */
    private boolean f33107f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f33108g = true;

    /* renamed from: i  reason: collision with root package name */
    private i f33110i = new i();

    /* renamed from: j  reason: collision with root package name */
    private Runnable f33111j = new a();

    /* renamed from: k  reason: collision with root package name */
    private Runnable f33112k = new b();

    /* renamed from: l  reason: collision with root package name */
    private Runnable f33113l = new c();

    /* renamed from: m  reason: collision with root package name */
    private Runnable f33114m = new d();

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Log.d(g.f33101n, "Opening camera");
                g.this.f33104c.l();
            } catch (Exception e10) {
                g.this.t(e10);
                Log.e(g.f33101n, "Failed to open camera", e10);
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Log.d(g.f33101n, "Configuring camera");
                g.this.f33104c.e();
                if (g.this.f33105d != null) {
                    g.this.f33105d.obtainMessage(h9.k.f16939j, g.this.o()).sendToTarget();
                }
            } catch (Exception e10) {
                g.this.t(e10);
                Log.e(g.f33101n, "Failed to configure camera", e10);
            }
        }
    }

    /* loaded from: classes.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Log.d(g.f33101n, "Starting preview");
                g.this.f33104c.s(g.this.f33103b);
                g.this.f33104c.u();
            } catch (Exception e10) {
                g.this.t(e10);
                Log.e(g.f33101n, "Failed to start preview", e10);
            }
        }
    }

    /* loaded from: classes.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Log.d(g.f33101n, "Closing camera");
                g.this.f33104c.v();
                g.this.f33104c.d();
            } catch (Exception e10) {
                Log.e(g.f33101n, "Failed to close camera", e10);
            }
            g.this.f33108g = true;
            g.this.f33105d.sendEmptyMessage(h9.k.f16932c);
            g.this.f33102a.b();
        }
    }

    public g(Context context) {
        r.a();
        this.f33102a = k.d();
        h hVar = new h(context);
        this.f33104c = hVar;
        hVar.o(this.f33110i);
        this.f33109h = new Handler();
    }

    private void C() {
        if (this.f33107f) {
            return;
        }
        throw new IllegalStateException("CameraInstance is not open");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public xa.p o() {
        return this.f33104c.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(p pVar) {
        this.f33104c.m(pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(final p pVar) {
        if (!this.f33107f) {
            Log.d(f33101n, "Camera is closed, not requesting preview");
        } else {
            this.f33102a.c(new Runnable() { // from class: ya.f
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.q(pVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(boolean z10) {
        this.f33104c.t(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(Exception exc) {
        Handler handler = this.f33105d;
        if (handler != null) {
            handler.obtainMessage(h9.k.f16933d, exc).sendToTarget();
        }
    }

    public void A(final boolean z10) {
        r.a();
        if (this.f33107f) {
            this.f33102a.c(new Runnable() { // from class: ya.d
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.s(z10);
                }
            });
        }
    }

    public void B() {
        r.a();
        C();
        this.f33102a.c(this.f33113l);
    }

    public void l() {
        r.a();
        if (this.f33107f) {
            this.f33102a.c(this.f33114m);
        } else {
            this.f33108g = true;
        }
        this.f33107f = false;
    }

    public void m() {
        r.a();
        C();
        this.f33102a.c(this.f33112k);
    }

    public m n() {
        return this.f33106e;
    }

    public boolean p() {
        return this.f33108g;
    }

    public void u() {
        r.a();
        this.f33107f = true;
        this.f33108g = false;
        this.f33102a.e(this.f33111j);
    }

    public void v(final p pVar) {
        this.f33109h.post(new Runnable() { // from class: ya.e
            @Override // java.lang.Runnable
            public final void run() {
                g.this.r(pVar);
            }
        });
    }

    public void w(i iVar) {
        if (!this.f33107f) {
            this.f33110i = iVar;
            this.f33104c.o(iVar);
        }
    }

    public void x(m mVar) {
        this.f33106e = mVar;
        this.f33104c.q(mVar);
    }

    public void y(Handler handler) {
        this.f33105d = handler;
    }

    public void z(j jVar) {
        this.f33103b = jVar;
    }
}
