package c3;

import android.os.Looper;
import android.util.SparseArray;
import b3.g4;
import b3.l4;
import b3.m3;
import c3.b;
import d4.t;
import java.io.IOException;
import java.util.List;
import o6.r;
import y4.q;
/* loaded from: classes.dex */
public class n1 implements c3.a {

    /* renamed from: a  reason: collision with root package name */
    private final y4.d f4908a;

    /* renamed from: b  reason: collision with root package name */
    private final g4.b f4909b;

    /* renamed from: c  reason: collision with root package name */
    private final g4.d f4910c;

    /* renamed from: d  reason: collision with root package name */
    private final a f4911d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseArray f4912e;

    /* renamed from: f  reason: collision with root package name */
    private y4.q f4913f;

    /* renamed from: g  reason: collision with root package name */
    private b3.m3 f4914g;

    /* renamed from: h  reason: collision with root package name */
    private y4.n f4915h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f4916i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final g4.b f4917a;

        /* renamed from: b  reason: collision with root package name */
        private o6.q f4918b = o6.q.D();

        /* renamed from: c  reason: collision with root package name */
        private o6.r f4919c = o6.r.k();

        /* renamed from: d  reason: collision with root package name */
        private t.b f4920d;

        /* renamed from: e  reason: collision with root package name */
        private t.b f4921e;

        /* renamed from: f  reason: collision with root package name */
        private t.b f4922f;

        public a(g4.b bVar) {
            this.f4917a = bVar;
        }

        private void b(r.a aVar, t.b bVar, g4 g4Var) {
            if (bVar == null) {
                return;
            }
            if (g4Var.f(bVar.f14942a) != -1) {
                aVar.f(bVar, g4Var);
                return;
            }
            g4 g4Var2 = (g4) this.f4919c.get(bVar);
            if (g4Var2 != null) {
                aVar.f(bVar, g4Var2);
            }
        }

        private static t.b c(b3.m3 m3Var, o6.q qVar, t.b bVar, g4.b bVar2) {
            Object q10;
            int i10;
            g4 F = m3Var.F();
            int k10 = m3Var.k();
            if (F.u()) {
                q10 = null;
            } else {
                q10 = F.q(k10);
            }
            if (!m3Var.h() && !F.u()) {
                i10 = F.j(k10, bVar2).g(y4.q0.A0(m3Var.f()) - bVar2.q());
            } else {
                i10 = -1;
            }
            for (int i11 = 0; i11 < qVar.size(); i11++) {
                t.b bVar3 = (t.b) qVar.get(i11);
                if (i(bVar3, q10, m3Var.h(), m3Var.y(), m3Var.n(), i10)) {
                    return bVar3;
                }
            }
            if (qVar.isEmpty() && bVar != null) {
                if (i(bVar, q10, m3Var.h(), m3Var.y(), m3Var.n(), i10)) {
                    return bVar;
                }
            }
            return null;
        }

        private static boolean i(t.b bVar, Object obj, boolean z10, int i10, int i11, int i12) {
            if (!bVar.f14942a.equals(obj)) {
                return false;
            }
            if ((!z10 || bVar.f14943b != i10 || bVar.f14944c != i11) && (z10 || bVar.f14943b != -1 || bVar.f14946e != i12)) {
                return false;
            }
            return true;
        }

        private void m(g4 g4Var) {
            r.a a10 = o6.r.a();
            if (this.f4918b.isEmpty()) {
                b(a10, this.f4921e, g4Var);
                if (!n6.k.a(this.f4922f, this.f4921e)) {
                    b(a10, this.f4922f, g4Var);
                }
                if (!n6.k.a(this.f4920d, this.f4921e) && !n6.k.a(this.f4920d, this.f4922f)) {
                    b(a10, this.f4920d, g4Var);
                }
            } else {
                for (int i10 = 0; i10 < this.f4918b.size(); i10++) {
                    b(a10, (t.b) this.f4918b.get(i10), g4Var);
                }
                if (!this.f4918b.contains(this.f4920d)) {
                    b(a10, this.f4920d, g4Var);
                }
            }
            this.f4919c = a10.c();
        }

        public t.b d() {
            return this.f4920d;
        }

        public t.b e() {
            if (this.f4918b.isEmpty()) {
                return null;
            }
            return (t.b) o6.t.c(this.f4918b);
        }

        public g4 f(t.b bVar) {
            return (g4) this.f4919c.get(bVar);
        }

        public t.b g() {
            return this.f4921e;
        }

        public t.b h() {
            return this.f4922f;
        }

        public void j(b3.m3 m3Var) {
            this.f4920d = c(m3Var, this.f4918b, this.f4921e, this.f4917a);
        }

        public void k(List list, t.b bVar, b3.m3 m3Var) {
            this.f4918b = o6.q.t(list);
            if (!list.isEmpty()) {
                this.f4921e = (t.b) list.get(0);
                this.f4922f = (t.b) y4.a.e(bVar);
            }
            if (this.f4920d == null) {
                this.f4920d = c(m3Var, this.f4918b, this.f4921e, this.f4917a);
            }
            m(m3Var.F());
        }

        public void l(b3.m3 m3Var) {
            this.f4920d = c(m3Var, this.f4918b, this.f4921e, this.f4917a);
            m(m3Var.F());
        }
    }

    public n1(y4.d dVar) {
        this.f4908a = (y4.d) y4.a.e(dVar);
        this.f4913f = new y4.q(y4.q0.Q(), dVar, new q.b() { // from class: c3.k0
            @Override // y4.q.b
            public final void a(Object obj, y4.l lVar) {
                n1.d1((b) obj, lVar);
            }
        });
        g4.b bVar = new g4.b();
        this.f4909b = bVar;
        this.f4910c = new g4.d();
        this.f4911d = new a(bVar);
        this.f4912e = new SparseArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D1(b.a aVar, boolean z10, b bVar) {
        bVar.y(aVar, z10);
        bVar.A(aVar, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void T1(b.a aVar, int i10, m3.e eVar, m3.e eVar2, b bVar) {
        bVar.w(aVar, i10);
        bVar.s0(aVar, eVar, eVar2, i10);
    }

    private b.a X0(t.b bVar) {
        g4 f10;
        boolean z10;
        y4.a.e(this.f4914g);
        if (bVar == null) {
            f10 = null;
        } else {
            f10 = this.f4911d.f(bVar);
        }
        if (bVar != null && f10 != null) {
            return W0(f10, f10.l(bVar.f14942a, this.f4909b).f4055c, bVar);
        }
        int z11 = this.f4914g.z();
        g4 F = this.f4914g.F();
        if (z11 < F.t()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            F = g4.f4042a;
        }
        return W0(F, z11, null);
    }

    private b.a Y0() {
        return X0(this.f4911d.e());
    }

    private b.a Z0(int i10, t.b bVar) {
        y4.a.e(this.f4914g);
        boolean z10 = true;
        if (bVar != null) {
            if (this.f4911d.f(bVar) == null) {
                z10 = false;
            }
            if (z10) {
                return X0(bVar);
            }
            return W0(g4.f4042a, i10, bVar);
        }
        g4 F = this.f4914g.F();
        if (i10 >= F.t()) {
            z10 = false;
        }
        if (!z10) {
            F = g4.f4042a;
        }
        return W0(F, i10, null);
    }

    private b.a a1() {
        return X0(this.f4911d.g());
    }

    private b.a b1() {
        return X0(this.f4911d.h());
    }

    private b.a c1(b3.i3 i3Var) {
        d4.s sVar;
        if ((i3Var instanceof b3.a0) && (sVar = ((b3.a0) i3Var).f3772n) != null) {
            return X0(new t.b(sVar));
        }
        return V0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d1(b bVar, y4.l lVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d2(b.a aVar, String str, long j10, long j11, b bVar) {
        bVar.p(aVar, str, j10);
        bVar.a0(aVar, str, j11, j10);
        bVar.r0(aVar, 2, str, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f2(b.a aVar, e3.e eVar, b bVar) {
        bVar.N(aVar, eVar);
        bVar.e(aVar, 2, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g2(b.a aVar, e3.e eVar, b bVar) {
        bVar.M(aVar, eVar);
        bVar.r(aVar, 2, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h1(b.a aVar, String str, long j10, long j11, b bVar) {
        bVar.G(aVar, str, j10);
        bVar.O(aVar, str, j11, j10);
        bVar.r0(aVar, 1, str, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i2(b.a aVar, b3.x1 x1Var, e3.i iVar, b bVar) {
        bVar.D(aVar, x1Var);
        bVar.f(aVar, x1Var, iVar);
        bVar.g(aVar, 2, x1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j1(b.a aVar, e3.e eVar, b bVar) {
        bVar.g0(aVar, eVar);
        bVar.e(aVar, 1, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j2(b.a aVar, z4.a0 a0Var, b bVar) {
        bVar.h0(aVar, a0Var);
        bVar.Z(aVar, a0Var.f33404a, a0Var.f33405b, a0Var.f33406c, a0Var.f33407d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k1(b.a aVar, e3.e eVar, b bVar) {
        bVar.t(aVar, eVar);
        bVar.r(aVar, 1, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l1(b.a aVar, b3.x1 x1Var, e3.i iVar, b bVar) {
        bVar.a(aVar, x1Var);
        bVar.u(aVar, x1Var, iVar);
        bVar.g(aVar, 1, x1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m2(b3.m3 m3Var, b bVar, y4.l lVar) {
        bVar.n0(m3Var, new b.C0088b(lVar, this.f4912e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n2() {
        final b.a V0 = V0();
        o2(V0, 1028, new q.a() { // from class: c3.d1
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).H(b.a.this);
            }
        });
        this.f4913f.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void z1(b.a aVar, int i10, b bVar) {
        bVar.p0(aVar);
        bVar.h(aVar, i10);
    }

    @Override // f3.u
    public final void A(int i10, t.b bVar) {
        final b.a Z0 = Z0(i10, bVar);
        o2(Z0, 1025, new q.a() { // from class: c3.g1
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).b0(b.a.this);
            }
        });
    }

    @Override // f3.u
    public final void B(int i10, t.b bVar, final Exception exc) {
        final b.a Z0 = Z0(i10, bVar);
        o2(Z0, 1024, new q.a() { // from class: c3.s0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).i(b.a.this, exc);
            }
        });
    }

    @Override // d4.a0
    public final void C(int i10, t.b bVar, final d4.n nVar, final d4.q qVar) {
        final b.a Z0 = Z0(i10, bVar);
        o2(Z0, 1000, new q.a() { // from class: c3.r0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).d0(b.a.this, nVar, qVar);
            }
        });
    }

    @Override // f3.u
    public final void D(int i10, t.b bVar) {
        final b.a Z0 = Z0(i10, bVar);
        o2(Z0, 1027, new q.a() { // from class: c3.p
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).u0(b.a.this);
            }
        });
    }

    @Override // d4.a0
    public final void E(int i10, t.b bVar, final d4.q qVar) {
        final b.a Z0 = Z0(i10, bVar);
        o2(Z0, 1004, new q.a() { // from class: c3.u
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).z(b.a.this, qVar);
            }
        });
    }

    @Override // f3.u
    public final void F(int i10, t.b bVar) {
        final b.a Z0 = Z0(i10, bVar);
        o2(Z0, 1026, new q.a() { // from class: c3.e1
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).P(b.a.this);
            }
        });
    }

    @Override // c3.a
    public final void H(List list, t.b bVar) {
        this.f4911d.k(list, bVar, (b3.m3) y4.a.e(this.f4914g));
    }

    @Override // c3.a
    public void I(final b3.m3 m3Var, Looper looper) {
        boolean z10;
        if (this.f4914g != null && !this.f4911d.f4918b.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        y4.a.f(z10);
        this.f4914g = (b3.m3) y4.a.e(m3Var);
        this.f4915h = this.f4908a.a(looper, null);
        this.f4913f = this.f4913f.e(looper, new q.b() { // from class: c3.l
            @Override // y4.q.b
            public final void a(Object obj, y4.l lVar) {
                n1.this.m2(m3Var, (b) obj, lVar);
            }
        });
    }

    @Override // d4.a0
    public final void J(int i10, t.b bVar, final d4.n nVar, final d4.q qVar) {
        final b.a Z0 = Z0(i10, bVar);
        o2(Z0, 1002, new q.a() { // from class: c3.k
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).J(b.a.this, nVar, qVar);
            }
        });
    }

    protected final b.a V0() {
        return X0(this.f4911d.d());
    }

    protected final b.a W0(g4 g4Var, int i10, t.b bVar) {
        t.b bVar2;
        boolean z10;
        long r10;
        if (g4Var.u()) {
            bVar2 = null;
        } else {
            bVar2 = bVar;
        }
        long elapsedRealtime = this.f4908a.elapsedRealtime();
        boolean z11 = true;
        if (g4Var.equals(this.f4914g.F()) && i10 == this.f4914g.z()) {
            z10 = true;
        } else {
            z10 = false;
        }
        long j10 = 0;
        if (bVar2 != null && bVar2.b()) {
            if (!z10 || this.f4914g.y() != bVar2.f14943b || this.f4914g.n() != bVar2.f14944c) {
                z11 = false;
            }
            if (z11) {
                j10 = this.f4914g.f();
            }
        } else if (z10) {
            r10 = this.f4914g.r();
            return new b.a(elapsedRealtime, g4Var, i10, bVar2, r10, this.f4914g.F(), this.f4914g.z(), this.f4911d.d(), this.f4914g.f(), this.f4914g.i());
        } else if (!g4Var.u()) {
            j10 = g4Var.r(i10, this.f4910c).d();
        }
        r10 = j10;
        return new b.a(elapsedRealtime, g4Var, i10, bVar2, r10, this.f4914g.F(), this.f4914g.z(), this.f4911d.d(), this.f4914g.f(), this.f4914g.i());
    }

    @Override // c3.a
    public final void a(final Exception exc) {
        final b.a b12 = b1();
        o2(b12, 1014, new q.a() { // from class: c3.t
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).w0(b.a.this, exc);
            }
        });
    }

    @Override // c3.a
    public final void b(final String str) {
        final b.a b12 = b1();
        o2(b12, 1019, new q.a() { // from class: c3.e
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).T(b.a.this, str);
            }
        });
    }

    @Override // c3.a
    public final void c(final String str, final long j10, final long j11) {
        final b.a b12 = b1();
        o2(b12, 1016, new q.a() { // from class: c3.m1
            @Override // y4.q.a
            public final void invoke(Object obj) {
                n1.d2(b.a.this, str, j11, j10, (b) obj);
            }
        });
    }

    @Override // c3.a
    public final void d(final String str) {
        final b.a b12 = b1();
        o2(b12, 1012, new q.a() { // from class: c3.m
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).W(b.a.this, str);
            }
        });
    }

    @Override // c3.a
    public final void e(final String str, final long j10, final long j11) {
        final b.a b12 = b1();
        o2(b12, 1008, new q.a() { // from class: c3.j
            @Override // y4.q.a
            public final void invoke(Object obj) {
                n1.h1(b.a.this, str, j11, j10, (b) obj);
            }
        });
    }

    @Override // c3.a
    public final void f(final b3.x1 x1Var, final e3.i iVar) {
        final b.a b12 = b1();
        o2(b12, 1009, new q.a() { // from class: c3.a0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                n1.l1(b.a.this, x1Var, iVar, (b) obj);
            }
        });
    }

    @Override // c3.a
    public final void g(final int i10, final long j10) {
        final b.a a12 = a1();
        o2(a12, 1018, new q.a() { // from class: c3.x
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).j(b.a.this, i10, j10);
            }
        });
    }

    @Override // c3.a
    public final void h(final b3.x1 x1Var, final e3.i iVar) {
        final b.a b12 = b1();
        o2(b12, 1017, new q.a() { // from class: c3.n0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                n1.i2(b.a.this, x1Var, iVar, (b) obj);
            }
        });
    }

    @Override // c3.a
    public final void i(final e3.e eVar) {
        final b.a b12 = b1();
        o2(b12, 1015, new q.a() { // from class: c3.g
            @Override // y4.q.a
            public final void invoke(Object obj) {
                n1.g2(b.a.this, eVar, (b) obj);
            }
        });
    }

    @Override // c3.a
    public final void j(final Object obj, final long j10) {
        final b.a b12 = b1();
        o2(b12, 26, new q.a() { // from class: c3.a1
            @Override // y4.q.a
            public final void invoke(Object obj2) {
                ((b) obj2).I(b.a.this, obj, j10);
            }
        });
    }

    @Override // c3.a
    public final void k(final e3.e eVar) {
        final b.a a12 = a1();
        o2(a12, 1013, new q.a() { // from class: c3.m0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                n1.j1(b.a.this, eVar, (b) obj);
            }
        });
    }

    @Override // c3.a
    public final void l(final e3.e eVar) {
        final b.a b12 = b1();
        o2(b12, 1007, new q.a() { // from class: c3.c0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                n1.k1(b.a.this, eVar, (b) obj);
            }
        });
    }

    @Override // c3.a
    public final void m(final long j10) {
        final b.a b12 = b1();
        o2(b12, 1010, new q.a() { // from class: c3.o
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).m0(b.a.this, j10);
            }
        });
    }

    @Override // c3.a
    public final void n(final Exception exc) {
        final b.a b12 = b1();
        o2(b12, 1029, new q.a() { // from class: c3.l0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).n(b.a.this, exc);
            }
        });
    }

    @Override // c3.a
    public final void o(final Exception exc) {
        final b.a b12 = b1();
        o2(b12, 1030, new q.a() { // from class: c3.j1
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).j0(b.a.this, exc);
            }
        });
    }

    protected final void o2(b.a aVar, int i10, q.a aVar2) {
        this.f4912e.put(i10, aVar);
        this.f4913f.k(i10, aVar2);
    }

    @Override // b3.m3.d
    public final void onAudioAttributesChanged(final d3.e eVar) {
        final b.a b12 = b1();
        o2(b12, 20, new q.a() { // from class: c3.s
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).c(b.a.this, eVar);
            }
        });
    }

    @Override // b3.m3.d
    public void onAvailableCommandsChanged(final m3.b bVar) {
        final b.a V0 = V0();
        o2(V0, 13, new q.a() { // from class: c3.e0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).C(b.a.this, bVar);
            }
        });
    }

    @Override // b3.m3.d
    public void onCues(final List list) {
        final b.a V0 = V0();
        o2(V0, 27, new q.a() { // from class: c3.w0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).B(b.a.this, list);
            }
        });
    }

    @Override // b3.m3.d
    public void onDeviceInfoChanged(final b3.y yVar) {
        final b.a V0 = V0();
        o2(V0, 29, new q.a() { // from class: c3.n
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).x(b.a.this, yVar);
            }
        });
    }

    @Override // b3.m3.d
    public void onDeviceVolumeChanged(final int i10, final boolean z10) {
        final b.a V0 = V0();
        o2(V0, 30, new q.a() { // from class: c3.f
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).q(b.a.this, i10, z10);
            }
        });
    }

    @Override // b3.m3.d
    public void onEvents(b3.m3 m3Var, m3.c cVar) {
    }

    @Override // b3.m3.d
    public final void onIsLoadingChanged(final boolean z10) {
        final b.a V0 = V0();
        o2(V0, 3, new q.a() { // from class: c3.p0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                n1.D1(b.a.this, z10, (b) obj);
            }
        });
    }

    @Override // b3.m3.d
    public void onIsPlayingChanged(final boolean z10) {
        final b.a V0 = V0();
        o2(V0, 7, new q.a() { // from class: c3.r
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).c0(b.a.this, z10);
            }
        });
    }

    @Override // b3.m3.d
    public void onLoadingChanged(boolean z10) {
    }

    @Override // b3.m3.d
    public final void onMediaItemTransition(final b3.f2 f2Var, final int i10) {
        final b.a V0 = V0();
        o2(V0, 1, new q.a() { // from class: c3.y
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).R(b.a.this, f2Var, i10);
            }
        });
    }

    @Override // b3.m3.d
    public void onMediaMetadataChanged(final b3.k2 k2Var) {
        final b.a V0 = V0();
        o2(V0, 14, new q.a() { // from class: c3.f1
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).b(b.a.this, k2Var);
            }
        });
    }

    @Override // b3.m3.d
    public final void onMetadata(final t3.a aVar) {
        final b.a V0 = V0();
        o2(V0, 28, new q.a() { // from class: c3.c
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).k0(b.a.this, aVar);
            }
        });
    }

    @Override // b3.m3.d
    public final void onPlayWhenReadyChanged(final boolean z10, final int i10) {
        final b.a V0 = V0();
        o2(V0, 5, new q.a() { // from class: c3.g0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).s(b.a.this, z10, i10);
            }
        });
    }

    @Override // b3.m3.d
    public final void onPlaybackParametersChanged(final b3.l3 l3Var) {
        final b.a V0 = V0();
        o2(V0, 12, new q.a() { // from class: c3.q0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).v(b.a.this, l3Var);
            }
        });
    }

    @Override // b3.m3.d
    public final void onPlaybackStateChanged(final int i10) {
        final b.a V0 = V0();
        o2(V0, 4, new q.a() { // from class: c3.u0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).l0(b.a.this, i10);
            }
        });
    }

    @Override // b3.m3.d
    public final void onPlaybackSuppressionReasonChanged(final int i10) {
        final b.a V0 = V0();
        o2(V0, 6, new q.a() { // from class: c3.v
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).S(b.a.this, i10);
            }
        });
    }

    @Override // b3.m3.d
    public final void onPlayerError(final b3.i3 i3Var) {
        final b.a c12 = c1(i3Var);
        o2(c12, 10, new q.a() { // from class: c3.i
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).E(b.a.this, i3Var);
            }
        });
    }

    @Override // b3.m3.d
    public void onPlayerErrorChanged(final b3.i3 i3Var) {
        final b.a c12 = c1(i3Var);
        o2(c12, 10, new q.a() { // from class: c3.d
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).o(b.a.this, i3Var);
            }
        });
    }

    @Override // b3.m3.d
    public final void onPlayerStateChanged(final boolean z10, final int i10) {
        final b.a V0 = V0();
        o2(V0, -1, new q.a() { // from class: c3.w
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).K(b.a.this, z10, i10);
            }
        });
    }

    @Override // b3.m3.d
    public void onPositionDiscontinuity(int i10) {
    }

    @Override // b3.m3.d
    public void onRenderedFirstFrame() {
    }

    @Override // b3.m3.d
    public final void onRepeatModeChanged(final int i10) {
        final b.a V0 = V0();
        o2(V0, 8, new q.a() { // from class: c3.d0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).d(b.a.this, i10);
            }
        });
    }

    @Override // b3.m3.d
    public final void onSeekProcessed() {
        final b.a V0 = V0();
        o2(V0, -1, new q.a() { // from class: c3.v0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).k(b.a.this);
            }
        });
    }

    @Override // b3.m3.d
    public final void onSkipSilenceEnabledChanged(final boolean z10) {
        final b.a b12 = b1();
        o2(b12, 23, new q.a() { // from class: c3.h1
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).F(b.a.this, z10);
            }
        });
    }

    @Override // b3.m3.d
    public final void onSurfaceSizeChanged(final int i10, final int i11) {
        final b.a b12 = b1();
        o2(b12, 24, new q.a() { // from class: c3.f0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).x0(b.a.this, i10, i11);
            }
        });
    }

    @Override // b3.m3.d
    public final void onTimelineChanged(g4 g4Var, final int i10) {
        this.f4911d.l((b3.m3) y4.a.e(this.f4914g));
        final b.a V0 = V0();
        o2(V0, 0, new q.a() { // from class: c3.t0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).l(b.a.this, i10);
            }
        });
    }

    @Override // b3.m3.d
    public void onTracksChanged(final l4 l4Var) {
        final b.a V0 = V0();
        o2(V0, 2, new q.a() { // from class: c3.q
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).L(b.a.this, l4Var);
            }
        });
    }

    @Override // b3.m3.d
    public final void onVideoSizeChanged(final z4.a0 a0Var) {
        final b.a b12 = b1();
        o2(b12, 25, new q.a() { // from class: c3.c1
            @Override // y4.q.a
            public final void invoke(Object obj) {
                n1.j2(b.a.this, a0Var, (b) obj);
            }
        });
    }

    @Override // b3.m3.d
    public final void onVolumeChanged(final float f10) {
        final b.a b12 = b1();
        o2(b12, 22, new q.a() { // from class: c3.j0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).e0(b.a.this, f10);
            }
        });
    }

    @Override // c3.a
    public final void p(final e3.e eVar) {
        final b.a a12 = a1();
        o2(a12, 1020, new q.a() { // from class: c3.z
            @Override // y4.q.a
            public final void invoke(Object obj) {
                n1.f2(b.a.this, eVar, (b) obj);
            }
        });
    }

    @Override // c3.a
    public final void q(final int i10, final long j10, final long j11) {
        final b.a b12 = b1();
        o2(b12, 1011, new q.a() { // from class: c3.z0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).X(b.a.this, i10, j10, j11);
            }
        });
    }

    @Override // c3.a
    public final void r(final long j10, final int i10) {
        final b.a a12 = a1();
        o2(a12, 1021, new q.a() { // from class: c3.k1
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).i0(b.a.this, j10, i10);
            }
        });
    }

    @Override // c3.a
    public void release() {
        ((y4.n) y4.a.h(this.f4915h)).b(new Runnable() { // from class: c3.h
            @Override // java.lang.Runnable
            public final void run() {
                n1.this.n2();
            }
        });
    }

    @Override // d4.a0
    public final void s(int i10, t.b bVar, final d4.n nVar, final d4.q qVar, final IOException iOException, final boolean z10) {
        final b.a Z0 = Z0(i10, bVar);
        o2(Z0, 1003, new q.a() { // from class: c3.i0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).U(b.a.this, nVar, qVar, iOException, z10);
            }
        });
    }

    @Override // d4.a0
    public final void t(int i10, t.b bVar, final d4.q qVar) {
        final b.a Z0 = Z0(i10, bVar);
        o2(Z0, 1005, new q.a() { // from class: c3.b0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).q0(b.a.this, qVar);
            }
        });
    }

    @Override // x4.e.a
    public final void u(final int i10, final long j10, final long j11) {
        final b.a Y0 = Y0();
        o2(Y0, 1006, new q.a() { // from class: c3.i1
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).Y(b.a.this, i10, j10, j11);
            }
        });
    }

    @Override // c3.a
    public void v(b bVar) {
        y4.a.e(bVar);
        this.f4913f.c(bVar);
    }

    @Override // c3.a
    public final void w() {
        if (!this.f4916i) {
            final b.a V0 = V0();
            this.f4916i = true;
            o2(V0, -1, new q.a() { // from class: c3.l1
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    ((b) obj).y0(b.a.this);
                }
            });
        }
    }

    @Override // f3.u
    public final void x(int i10, t.b bVar) {
        final b.a Z0 = Z0(i10, bVar);
        o2(Z0, 1023, new q.a() { // from class: c3.b1
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).Q(b.a.this);
            }
        });
    }

    @Override // d4.a0
    public final void y(int i10, t.b bVar, final d4.n nVar, final d4.q qVar) {
        final b.a Z0 = Z0(i10, bVar);
        o2(Z0, 1001, new q.a() { // from class: c3.y0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).o0(b.a.this, nVar, qVar);
            }
        });
    }

    @Override // f3.u
    public final void z(int i10, t.b bVar, final int i11) {
        final b.a Z0 = Z0(i10, bVar);
        o2(Z0, 1022, new q.a() { // from class: c3.o0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                n1.z1(b.a.this, i11, (b) obj);
            }
        });
    }

    @Override // b3.m3.d
    public final void onPositionDiscontinuity(final m3.e eVar, final m3.e eVar2, final int i10) {
        if (i10 == 1) {
            this.f4916i = false;
        }
        this.f4911d.j((b3.m3) y4.a.e(this.f4914g));
        final b.a V0 = V0();
        o2(V0, 11, new q.a() { // from class: c3.x0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                n1.T1(b.a.this, i10, eVar, eVar2, (b) obj);
            }
        });
    }

    @Override // b3.m3.d
    public void onCues(final m4.e eVar) {
        final b.a V0 = V0();
        o2(V0, 27, new q.a() { // from class: c3.h0
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((b) obj).f0(b.a.this, eVar);
            }
        });
    }
}
