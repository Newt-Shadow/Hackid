package q3;

import b3.x1;
import d3.a;
import java.util.Arrays;
import java.util.Collections;
import org.apache.tika.fork.ForkServer;
import q3.i0;
import y4.q0;
/* loaded from: classes.dex */
public final class i implements m {

    /* renamed from: v  reason: collision with root package name */
    private static final byte[] f28126v = {73, 68, 51};

    /* renamed from: a  reason: collision with root package name */
    private final boolean f28127a;

    /* renamed from: b  reason: collision with root package name */
    private final y4.d0 f28128b;

    /* renamed from: c  reason: collision with root package name */
    private final y4.e0 f28129c;

    /* renamed from: d  reason: collision with root package name */
    private final String f28130d;

    /* renamed from: e  reason: collision with root package name */
    private String f28131e;

    /* renamed from: f  reason: collision with root package name */
    private g3.b0 f28132f;

    /* renamed from: g  reason: collision with root package name */
    private g3.b0 f28133g;

    /* renamed from: h  reason: collision with root package name */
    private int f28134h;

    /* renamed from: i  reason: collision with root package name */
    private int f28135i;

    /* renamed from: j  reason: collision with root package name */
    private int f28136j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f28137k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f28138l;

    /* renamed from: m  reason: collision with root package name */
    private int f28139m;

    /* renamed from: n  reason: collision with root package name */
    private int f28140n;

    /* renamed from: o  reason: collision with root package name */
    private int f28141o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f28142p;

    /* renamed from: q  reason: collision with root package name */
    private long f28143q;

    /* renamed from: r  reason: collision with root package name */
    private int f28144r;

    /* renamed from: s  reason: collision with root package name */
    private long f28145s;

    /* renamed from: t  reason: collision with root package name */
    private g3.b0 f28146t;

    /* renamed from: u  reason: collision with root package name */
    private long f28147u;

    public i(boolean z10) {
        this(z10, null);
    }

    private void a() {
        y4.a.e(this.f28132f);
        q0.j(this.f28146t);
        q0.j(this.f28133g);
    }

    private void g(y4.e0 e0Var) {
        if (e0Var.a() == 0) {
            return;
        }
        this.f28128b.f32862a[0] = e0Var.e()[e0Var.f()];
        this.f28128b.p(2);
        int h10 = this.f28128b.h(4);
        int i10 = this.f28140n;
        if (i10 != -1 && h10 != i10) {
            q();
            return;
        }
        if (!this.f28138l) {
            this.f28138l = true;
            this.f28139m = this.f28141o;
            this.f28140n = h10;
        }
        t();
    }

    private boolean h(y4.e0 e0Var, int i10) {
        e0Var.T(i10 + 1);
        if (!w(e0Var, this.f28128b.f32862a, 1)) {
            return false;
        }
        this.f28128b.p(4);
        int h10 = this.f28128b.h(1);
        int i11 = this.f28139m;
        if (i11 != -1 && h10 != i11) {
            return false;
        }
        if (this.f28140n != -1) {
            if (!w(e0Var, this.f28128b.f32862a, 1)) {
                return true;
            }
            this.f28128b.p(2);
            if (this.f28128b.h(4) != this.f28140n) {
                return false;
            }
            e0Var.T(i10 + 2);
        }
        if (!w(e0Var, this.f28128b.f32862a, 4)) {
            return true;
        }
        this.f28128b.p(14);
        int h11 = this.f28128b.h(13);
        if (h11 < 7) {
            return false;
        }
        byte[] e10 = e0Var.e();
        int g10 = e0Var.g();
        int i12 = i10 + h11;
        if (i12 >= g10) {
            return true;
        }
        byte b10 = e10[i12];
        if (b10 == -1) {
            int i13 = i12 + 1;
            if (i13 == g10) {
                return true;
            }
            if (l((byte) -1, e10[i13]) && ((e10[i13] & 8) >> 3) == h10) {
                return true;
            }
            return false;
        } else if (b10 != 73) {
            return false;
        } else {
            int i14 = i12 + 1;
            if (i14 == g10) {
                return true;
            }
            if (e10[i14] != 68) {
                return false;
            }
            int i15 = i12 + 2;
            if (i15 == g10 || e10[i15] == 51) {
                return true;
            }
            return false;
        }
    }

    private boolean i(y4.e0 e0Var, byte[] bArr, int i10) {
        int min = Math.min(e0Var.a(), i10 - this.f28135i);
        e0Var.l(bArr, this.f28135i, min);
        int i11 = this.f28135i + min;
        this.f28135i = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void j(y4.e0 e0Var) {
        byte[] e10 = e0Var.e();
        int f10 = e0Var.f();
        int g10 = e0Var.g();
        while (f10 < g10) {
            int i10 = f10 + 1;
            int i11 = e10[f10] & ForkServer.ERROR;
            if (this.f28136j == 512 && l((byte) -1, (byte) i11) && (this.f28138l || h(e0Var, i10 - 2))) {
                this.f28141o = (i11 & 8) >> 3;
                boolean z10 = true;
                if ((i11 & 1) != 0) {
                    z10 = false;
                }
                this.f28137k = z10;
                if (!this.f28138l) {
                    r();
                } else {
                    t();
                }
                e0Var.T(i10);
                return;
            }
            int i12 = this.f28136j;
            int i13 = i11 | i12;
            if (i13 != 329) {
                if (i13 != 511) {
                    if (i13 != 836) {
                        if (i13 != 1075) {
                            if (i12 != 256) {
                                this.f28136j = 256;
                                i10--;
                            }
                        } else {
                            u();
                            e0Var.T(i10);
                            return;
                        }
                    } else {
                        this.f28136j = 1024;
                    }
                } else {
                    this.f28136j = 512;
                }
            } else {
                this.f28136j = 768;
            }
            f10 = i10;
        }
        e0Var.T(f10);
    }

    private boolean l(byte b10, byte b11) {
        return m(((b10 & ForkServer.ERROR) << 8) | (b11 & ForkServer.ERROR));
    }

    public static boolean m(int i10) {
        return (i10 & 65526) == 65520;
    }

    private void n() {
        this.f28128b.p(0);
        if (!this.f28142p) {
            int h10 = this.f28128b.h(2) + 1;
            if (h10 != 2) {
                y4.r.i("AdtsReader", "Detected audio object type: " + h10 + ", but assuming AAC LC.");
                h10 = 2;
            }
            this.f28128b.r(5);
            byte[] b10 = d3.a.b(h10, this.f28140n, this.f28128b.h(3));
            a.b f10 = d3.a.f(b10);
            x1 G = new x1.b().U(this.f28131e).g0("audio/mp4a-latm").K(f10.f14418c).J(f10.f14417b).h0(f10.f14416a).V(Collections.singletonList(b10)).X(this.f28130d).G();
            this.f28143q = 1024000000 / G.f4528z;
            this.f28132f.c(G);
            this.f28142p = true;
        } else {
            this.f28128b.r(10);
        }
        this.f28128b.r(4);
        int h11 = (this.f28128b.h(13) - 2) - 5;
        if (this.f28137k) {
            h11 -= 2;
        }
        v(this.f28132f, this.f28143q, 0, h11);
    }

    private void o() {
        this.f28133g.b(this.f28129c, 10);
        this.f28129c.T(6);
        v(this.f28133g, 0L, 10, this.f28129c.F() + 10);
    }

    private void p(y4.e0 e0Var) {
        int min = Math.min(e0Var.a(), this.f28144r - this.f28135i);
        this.f28146t.b(e0Var, min);
        int i10 = this.f28135i + min;
        this.f28135i = i10;
        int i11 = this.f28144r;
        if (i10 == i11) {
            long j10 = this.f28145s;
            if (j10 != -9223372036854775807L) {
                this.f28146t.f(j10, 1, i11, 0, null);
                this.f28145s += this.f28147u;
            }
            s();
        }
    }

    private void q() {
        this.f28138l = false;
        s();
    }

    private void r() {
        this.f28134h = 1;
        this.f28135i = 0;
    }

    private void s() {
        this.f28134h = 0;
        this.f28135i = 0;
        this.f28136j = 256;
    }

    private void t() {
        this.f28134h = 3;
        this.f28135i = 0;
    }

    private void u() {
        this.f28134h = 2;
        this.f28135i = f28126v.length;
        this.f28144r = 0;
        this.f28129c.T(0);
    }

    private void v(g3.b0 b0Var, long j10, int i10, int i11) {
        this.f28134h = 4;
        this.f28135i = i10;
        this.f28146t = b0Var;
        this.f28147u = j10;
        this.f28144r = i11;
    }

    private boolean w(y4.e0 e0Var, byte[] bArr, int i10) {
        if (e0Var.a() < i10) {
            return false;
        }
        e0Var.l(bArr, 0, i10);
        return true;
    }

    @Override // q3.m
    public void b(y4.e0 e0Var) {
        int i10;
        a();
        while (e0Var.a() > 0) {
            int i11 = this.f28134h;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 == 4) {
                                p(e0Var);
                            } else {
                                throw new IllegalStateException();
                            }
                        } else {
                            if (this.f28137k) {
                                i10 = 7;
                            } else {
                                i10 = 5;
                            }
                            if (i(e0Var, this.f28128b.f32862a, i10)) {
                                n();
                            }
                        }
                    } else if (i(e0Var, this.f28129c.e(), 10)) {
                        o();
                    }
                } else {
                    g(e0Var);
                }
            } else {
                j(e0Var);
            }
        }
    }

    @Override // q3.m
    public void c() {
        this.f28145s = -9223372036854775807L;
        q();
    }

    @Override // q3.m
    public void d() {
    }

    @Override // q3.m
    public void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f28145s = j10;
        }
    }

    @Override // q3.m
    public void f(g3.m mVar, i0.d dVar) {
        dVar.a();
        this.f28131e = dVar.b();
        g3.b0 a10 = mVar.a(dVar.c(), 1);
        this.f28132f = a10;
        this.f28146t = a10;
        if (this.f28127a) {
            dVar.a();
            g3.b0 a11 = mVar.a(dVar.c(), 5);
            this.f28133g = a11;
            a11.c(new x1.b().U(dVar.b()).g0("application/id3").G());
            return;
        }
        this.f28133g = new g3.j();
    }

    public long k() {
        return this.f28143q;
    }

    public i(boolean z10, String str) {
        this.f28128b = new y4.d0(new byte[7]);
        this.f28129c = new y4.e0(Arrays.copyOf(f28126v, 10));
        s();
        this.f28139m = -1;
        this.f28140n = -1;
        this.f28143q = -9223372036854775807L;
        this.f28145s = -9223372036854775807L;
        this.f28127a = z10;
        this.f28130d = str;
    }
}
