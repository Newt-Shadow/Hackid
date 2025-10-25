package q3;

import b3.x1;
import d3.c;
import q3.i0;
/* loaded from: classes.dex */
public final class f implements m {

    /* renamed from: a  reason: collision with root package name */
    private final y4.d0 f28064a;

    /* renamed from: b  reason: collision with root package name */
    private final y4.e0 f28065b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28066c;

    /* renamed from: d  reason: collision with root package name */
    private String f28067d;

    /* renamed from: e  reason: collision with root package name */
    private g3.b0 f28068e;

    /* renamed from: f  reason: collision with root package name */
    private int f28069f;

    /* renamed from: g  reason: collision with root package name */
    private int f28070g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f28071h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f28072i;

    /* renamed from: j  reason: collision with root package name */
    private long f28073j;

    /* renamed from: k  reason: collision with root package name */
    private x1 f28074k;

    /* renamed from: l  reason: collision with root package name */
    private int f28075l;

    /* renamed from: m  reason: collision with root package name */
    private long f28076m;

    public f() {
        this(null);
    }

    private boolean a(y4.e0 e0Var, byte[] bArr, int i10) {
        int min = Math.min(e0Var.a(), i10 - this.f28070g);
        e0Var.l(bArr, this.f28070g, min);
        int i11 = this.f28070g + min;
        this.f28070g = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void g() {
        this.f28064a.p(0);
        c.b d10 = d3.c.d(this.f28064a);
        x1 x1Var = this.f28074k;
        if (x1Var == null || d10.f14444c != x1Var.f4527y || d10.f14443b != x1Var.f4528z || !"audio/ac4".equals(x1Var.f4514l)) {
            x1 G = new x1.b().U(this.f28067d).g0("audio/ac4").J(d10.f14444c).h0(d10.f14443b).X(this.f28066c).G();
            this.f28074k = G;
            this.f28068e.c(G);
        }
        this.f28075l = d10.f14445d;
        this.f28073j = (d10.f14446e * 1000000) / this.f28074k.f4528z;
    }

    private boolean h(y4.e0 e0Var) {
        boolean z10;
        int G;
        boolean z11;
        while (true) {
            z10 = false;
            if (e0Var.a() <= 0) {
                return false;
            }
            if (!this.f28071h) {
                if (e0Var.G() == 172) {
                    z10 = true;
                }
                this.f28071h = z10;
            } else {
                G = e0Var.G();
                if (G == 172) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                this.f28071h = z11;
                if (G == 64 || G == 65) {
                    break;
                }
            }
        }
        if (G == 65) {
            z10 = true;
        }
        this.f28072i = z10;
        return true;
    }

    @Override // q3.m
    public void b(y4.e0 e0Var) {
        int i10;
        y4.a.h(this.f28068e);
        while (e0Var.a() > 0) {
            int i11 = this.f28069f;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        int min = Math.min(e0Var.a(), this.f28075l - this.f28070g);
                        this.f28068e.b(e0Var, min);
                        int i12 = this.f28070g + min;
                        this.f28070g = i12;
                        int i13 = this.f28075l;
                        if (i12 == i13) {
                            long j10 = this.f28076m;
                            if (j10 != -9223372036854775807L) {
                                this.f28068e.f(j10, 1, i13, 0, null);
                                this.f28076m += this.f28073j;
                            }
                            this.f28069f = 0;
                        }
                    }
                } else if (a(e0Var, this.f28065b.e(), 16)) {
                    g();
                    this.f28065b.T(0);
                    this.f28068e.b(this.f28065b, 16);
                    this.f28069f = 2;
                }
            } else if (h(e0Var)) {
                this.f28069f = 1;
                this.f28065b.e()[0] = -84;
                byte[] e10 = this.f28065b.e();
                if (this.f28072i) {
                    i10 = 65;
                } else {
                    i10 = 64;
                }
                e10[1] = (byte) i10;
                this.f28070g = 2;
            }
        }
    }

    @Override // q3.m
    public void c() {
        this.f28069f = 0;
        this.f28070g = 0;
        this.f28071h = false;
        this.f28072i = false;
        this.f28076m = -9223372036854775807L;
    }

    @Override // q3.m
    public void d() {
    }

    @Override // q3.m
    public void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f28076m = j10;
        }
    }

    @Override // q3.m
    public void f(g3.m mVar, i0.d dVar) {
        dVar.a();
        this.f28067d = dVar.b();
        this.f28068e = mVar.a(dVar.c(), 1);
    }

    public f(String str) {
        y4.d0 d0Var = new y4.d0(new byte[16]);
        this.f28064a = d0Var;
        this.f28065b = new y4.e0(d0Var.f32862a);
        this.f28069f = 0;
        this.f28070g = 0;
        this.f28071h = false;
        this.f28072i = false;
        this.f28076m = -9223372036854775807L;
        this.f28066c = str;
    }
}
