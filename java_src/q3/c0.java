package q3;

import q3.i0;
import y4.m0;
import y4.q0;
/* loaded from: classes.dex */
public final class c0 implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f28048a;

    /* renamed from: b  reason: collision with root package name */
    private final y4.e0 f28049b = new y4.e0(32);

    /* renamed from: c  reason: collision with root package name */
    private int f28050c;

    /* renamed from: d  reason: collision with root package name */
    private int f28051d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f28052e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f28053f;

    public c0(b0 b0Var) {
        this.f28048a = b0Var;
    }

    @Override // q3.i0
    public void a(m0 m0Var, g3.m mVar, i0.d dVar) {
        this.f28048a.a(m0Var, mVar, dVar);
        this.f28053f = true;
    }

    @Override // q3.i0
    public void b(y4.e0 e0Var, int i10) {
        boolean z10;
        int i11;
        boolean z11;
        if ((i10 & 1) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            i11 = e0Var.f() + e0Var.G();
        } else {
            i11 = -1;
        }
        if (this.f28053f) {
            if (!z10) {
                return;
            }
            this.f28053f = false;
            e0Var.T(i11);
            this.f28051d = 0;
        }
        while (e0Var.a() > 0) {
            int i12 = this.f28051d;
            if (i12 < 3) {
                if (i12 == 0) {
                    int G = e0Var.G();
                    e0Var.T(e0Var.f() - 1);
                    if (G == 255) {
                        this.f28053f = true;
                        return;
                    }
                }
                int min = Math.min(e0Var.a(), 3 - this.f28051d);
                e0Var.l(this.f28049b.e(), this.f28051d, min);
                int i13 = this.f28051d + min;
                this.f28051d = i13;
                if (i13 == 3) {
                    this.f28049b.T(0);
                    this.f28049b.S(3);
                    this.f28049b.U(1);
                    int G2 = this.f28049b.G();
                    int G3 = this.f28049b.G();
                    if ((G2 & 128) != 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    this.f28052e = z11;
                    this.f28050c = (((G2 & 15) << 8) | G3) + 3;
                    int b10 = this.f28049b.b();
                    int i14 = this.f28050c;
                    if (b10 < i14) {
                        this.f28049b.c(Math.min(4098, Math.max(i14, this.f28049b.b() * 2)));
                    }
                }
            } else {
                int min2 = Math.min(e0Var.a(), this.f28050c - this.f28051d);
                e0Var.l(this.f28049b.e(), this.f28051d, min2);
                int i15 = this.f28051d + min2;
                this.f28051d = i15;
                int i16 = this.f28050c;
                if (i15 != i16) {
                    continue;
                } else {
                    if (this.f28052e) {
                        if (q0.t(this.f28049b.e(), 0, this.f28050c, -1) != 0) {
                            this.f28053f = true;
                            return;
                        }
                        this.f28049b.S(this.f28050c - 4);
                    } else {
                        this.f28049b.S(i16);
                    }
                    this.f28049b.T(0);
                    this.f28048a.b(this.f28049b);
                    this.f28051d = 0;
                }
            }
        }
    }

    @Override // q3.i0
    public void c() {
        this.f28053f = true;
    }
}
