package q3;

import b3.x1;
import d3.b;
import q3.i0;
import y4.q0;
/* loaded from: classes.dex */
public final class c implements m {

    /* renamed from: a  reason: collision with root package name */
    private final y4.d0 f28036a;

    /* renamed from: b  reason: collision with root package name */
    private final y4.e0 f28037b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28038c;

    /* renamed from: d  reason: collision with root package name */
    private String f28039d;

    /* renamed from: e  reason: collision with root package name */
    private g3.b0 f28040e;

    /* renamed from: f  reason: collision with root package name */
    private int f28041f;

    /* renamed from: g  reason: collision with root package name */
    private int f28042g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f28043h;

    /* renamed from: i  reason: collision with root package name */
    private long f28044i;

    /* renamed from: j  reason: collision with root package name */
    private x1 f28045j;

    /* renamed from: k  reason: collision with root package name */
    private int f28046k;

    /* renamed from: l  reason: collision with root package name */
    private long f28047l;

    public c() {
        this(null);
    }

    private boolean a(y4.e0 e0Var, byte[] bArr, int i10) {
        int min = Math.min(e0Var.a(), i10 - this.f28042g);
        e0Var.l(bArr, this.f28042g, min);
        int i11 = this.f28042g + min;
        this.f28042g = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void g() {
        this.f28036a.p(0);
        b.C0143b f10 = d3.b.f(this.f28036a);
        x1 x1Var = this.f28045j;
        if (x1Var == null || f10.f14435d != x1Var.f4527y || f10.f14434c != x1Var.f4528z || !q0.c(f10.f14432a, x1Var.f4514l)) {
            x1.b b02 = new x1.b().U(this.f28039d).g0(f10.f14432a).J(f10.f14435d).h0(f10.f14434c).X(this.f28038c).b0(f10.f14438g);
            if ("audio/ac3".equals(f10.f14432a)) {
                b02.I(f10.f14438g);
            }
            x1 G = b02.G();
            this.f28045j = G;
            this.f28040e.c(G);
        }
        this.f28046k = f10.f14436e;
        this.f28044i = (f10.f14437f * 1000000) / this.f28045j.f4528z;
    }

    private boolean h(y4.e0 e0Var) {
        while (true) {
            boolean z10 = false;
            if (e0Var.a() <= 0) {
                return false;
            }
            if (!this.f28043h) {
                if (e0Var.G() == 11) {
                    z10 = true;
                }
                this.f28043h = z10;
            } else {
                int G = e0Var.G();
                if (G == 119) {
                    this.f28043h = false;
                    return true;
                }
                if (G == 11) {
                    z10 = true;
                }
                this.f28043h = z10;
            }
        }
    }

    @Override // q3.m
    public void b(y4.e0 e0Var) {
        y4.a.h(this.f28040e);
        while (e0Var.a() > 0) {
            int i10 = this.f28041f;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        int min = Math.min(e0Var.a(), this.f28046k - this.f28042g);
                        this.f28040e.b(e0Var, min);
                        int i11 = this.f28042g + min;
                        this.f28042g = i11;
                        int i12 = this.f28046k;
                        if (i11 == i12) {
                            long j10 = this.f28047l;
                            if (j10 != -9223372036854775807L) {
                                this.f28040e.f(j10, 1, i12, 0, null);
                                this.f28047l += this.f28044i;
                            }
                            this.f28041f = 0;
                        }
                    }
                } else if (a(e0Var, this.f28037b.e(), 128)) {
                    g();
                    this.f28037b.T(0);
                    this.f28040e.b(this.f28037b, 128);
                    this.f28041f = 2;
                }
            } else if (h(e0Var)) {
                this.f28041f = 1;
                this.f28037b.e()[0] = 11;
                this.f28037b.e()[1] = 119;
                this.f28042g = 2;
            }
        }
    }

    @Override // q3.m
    public void c() {
        this.f28041f = 0;
        this.f28042g = 0;
        this.f28043h = false;
        this.f28047l = -9223372036854775807L;
    }

    @Override // q3.m
    public void d() {
    }

    @Override // q3.m
    public void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f28047l = j10;
        }
    }

    @Override // q3.m
    public void f(g3.m mVar, i0.d dVar) {
        dVar.a();
        this.f28039d = dVar.b();
        this.f28040e = mVar.a(dVar.c(), 1);
    }

    public c(String str) {
        y4.d0 d0Var = new y4.d0(new byte[128]);
        this.f28036a = d0Var;
        this.f28037b = new y4.e0(d0Var.f32862a);
        this.f28041f = 0;
        this.f28047l = -9223372036854775807L;
        this.f28038c = str;
    }
}
