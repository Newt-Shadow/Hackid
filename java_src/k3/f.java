package k3;

import b3.x1;
import g3.b0;
import k3.e;
import y4.e0;
import y4.w;
/* loaded from: classes.dex */
final class f extends e {

    /* renamed from: b  reason: collision with root package name */
    private final e0 f24700b;

    /* renamed from: c  reason: collision with root package name */
    private final e0 f24701c;

    /* renamed from: d  reason: collision with root package name */
    private int f24702d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f24703e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f24704f;

    /* renamed from: g  reason: collision with root package name */
    private int f24705g;

    public f(b0 b0Var) {
        super(b0Var);
        this.f24700b = new e0(w.f32972a);
        this.f24701c = new e0(4);
    }

    @Override // k3.e
    protected boolean b(e0 e0Var) {
        int G = e0Var.G();
        int i10 = (G >> 4) & 15;
        int i11 = G & 15;
        if (i11 == 7) {
            this.f24705g = i10;
            if (i10 != 5) {
                return true;
            }
            return false;
        }
        throw new e.a("Video format not supported: " + i11);
    }

    @Override // k3.e
    protected boolean c(e0 e0Var, long j10) {
        int i10;
        int G = e0Var.G();
        long q10 = j10 + (e0Var.q() * 1000);
        if (G == 0 && !this.f24703e) {
            e0 e0Var2 = new e0(new byte[e0Var.a()]);
            e0Var.l(e0Var2.e(), 0, e0Var.a());
            z4.a b10 = z4.a.b(e0Var2);
            this.f24702d = b10.f33393b;
            this.f24699a.c(new x1.b().g0("video/avc").K(b10.f33397f).n0(b10.f33394c).S(b10.f33395d).c0(b10.f33396e).V(b10.f33392a).G());
            this.f24703e = true;
            return false;
        } else if (G != 1 || !this.f24703e) {
            return false;
        } else {
            if (this.f24705g == 1) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            if (!this.f24704f && i10 == 0) {
                return false;
            }
            byte[] e10 = this.f24701c.e();
            e10[0] = 0;
            e10[1] = 0;
            e10[2] = 0;
            int i11 = 4 - this.f24702d;
            int i12 = 0;
            while (e0Var.a() > 0) {
                e0Var.l(this.f24701c.e(), i11, this.f24702d);
                this.f24701c.T(0);
                int K = this.f24701c.K();
                this.f24700b.T(0);
                this.f24699a.b(this.f24700b, 4);
                this.f24699a.b(e0Var, K);
                i12 = i12 + 4 + K;
            }
            this.f24699a.f(q10, i10, i12, 0, null);
            this.f24704f = true;
            return true;
        }
    }
}
