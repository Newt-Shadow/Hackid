package b3;

import d4.t;
/* loaded from: classes.dex */
final class l2 {

    /* renamed from: a  reason: collision with root package name */
    public final d4.r f4190a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f4191b;

    /* renamed from: c  reason: collision with root package name */
    public final d4.m0[] f4192c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4193d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f4194e;

    /* renamed from: f  reason: collision with root package name */
    public m2 f4195f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f4196g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean[] f4197h;

    /* renamed from: i  reason: collision with root package name */
    private final u3[] f4198i;

    /* renamed from: j  reason: collision with root package name */
    private final w4.h0 f4199j;

    /* renamed from: k  reason: collision with root package name */
    private final d3 f4200k;

    /* renamed from: l  reason: collision with root package name */
    private l2 f4201l;

    /* renamed from: m  reason: collision with root package name */
    private d4.u0 f4202m;

    /* renamed from: n  reason: collision with root package name */
    private w4.i0 f4203n;

    /* renamed from: o  reason: collision with root package name */
    private long f4204o;

    public l2(u3[] u3VarArr, long j10, w4.h0 h0Var, x4.b bVar, d3 d3Var, m2 m2Var, w4.i0 i0Var) {
        this.f4198i = u3VarArr;
        this.f4204o = j10;
        this.f4199j = h0Var;
        this.f4200k = d3Var;
        t.b bVar2 = m2Var.f4242a;
        this.f4191b = bVar2.f14942a;
        this.f4195f = m2Var;
        this.f4202m = d4.u0.f14959d;
        this.f4203n = i0Var;
        this.f4192c = new d4.m0[u3VarArr.length];
        this.f4197h = new boolean[u3VarArr.length];
        this.f4190a = e(bVar2, d3Var, bVar, m2Var.f4243b, m2Var.f4245d);
    }

    private void c(d4.m0[] m0VarArr) {
        int i10 = 0;
        while (true) {
            u3[] u3VarArr = this.f4198i;
            if (i10 < u3VarArr.length) {
                if (u3VarArr[i10].h() == -2 && this.f4203n.c(i10)) {
                    m0VarArr[i10] = new d4.k();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private static d4.r e(t.b bVar, d3 d3Var, x4.b bVar2, long j10, long j11) {
        d4.r h10 = d3Var.h(bVar, bVar2, j10);
        if (j11 != -9223372036854775807L) {
            return new d4.d(h10, true, 0L, j11);
        }
        return h10;
    }

    private void f() {
        if (!r()) {
            return;
        }
        int i10 = 0;
        while (true) {
            w4.i0 i0Var = this.f4203n;
            if (i10 < i0Var.f31841a) {
                boolean c10 = i0Var.c(i10);
                w4.y yVar = this.f4203n.f31843c[i10];
                if (c10 && yVar != null) {
                    yVar.e();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private void g(d4.m0[] m0VarArr) {
        int i10 = 0;
        while (true) {
            u3[] u3VarArr = this.f4198i;
            if (i10 < u3VarArr.length) {
                if (u3VarArr[i10].h() == -2) {
                    m0VarArr[i10] = null;
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private void h() {
        if (!r()) {
            return;
        }
        int i10 = 0;
        while (true) {
            w4.i0 i0Var = this.f4203n;
            if (i10 < i0Var.f31841a) {
                boolean c10 = i0Var.c(i10);
                w4.y yVar = this.f4203n.f31843c[i10];
                if (c10 && yVar != null) {
                    yVar.i();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private boolean r() {
        if (this.f4201l == null) {
            return true;
        }
        return false;
    }

    private static void u(d3 d3Var, d4.r rVar) {
        try {
            if (rVar instanceof d4.d) {
                d3Var.y(((d4.d) rVar).f14733a);
            } else {
                d3Var.y(rVar);
            }
        } catch (RuntimeException e10) {
            y4.r.d("MediaPeriodHolder", "Period release failed.", e10);
        }
    }

    public void A() {
        d4.r rVar = this.f4190a;
        if (rVar instanceof d4.d) {
            long j10 = this.f4195f.f4245d;
            if (j10 == -9223372036854775807L) {
                j10 = Long.MIN_VALUE;
            }
            ((d4.d) rVar).u(0L, j10);
        }
    }

    public long a(w4.i0 i0Var, long j10, boolean z10) {
        return b(i0Var, j10, z10, new boolean[this.f4198i.length]);
    }

    public long b(w4.i0 i0Var, long j10, boolean z10, boolean[] zArr) {
        boolean z11;
        int i10 = 0;
        while (true) {
            boolean z12 = true;
            if (i10 >= i0Var.f31841a) {
                break;
            }
            boolean[] zArr2 = this.f4197h;
            if (z10 || !i0Var.b(this.f4203n, i10)) {
                z12 = false;
            }
            zArr2[i10] = z12;
            i10++;
        }
        g(this.f4192c);
        f();
        this.f4203n = i0Var;
        h();
        long m10 = this.f4190a.m(i0Var.f31843c, this.f4197h, this.f4192c, zArr, j10);
        c(this.f4192c);
        this.f4194e = false;
        int i11 = 0;
        while (true) {
            d4.m0[] m0VarArr = this.f4192c;
            if (i11 < m0VarArr.length) {
                if (m0VarArr[i11] != null) {
                    y4.a.f(i0Var.c(i11));
                    if (this.f4198i[i11].h() != -2) {
                        this.f4194e = true;
                    }
                } else {
                    if (i0Var.f31843c[i11] == null) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    y4.a.f(z11);
                }
                i11++;
            } else {
                return m10;
            }
        }
    }

    public void d(long j10) {
        y4.a.f(r());
        this.f4190a.c(y(j10));
    }

    public long i() {
        long j10;
        if (!this.f4193d) {
            return this.f4195f.f4243b;
        }
        if (this.f4194e) {
            j10 = this.f4190a.d();
        } else {
            j10 = Long.MIN_VALUE;
        }
        if (j10 == Long.MIN_VALUE) {
            return this.f4195f.f4246e;
        }
        return j10;
    }

    public l2 j() {
        return this.f4201l;
    }

    public long k() {
        if (!this.f4193d) {
            return 0L;
        }
        return this.f4190a.b();
    }

    public long l() {
        return this.f4204o;
    }

    public long m() {
        return this.f4195f.f4243b + this.f4204o;
    }

    public d4.u0 n() {
        return this.f4202m;
    }

    public w4.i0 o() {
        return this.f4203n;
    }

    public void p(float f10, g4 g4Var) {
        this.f4193d = true;
        this.f4202m = this.f4190a.q();
        w4.i0 v10 = v(f10, g4Var);
        m2 m2Var = this.f4195f;
        long j10 = m2Var.f4243b;
        long j11 = m2Var.f4246e;
        if (j11 != -9223372036854775807L && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        long a10 = a(v10, j10, false);
        long j12 = this.f4204o;
        m2 m2Var2 = this.f4195f;
        this.f4204o = j12 + (m2Var2.f4243b - a10);
        this.f4195f = m2Var2.b(a10);
    }

    public boolean q() {
        if (this.f4193d && (!this.f4194e || this.f4190a.d() == Long.MIN_VALUE)) {
            return true;
        }
        return false;
    }

    public void s(long j10) {
        y4.a.f(r());
        if (this.f4193d) {
            this.f4190a.f(y(j10));
        }
    }

    public void t() {
        f();
        u(this.f4200k, this.f4190a);
    }

    public w4.i0 v(float f10, g4 g4Var) {
        w4.y[] yVarArr;
        w4.i0 g10 = this.f4199j.g(this.f4198i, n(), this.f4195f.f4242a, g4Var);
        for (w4.y yVar : g10.f31843c) {
            if (yVar != null) {
                yVar.p(f10);
            }
        }
        return g10;
    }

    public void w(l2 l2Var) {
        if (l2Var == this.f4201l) {
            return;
        }
        f();
        this.f4201l = l2Var;
        h();
    }

    public void x(long j10) {
        this.f4204o = j10;
    }

    public long y(long j10) {
        return j10 - l();
    }

    public long z(long j10) {
        return j10 + l();
    }
}
