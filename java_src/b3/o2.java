package b3;

import b3.g4;
import d4.t;
import o6.q;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class o2 {

    /* renamed from: a  reason: collision with root package name */
    private final g4.b f4305a = new g4.b();

    /* renamed from: b  reason: collision with root package name */
    private final g4.d f4306b = new g4.d();

    /* renamed from: c  reason: collision with root package name */
    private final c3.a f4307c;

    /* renamed from: d  reason: collision with root package name */
    private final y4.n f4308d;

    /* renamed from: e  reason: collision with root package name */
    private long f4309e;

    /* renamed from: f  reason: collision with root package name */
    private int f4310f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f4311g;

    /* renamed from: h  reason: collision with root package name */
    private l2 f4312h;

    /* renamed from: i  reason: collision with root package name */
    private l2 f4313i;

    /* renamed from: j  reason: collision with root package name */
    private l2 f4314j;

    /* renamed from: k  reason: collision with root package name */
    private int f4315k;

    /* renamed from: l  reason: collision with root package name */
    private Object f4316l;

    /* renamed from: m  reason: collision with root package name */
    private long f4317m;

    public o2(c3.a aVar, y4.n nVar) {
        this.f4307c = aVar;
        this.f4308d = nVar;
    }

    private static t.b A(g4 g4Var, Object obj, long j10, long j11, g4.d dVar, g4.b bVar) {
        g4Var.l(obj, bVar);
        g4Var.r(bVar.f4055c, dVar);
        int f10 = g4Var.f(obj);
        Object obj2 = obj;
        while (bVar.f4056d == 0 && bVar.f() > 0 && bVar.t(bVar.r()) && bVar.h(0L) == -1) {
            int i10 = f10 + 1;
            if (f10 >= dVar.f4088p) {
                break;
            }
            g4Var.k(i10, bVar, true);
            obj2 = y4.a.e(bVar.f4054b);
            f10 = i10;
        }
        g4Var.l(obj2, bVar);
        int h10 = bVar.h(j10);
        if (h10 == -1) {
            return new t.b(obj2, j11, bVar.g(j10));
        }
        return new t.b(obj2, h10, bVar.n(h10), j11);
    }

    private long C(g4 g4Var, Object obj) {
        int f10;
        int i10 = g4Var.l(obj, this.f4305a).f4055c;
        Object obj2 = this.f4316l;
        if (obj2 != null && (f10 = g4Var.f(obj2)) != -1 && g4Var.j(f10, this.f4305a).f4055c == i10) {
            return this.f4317m;
        }
        for (l2 l2Var = this.f4312h; l2Var != null; l2Var = l2Var.j()) {
            if (l2Var.f4191b.equals(obj)) {
                return l2Var.f4195f.f4242a.f14945d;
            }
        }
        for (l2 l2Var2 = this.f4312h; l2Var2 != null; l2Var2 = l2Var2.j()) {
            int f11 = g4Var.f(l2Var2.f4191b);
            if (f11 != -1 && g4Var.j(f11, this.f4305a).f4055c == i10) {
                return l2Var2.f4195f.f4242a.f14945d;
            }
        }
        long j10 = this.f4309e;
        this.f4309e = 1 + j10;
        if (this.f4312h == null) {
            this.f4316l = obj;
            this.f4317m = j10;
        }
        return j10;
    }

    private boolean E(g4 g4Var) {
        l2 l2Var = this.f4312h;
        if (l2Var == null) {
            return true;
        }
        int f10 = g4Var.f(l2Var.f4191b);
        while (true) {
            f10 = g4Var.h(f10, this.f4305a, this.f4306b, this.f4310f, this.f4311g);
            while (l2Var.j() != null && !l2Var.f4195f.f4248g) {
                l2Var = l2Var.j();
            }
            l2 j10 = l2Var.j();
            if (f10 == -1 || j10 == null || g4Var.f(j10.f4191b) != f10) {
                break;
            }
            l2Var = j10;
        }
        boolean z10 = z(l2Var);
        l2Var.f4195f = r(g4Var, l2Var.f4195f);
        return !z10;
    }

    private boolean d(long j10, long j11) {
        return j10 == -9223372036854775807L || j10 == j11;
    }

    private boolean e(m2 m2Var, m2 m2Var2) {
        if (m2Var.f4243b == m2Var2.f4243b && m2Var.f4242a.equals(m2Var2.f4242a)) {
            return true;
        }
        return false;
    }

    private m2 h(j3 j3Var) {
        return k(j3Var.f4104a, j3Var.f4105b, j3Var.f4106c, j3Var.f4121r);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00cc, code lost:
        if (r0.t(r0.r()) != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private b3.m2 i(b3.g4 r20, b3.l2 r21, long r22) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b3.o2.i(b3.g4, b3.l2, long):b3.m2");
    }

    private m2 k(g4 g4Var, t.b bVar, long j10, long j11) {
        g4Var.l(bVar.f14942a, this.f4305a);
        if (bVar.b()) {
            return l(g4Var, bVar.f14942a, bVar.f14943b, bVar.f14944c, j10, bVar.f14945d);
        }
        return m(g4Var, bVar.f14942a, j11, j10, bVar.f14945d);
    }

    private m2 l(g4 g4Var, Object obj, int i10, int i11, long j10, long j11) {
        long j12;
        long j13;
        t.b bVar = new t.b(obj, i10, i11, j11);
        long e10 = g4Var.l(bVar.f14942a, this.f4305a).e(bVar.f14943b, bVar.f14944c);
        if (i11 == this.f4305a.n(i10)) {
            j12 = this.f4305a.j();
        } else {
            j12 = 0;
        }
        boolean t10 = this.f4305a.t(bVar.f14943b);
        if (e10 != -9223372036854775807L && j12 >= e10) {
            j13 = Math.max(0L, e10 - 1);
        } else {
            j13 = j12;
        }
        return new m2(bVar, j13, j10, -9223372036854775807L, e10, t10, false, false, false);
    }

    private m2 m(g4 g4Var, Object obj, long j10, long j11, long j12) {
        boolean z10;
        boolean z11;
        long j13;
        long j14;
        long j15;
        long j16 = j10;
        g4Var.l(obj, this.f4305a);
        int g10 = this.f4305a.g(j16);
        int i10 = 1;
        if (g10 == -1) {
            if (this.f4305a.f() > 0) {
                g4.b bVar = this.f4305a;
                if (bVar.t(bVar.r())) {
                    z10 = true;
                }
            }
            z10 = false;
        } else {
            if (this.f4305a.t(g10)) {
                long i11 = this.f4305a.i(g10);
                g4.b bVar2 = this.f4305a;
                if (i11 == bVar2.f4056d && bVar2.s(g10)) {
                    z10 = true;
                    g10 = -1;
                }
            }
            z10 = false;
        }
        t.b bVar3 = new t.b(obj, j12, g10);
        boolean s10 = s(bVar3);
        boolean u10 = u(g4Var, bVar3);
        boolean t10 = t(g4Var, bVar3, s10);
        if (g10 != -1 && this.f4305a.t(g10)) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (g10 != -1) {
            j14 = this.f4305a.i(g10);
        } else if (z10) {
            j14 = this.f4305a.f4056d;
        } else {
            j13 = -9223372036854775807L;
            if (j13 == -9223372036854775807L && j13 != Long.MIN_VALUE) {
                j15 = j13;
            } else {
                j15 = this.f4305a.f4056d;
            }
            if (j15 != -9223372036854775807L && j16 >= j15) {
                if (!t10 && z10) {
                    i10 = 0;
                }
                j16 = Math.max(0L, j15 - i10);
            }
            return new m2(bVar3, j16, j11, j13, j15, z11, s10, u10, t10);
        }
        j13 = j14;
        if (j13 == -9223372036854775807L) {
        }
        j15 = this.f4305a.f4056d;
        if (j15 != -9223372036854775807L) {
            if (!t10) {
                i10 = 0;
            }
            j16 = Math.max(0L, j15 - i10);
        }
        return new m2(bVar3, j16, j11, j13, j15, z11, s10, u10, t10);
    }

    private long n(g4 g4Var, Object obj, int i10) {
        g4Var.l(obj, this.f4305a);
        long i11 = this.f4305a.i(i10);
        if (i11 == Long.MIN_VALUE) {
            return this.f4305a.f4056d;
        }
        return i11 + this.f4305a.l(i10);
    }

    private boolean s(t.b bVar) {
        if (!bVar.b() && bVar.f14946e == -1) {
            return true;
        }
        return false;
    }

    private boolean t(g4 g4Var, t.b bVar, boolean z10) {
        int f10 = g4Var.f(bVar.f14942a);
        if (!g4Var.r(g4Var.j(f10, this.f4305a).f4055c, this.f4306b).f4081i && g4Var.v(f10, this.f4305a, this.f4306b, this.f4310f, this.f4311g) && z10) {
            return true;
        }
        return false;
    }

    private boolean u(g4 g4Var, t.b bVar) {
        if (!s(bVar)) {
            return false;
        }
        int i10 = g4Var.l(bVar.f14942a, this.f4305a).f4055c;
        if (g4Var.r(i10, this.f4306b).f4088p != g4Var.f(bVar.f14942a)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(q.a aVar, t.b bVar) {
        this.f4307c.H(aVar.k(), bVar);
    }

    private void x() {
        final t.b bVar;
        final q.a r10 = o6.q.r();
        for (l2 l2Var = this.f4312h; l2Var != null; l2Var = l2Var.j()) {
            r10.a(l2Var.f4195f.f4242a);
        }
        l2 l2Var2 = this.f4313i;
        if (l2Var2 == null) {
            bVar = null;
        } else {
            bVar = l2Var2.f4195f.f4242a;
        }
        this.f4308d.b(new Runnable() { // from class: b3.n2
            @Override // java.lang.Runnable
            public final void run() {
                o2.this.w(r10, bVar);
            }
        });
    }

    public t.b B(g4 g4Var, Object obj, long j10) {
        long C = C(g4Var, obj);
        g4Var.l(obj, this.f4305a);
        g4Var.r(this.f4305a.f4055c, this.f4306b);
        boolean z10 = false;
        for (int f10 = g4Var.f(obj); f10 >= this.f4306b.f4087o; f10--) {
            boolean z11 = true;
            g4Var.k(f10, this.f4305a, true);
            if (this.f4305a.f() <= 0) {
                z11 = false;
            }
            z10 |= z11;
            g4.b bVar = this.f4305a;
            if (bVar.h(bVar.f4056d) != -1) {
                obj = y4.a.e(this.f4305a.f4054b);
            }
            if (z10 && (!z11 || this.f4305a.f4056d != 0)) {
                break;
            }
        }
        return A(g4Var, obj, j10, C, this.f4306b, this.f4305a);
    }

    public boolean D() {
        l2 l2Var = this.f4314j;
        if (l2Var != null && (l2Var.f4195f.f4250i || !l2Var.q() || this.f4314j.f4195f.f4246e == -9223372036854775807L || this.f4315k >= 100)) {
            return false;
        }
        return true;
    }

    public boolean F(g4 g4Var, long j10, long j11) {
        m2 m2Var;
        long z10;
        boolean z11;
        l2 l2Var = null;
        for (l2 l2Var2 = this.f4312h; l2Var2 != null; l2Var2 = l2Var2.j()) {
            m2 m2Var2 = l2Var2.f4195f;
            if (l2Var == null) {
                m2Var = r(g4Var, m2Var2);
            } else {
                m2 i10 = i(g4Var, l2Var, j10);
                if (i10 == null) {
                    return !z(l2Var);
                }
                if (!e(m2Var2, i10)) {
                    return !z(l2Var);
                }
                m2Var = i10;
            }
            l2Var2.f4195f = m2Var.a(m2Var2.f4244c);
            if (!d(m2Var2.f4246e, m2Var.f4246e)) {
                l2Var2.A();
                long j12 = m2Var.f4246e;
                if (j12 == -9223372036854775807L) {
                    z10 = Long.MAX_VALUE;
                } else {
                    z10 = l2Var2.z(j12);
                }
                if (l2Var2 == this.f4313i && !l2Var2.f4195f.f4247f && (j11 == Long.MIN_VALUE || j11 >= z10)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (!z(l2Var2) && !z11) {
                    return true;
                }
                return false;
            }
            l2Var = l2Var2;
        }
        return true;
    }

    public boolean G(g4 g4Var, int i10) {
        this.f4310f = i10;
        return E(g4Var);
    }

    public boolean H(g4 g4Var, boolean z10) {
        this.f4311g = z10;
        return E(g4Var);
    }

    public l2 b() {
        l2 l2Var = this.f4312h;
        if (l2Var == null) {
            return null;
        }
        if (l2Var == this.f4313i) {
            this.f4313i = l2Var.j();
        }
        this.f4312h.t();
        int i10 = this.f4315k - 1;
        this.f4315k = i10;
        if (i10 == 0) {
            this.f4314j = null;
            l2 l2Var2 = this.f4312h;
            this.f4316l = l2Var2.f4191b;
            this.f4317m = l2Var2.f4195f.f4242a.f14945d;
        }
        this.f4312h = this.f4312h.j();
        x();
        return this.f4312h;
    }

    public l2 c() {
        boolean z10;
        l2 l2Var = this.f4313i;
        if (l2Var != null && l2Var.j() != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        this.f4313i = this.f4313i.j();
        x();
        return this.f4313i;
    }

    public void f() {
        if (this.f4315k == 0) {
            return;
        }
        l2 l2Var = (l2) y4.a.h(this.f4312h);
        this.f4316l = l2Var.f4191b;
        this.f4317m = l2Var.f4195f.f4242a.f14945d;
        while (l2Var != null) {
            l2Var.t();
            l2Var = l2Var.j();
        }
        this.f4312h = null;
        this.f4314j = null;
        this.f4313i = null;
        this.f4315k = 0;
        x();
    }

    public l2 g(u3[] u3VarArr, w4.h0 h0Var, x4.b bVar, d3 d3Var, m2 m2Var, w4.i0 i0Var) {
        long l10;
        l2 l2Var = this.f4314j;
        if (l2Var == null) {
            l10 = 1000000000000L;
        } else {
            l10 = (l2Var.l() + this.f4314j.f4195f.f4246e) - m2Var.f4243b;
        }
        l2 l2Var2 = new l2(u3VarArr, l10, h0Var, bVar, d3Var, m2Var, i0Var);
        l2 l2Var3 = this.f4314j;
        if (l2Var3 != null) {
            l2Var3.w(l2Var2);
        } else {
            this.f4312h = l2Var2;
            this.f4313i = l2Var2;
        }
        this.f4316l = null;
        this.f4314j = l2Var2;
        this.f4315k++;
        x();
        return l2Var2;
    }

    public l2 j() {
        return this.f4314j;
    }

    public m2 o(long j10, j3 j3Var) {
        l2 l2Var = this.f4314j;
        if (l2Var == null) {
            return h(j3Var);
        }
        return i(j3Var.f4104a, l2Var, j10);
    }

    public l2 p() {
        return this.f4312h;
    }

    public l2 q() {
        return this.f4313i;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b3.m2 r(b3.g4 r19, b3.m2 r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            d4.t$b r3 = r2.f4242a
            boolean r12 = r0.s(r3)
            boolean r13 = r0.u(r1, r3)
            boolean r14 = r0.t(r1, r3, r12)
            d4.t$b r4 = r2.f4242a
            java.lang.Object r4 = r4.f14942a
            b3.g4$b r5 = r0.f4305a
            r1.l(r4, r5)
            boolean r1 = r3.b()
            r4 = -1
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L35
            int r1 = r3.f14946e
            if (r1 != r4) goto L2e
            goto L35
        L2e:
            b3.g4$b r7 = r0.f4305a
            long r7 = r7.i(r1)
            goto L36
        L35:
            r7 = r5
        L36:
            boolean r1 = r3.b()
            if (r1 == 0) goto L48
            b3.g4$b r1 = r0.f4305a
            int r5 = r3.f14943b
            int r6 = r3.f14944c
            long r5 = r1.e(r5, r6)
        L46:
            r9 = r5
            goto L5c
        L48:
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 == 0) goto L55
            r5 = -9223372036854775808
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 != 0) goto L53
            goto L55
        L53:
            r9 = r7
            goto L5c
        L55:
            b3.g4$b r1 = r0.f4305a
            long r5 = r1.m()
            goto L46
        L5c:
            boolean r1 = r3.b()
            if (r1 == 0) goto L6c
            b3.g4$b r1 = r0.f4305a
            int r4 = r3.f14943b
            boolean r1 = r1.t(r4)
        L6a:
            r11 = r1
            goto L7c
        L6c:
            int r1 = r3.f14946e
            if (r1 == r4) goto L7a
            b3.g4$b r4 = r0.f4305a
            boolean r1 = r4.t(r1)
            if (r1 == 0) goto L7a
            r1 = 1
            goto L6a
        L7a:
            r1 = 0
            goto L6a
        L7c:
            b3.m2 r15 = new b3.m2
            long r4 = r2.f4243b
            long r1 = r2.f4244c
            r16 = r1
            r1 = r15
            r2 = r3
            r3 = r4
            r5 = r16
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: b3.o2.r(b3.g4, b3.m2):b3.m2");
    }

    public boolean v(d4.r rVar) {
        l2 l2Var = this.f4314j;
        if (l2Var != null && l2Var.f4190a == rVar) {
            return true;
        }
        return false;
    }

    public void y(long j10) {
        l2 l2Var = this.f4314j;
        if (l2Var != null) {
            l2Var.s(j10);
        }
    }

    public boolean z(l2 l2Var) {
        boolean z10;
        boolean z11 = false;
        if (l2Var != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        if (l2Var.equals(this.f4314j)) {
            return false;
        }
        this.f4314j = l2Var;
        while (l2Var.j() != null) {
            l2Var = l2Var.j();
            if (l2Var == this.f4313i) {
                this.f4313i = this.f4312h;
                z11 = true;
            }
            l2Var.t();
            this.f4315k--;
        }
        this.f4314j.w(null);
        x();
        return z11;
    }
}
