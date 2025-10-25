package q3;

import b3.e3;
import b3.x1;
import d3.a;
import java.util.Collections;
import q3.i0;
/* loaded from: classes.dex */
public final class s implements m {

    /* renamed from: a  reason: collision with root package name */
    private final String f28311a;

    /* renamed from: b  reason: collision with root package name */
    private final y4.e0 f28312b;

    /* renamed from: c  reason: collision with root package name */
    private final y4.d0 f28313c;

    /* renamed from: d  reason: collision with root package name */
    private g3.b0 f28314d;

    /* renamed from: e  reason: collision with root package name */
    private String f28315e;

    /* renamed from: f  reason: collision with root package name */
    private x1 f28316f;

    /* renamed from: g  reason: collision with root package name */
    private int f28317g;

    /* renamed from: h  reason: collision with root package name */
    private int f28318h;

    /* renamed from: i  reason: collision with root package name */
    private int f28319i;

    /* renamed from: j  reason: collision with root package name */
    private int f28320j;

    /* renamed from: k  reason: collision with root package name */
    private long f28321k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f28322l;

    /* renamed from: m  reason: collision with root package name */
    private int f28323m;

    /* renamed from: n  reason: collision with root package name */
    private int f28324n;

    /* renamed from: o  reason: collision with root package name */
    private int f28325o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f28326p;

    /* renamed from: q  reason: collision with root package name */
    private long f28327q;

    /* renamed from: r  reason: collision with root package name */
    private int f28328r;

    /* renamed from: s  reason: collision with root package name */
    private long f28329s;

    /* renamed from: t  reason: collision with root package name */
    private int f28330t;

    /* renamed from: u  reason: collision with root package name */
    private String f28331u;

    public s(String str) {
        this.f28311a = str;
        y4.e0 e0Var = new y4.e0(1024);
        this.f28312b = e0Var;
        this.f28313c = new y4.d0(e0Var.e());
        this.f28321k = -9223372036854775807L;
    }

    private static long a(y4.d0 d0Var) {
        return d0Var.h((d0Var.h(2) + 1) * 8);
    }

    private void g(y4.d0 d0Var) {
        if (!d0Var.g()) {
            this.f28322l = true;
            l(d0Var);
        } else if (!this.f28322l) {
            return;
        }
        if (this.f28323m == 0) {
            if (this.f28324n == 0) {
                k(d0Var, j(d0Var));
                if (this.f28326p) {
                    d0Var.r((int) this.f28327q);
                    return;
                }
                return;
            }
            throw e3.a(null, null);
        }
        throw e3.a(null, null);
    }

    private int h(y4.d0 d0Var) {
        int b10 = d0Var.b();
        a.b e10 = d3.a.e(d0Var, true);
        this.f28331u = e10.f14418c;
        this.f28328r = e10.f14416a;
        this.f28330t = e10.f14417b;
        return b10 - d0Var.b();
    }

    private void i(y4.d0 d0Var) {
        int h10 = d0Var.h(3);
        this.f28325o = h10;
        if (h10 != 0) {
            if (h10 != 1) {
                if (h10 != 3 && h10 != 4 && h10 != 5) {
                    if (h10 != 6 && h10 != 7) {
                        throw new IllegalStateException();
                    }
                    d0Var.r(1);
                    return;
                }
                d0Var.r(6);
                return;
            }
            d0Var.r(9);
            return;
        }
        d0Var.r(8);
    }

    private int j(y4.d0 d0Var) {
        int h10;
        if (this.f28325o == 0) {
            int i10 = 0;
            do {
                h10 = d0Var.h(8);
                i10 += h10;
            } while (h10 == 255);
            return i10;
        }
        throw e3.a(null, null);
    }

    private void k(y4.d0 d0Var, int i10) {
        int e10 = d0Var.e();
        if ((e10 & 7) == 0) {
            this.f28312b.T(e10 >> 3);
        } else {
            d0Var.i(this.f28312b.e(), 0, i10 * 8);
            this.f28312b.T(0);
        }
        this.f28314d.b(this.f28312b, i10);
        long j10 = this.f28321k;
        if (j10 != -9223372036854775807L) {
            this.f28314d.f(j10, 1, i10, 0, null);
            this.f28321k += this.f28329s;
        }
    }

    private void l(y4.d0 d0Var) {
        int i10;
        boolean g10;
        int h10 = d0Var.h(1);
        if (h10 == 1) {
            i10 = d0Var.h(1);
        } else {
            i10 = 0;
        }
        this.f28323m = i10;
        if (i10 == 0) {
            if (h10 == 1) {
                a(d0Var);
            }
            if (d0Var.g()) {
                this.f28324n = d0Var.h(6);
                int h11 = d0Var.h(4);
                int h12 = d0Var.h(3);
                if (h11 == 0 && h12 == 0) {
                    if (h10 == 0) {
                        int e10 = d0Var.e();
                        int h13 = h(d0Var);
                        d0Var.p(e10);
                        byte[] bArr = new byte[(h13 + 7) / 8];
                        d0Var.i(bArr, 0, h13);
                        x1 G = new x1.b().U(this.f28315e).g0("audio/mp4a-latm").K(this.f28331u).J(this.f28330t).h0(this.f28328r).V(Collections.singletonList(bArr)).X(this.f28311a).G();
                        if (!G.equals(this.f28316f)) {
                            this.f28316f = G;
                            this.f28329s = 1024000000 / G.f4528z;
                            this.f28314d.c(G);
                        }
                    } else {
                        d0Var.r(((int) a(d0Var)) - h(d0Var));
                    }
                    i(d0Var);
                    boolean g11 = d0Var.g();
                    this.f28326p = g11;
                    this.f28327q = 0L;
                    if (g11) {
                        if (h10 == 1) {
                            this.f28327q = a(d0Var);
                        } else {
                            do {
                                g10 = d0Var.g();
                                this.f28327q = (this.f28327q << 8) + d0Var.h(8);
                            } while (g10);
                        }
                    }
                    if (d0Var.g()) {
                        d0Var.r(8);
                        return;
                    }
                    return;
                }
                throw e3.a(null, null);
            }
            throw e3.a(null, null);
        }
        throw e3.a(null, null);
    }

    private void m(int i10) {
        this.f28312b.P(i10);
        this.f28313c.n(this.f28312b.e());
    }

    @Override // q3.m
    public void b(y4.e0 e0Var) {
        y4.a.h(this.f28314d);
        while (e0Var.a() > 0) {
            int i10 = this.f28317g;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            int min = Math.min(e0Var.a(), this.f28319i - this.f28318h);
                            e0Var.l(this.f28313c.f32862a, this.f28318h, min);
                            int i11 = this.f28318h + min;
                            this.f28318h = i11;
                            if (i11 == this.f28319i) {
                                this.f28313c.p(0);
                                g(this.f28313c);
                                this.f28317g = 0;
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else {
                        int G = ((this.f28320j & (-225)) << 8) | e0Var.G();
                        this.f28319i = G;
                        if (G > this.f28312b.e().length) {
                            m(this.f28319i);
                        }
                        this.f28318h = 0;
                        this.f28317g = 3;
                    }
                } else {
                    int G2 = e0Var.G();
                    if ((G2 & 224) == 224) {
                        this.f28320j = G2;
                        this.f28317g = 2;
                    } else if (G2 != 86) {
                        this.f28317g = 0;
                    }
                }
            } else if (e0Var.G() == 86) {
                this.f28317g = 1;
            }
        }
    }

    @Override // q3.m
    public void c() {
        this.f28317g = 0;
        this.f28321k = -9223372036854775807L;
        this.f28322l = false;
    }

    @Override // q3.m
    public void d() {
    }

    @Override // q3.m
    public void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f28321k = j10;
        }
    }

    @Override // q3.m
    public void f(g3.m mVar, i0.d dVar) {
        dVar.a();
        this.f28314d = mVar.a(dVar.c(), 1);
        this.f28315e = dVar.b();
    }
}
