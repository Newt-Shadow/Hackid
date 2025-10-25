package q3;

import b3.x1;
import d3.t0;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import org.apache.tika.fork.ForkServer;
import q3.i0;
/* loaded from: classes.dex */
public final class t implements m {

    /* renamed from: a  reason: collision with root package name */
    private final y4.e0 f28332a;

    /* renamed from: b  reason: collision with root package name */
    private final t0.a f28333b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28334c;

    /* renamed from: d  reason: collision with root package name */
    private g3.b0 f28335d;

    /* renamed from: e  reason: collision with root package name */
    private String f28336e;

    /* renamed from: f  reason: collision with root package name */
    private int f28337f;

    /* renamed from: g  reason: collision with root package name */
    private int f28338g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f28339h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f28340i;

    /* renamed from: j  reason: collision with root package name */
    private long f28341j;

    /* renamed from: k  reason: collision with root package name */
    private int f28342k;

    /* renamed from: l  reason: collision with root package name */
    private long f28343l;

    public t() {
        this(null);
    }

    private void a(y4.e0 e0Var) {
        boolean z10;
        boolean z11;
        byte[] e10 = e0Var.e();
        int g10 = e0Var.g();
        for (int f10 = e0Var.f(); f10 < g10; f10++) {
            byte b10 = e10[f10];
            if ((b10 & ForkServer.ERROR) == 255) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (this.f28340i && (b10 & 224) == 224) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.f28340i = z10;
            if (z11) {
                e0Var.T(f10 + 1);
                this.f28340i = false;
                this.f28332a.e()[1] = e10[f10];
                this.f28338g = 2;
                this.f28337f = 1;
                return;
            }
        }
        e0Var.T(g10);
    }

    private void g(y4.e0 e0Var) {
        int min = Math.min(e0Var.a(), this.f28342k - this.f28338g);
        this.f28335d.b(e0Var, min);
        int i10 = this.f28338g + min;
        this.f28338g = i10;
        int i11 = this.f28342k;
        if (i10 < i11) {
            return;
        }
        long j10 = this.f28343l;
        if (j10 != -9223372036854775807L) {
            this.f28335d.f(j10, 1, i11, 0, null);
            this.f28343l += this.f28341j;
        }
        this.f28338g = 0;
        this.f28337f = 0;
    }

    private void h(y4.e0 e0Var) {
        int min = Math.min(e0Var.a(), 4 - this.f28338g);
        e0Var.l(this.f28332a.e(), this.f28338g, min);
        int i10 = this.f28338g + min;
        this.f28338g = i10;
        if (i10 < 4) {
            return;
        }
        this.f28332a.T(0);
        if (!this.f28333b.a(this.f28332a.p())) {
            this.f28338g = 0;
            this.f28337f = 1;
            return;
        }
        t0.a aVar = this.f28333b;
        this.f28342k = aVar.f14601c;
        if (!this.f28339h) {
            this.f28341j = (aVar.f14605g * 1000000) / aVar.f14602d;
            this.f28335d.c(new x1.b().U(this.f28336e).g0(this.f28333b.f14600b).Y(Base64Utils.IO_BUFFER_SIZE).J(this.f28333b.f14603e).h0(this.f28333b.f14602d).X(this.f28334c).G());
            this.f28339h = true;
        }
        this.f28332a.T(0);
        this.f28335d.b(this.f28332a, 4);
        this.f28337f = 2;
    }

    @Override // q3.m
    public void b(y4.e0 e0Var) {
        y4.a.h(this.f28335d);
        while (e0Var.a() > 0) {
            int i10 = this.f28337f;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        g(e0Var);
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    h(e0Var);
                }
            } else {
                a(e0Var);
            }
        }
    }

    @Override // q3.m
    public void c() {
        this.f28337f = 0;
        this.f28338g = 0;
        this.f28340i = false;
        this.f28343l = -9223372036854775807L;
    }

    @Override // q3.m
    public void d() {
    }

    @Override // q3.m
    public void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f28343l = j10;
        }
    }

    @Override // q3.m
    public void f(g3.m mVar, i0.d dVar) {
        dVar.a();
        this.f28336e = dVar.b();
        this.f28335d = mVar.a(dVar.c(), 1);
    }

    public t(String str) {
        this.f28337f = 0;
        y4.e0 e0Var = new y4.e0(4);
        this.f28332a = e0Var;
        e0Var.e()[0] = -1;
        this.f28333b = new t0.a();
        this.f28343l = -9223372036854775807L;
        this.f28334c = str;
    }
}
