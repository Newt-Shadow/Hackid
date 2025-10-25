package c3;

import android.util.SparseArray;
import b3.g4;
import b3.l4;
import b3.m3;
import d4.t;
import java.io.IOException;
import java.util.List;
/* loaded from: classes.dex */
public interface b {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f4815a;

        /* renamed from: b  reason: collision with root package name */
        public final g4 f4816b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4817c;

        /* renamed from: d  reason: collision with root package name */
        public final t.b f4818d;

        /* renamed from: e  reason: collision with root package name */
        public final long f4819e;

        /* renamed from: f  reason: collision with root package name */
        public final g4 f4820f;

        /* renamed from: g  reason: collision with root package name */
        public final int f4821g;

        /* renamed from: h  reason: collision with root package name */
        public final t.b f4822h;

        /* renamed from: i  reason: collision with root package name */
        public final long f4823i;

        /* renamed from: j  reason: collision with root package name */
        public final long f4824j;

        public a(long j10, g4 g4Var, int i10, t.b bVar, long j11, g4 g4Var2, int i11, t.b bVar2, long j12, long j13) {
            this.f4815a = j10;
            this.f4816b = g4Var;
            this.f4817c = i10;
            this.f4818d = bVar;
            this.f4819e = j11;
            this.f4820f = g4Var2;
            this.f4821g = i11;
            this.f4822h = bVar2;
            this.f4823i = j12;
            this.f4824j = j13;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f4815a == aVar.f4815a && this.f4817c == aVar.f4817c && this.f4819e == aVar.f4819e && this.f4821g == aVar.f4821g && this.f4823i == aVar.f4823i && this.f4824j == aVar.f4824j && n6.k.a(this.f4816b, aVar.f4816b) && n6.k.a(this.f4818d, aVar.f4818d) && n6.k.a(this.f4820f, aVar.f4820f) && n6.k.a(this.f4822h, aVar.f4822h)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return n6.k.b(Long.valueOf(this.f4815a), this.f4816b, Integer.valueOf(this.f4817c), this.f4818d, Long.valueOf(this.f4819e), this.f4820f, Integer.valueOf(this.f4821g), this.f4822h, Long.valueOf(this.f4823i), Long.valueOf(this.f4824j));
        }
    }

    /* renamed from: c3.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0088b {

        /* renamed from: a  reason: collision with root package name */
        private final y4.l f4825a;

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray f4826b;

        public C0088b(y4.l lVar, SparseArray sparseArray) {
            this.f4825a = lVar;
            SparseArray sparseArray2 = new SparseArray(lVar.c());
            for (int i10 = 0; i10 < lVar.c(); i10++) {
                int b10 = lVar.b(i10);
                sparseArray2.append(b10, (a) y4.a.e((a) sparseArray.get(b10)));
            }
            this.f4826b = sparseArray2;
        }

        public boolean a(int i10) {
            return this.f4825a.a(i10);
        }

        public int b(int i10) {
            return this.f4825a.b(i10);
        }

        public a c(int i10) {
            return (a) y4.a.e((a) this.f4826b.get(i10));
        }

        public int d() {
            return this.f4825a.c();
        }
    }

    default void A(a aVar, boolean z10) {
    }

    default void B(a aVar, List list) {
    }

    default void C(a aVar, m3.b bVar) {
    }

    default void D(a aVar, b3.x1 x1Var) {
    }

    void E(a aVar, b3.i3 i3Var);

    default void F(a aVar, boolean z10) {
    }

    default void G(a aVar, String str, long j10) {
    }

    default void H(a aVar) {
    }

    default void I(a aVar, Object obj, long j10) {
    }

    default void J(a aVar, d4.n nVar, d4.q qVar) {
    }

    default void K(a aVar, boolean z10, int i10) {
    }

    default void L(a aVar, l4 l4Var) {
    }

    default void M(a aVar, e3.e eVar) {
    }

    void N(a aVar, e3.e eVar);

    default void O(a aVar, String str, long j10, long j11) {
    }

    default void P(a aVar) {
    }

    default void Q(a aVar) {
    }

    default void R(a aVar, b3.f2 f2Var, int i10) {
    }

    default void S(a aVar, int i10) {
    }

    default void T(a aVar, String str) {
    }

    void U(a aVar, d4.n nVar, d4.q qVar, IOException iOException, boolean z10);

    default void W(a aVar, String str) {
    }

    default void X(a aVar, int i10, long j10, long j11) {
    }

    void Y(a aVar, int i10, long j10, long j11);

    default void Z(a aVar, int i10, int i11, int i12, float f10) {
    }

    default void a(a aVar, b3.x1 x1Var) {
    }

    default void a0(a aVar, String str, long j10, long j11) {
    }

    default void b(a aVar, b3.k2 k2Var) {
    }

    default void b0(a aVar) {
    }

    default void c(a aVar, d3.e eVar) {
    }

    default void c0(a aVar, boolean z10) {
    }

    default void d(a aVar, int i10) {
    }

    default void d0(a aVar, d4.n nVar, d4.q qVar) {
    }

    default void e(a aVar, int i10, e3.e eVar) {
    }

    default void e0(a aVar, float f10) {
    }

    default void f(a aVar, b3.x1 x1Var, e3.i iVar) {
    }

    default void f0(a aVar, m4.e eVar) {
    }

    default void g(a aVar, int i10, b3.x1 x1Var) {
    }

    default void g0(a aVar, e3.e eVar) {
    }

    default void h(a aVar, int i10) {
    }

    void h0(a aVar, z4.a0 a0Var);

    default void i(a aVar, Exception exc) {
    }

    default void i0(a aVar, long j10, int i10) {
    }

    default void j(a aVar, int i10, long j10) {
    }

    default void j0(a aVar, Exception exc) {
    }

    default void k(a aVar) {
    }

    default void k0(a aVar, t3.a aVar2) {
    }

    default void l(a aVar, int i10) {
    }

    default void l0(a aVar, int i10) {
    }

    default void m0(a aVar, long j10) {
    }

    default void n(a aVar, Exception exc) {
    }

    void n0(b3.m3 m3Var, C0088b c0088b);

    default void o(a aVar, b3.i3 i3Var) {
    }

    default void o0(a aVar, d4.n nVar, d4.q qVar) {
    }

    default void p(a aVar, String str, long j10) {
    }

    default void p0(a aVar) {
    }

    default void q(a aVar, int i10, boolean z10) {
    }

    default void q0(a aVar, d4.q qVar) {
    }

    default void r(a aVar, int i10, e3.e eVar) {
    }

    default void r0(a aVar, int i10, String str, long j10) {
    }

    default void s(a aVar, boolean z10, int i10) {
    }

    void s0(a aVar, m3.e eVar, m3.e eVar2, int i10);

    default void t(a aVar, e3.e eVar) {
    }

    default void u(a aVar, b3.x1 x1Var, e3.i iVar) {
    }

    default void u0(a aVar) {
    }

    default void v(a aVar, b3.l3 l3Var) {
    }

    default void w(a aVar, int i10) {
    }

    default void w0(a aVar, Exception exc) {
    }

    default void x(a aVar, b3.y yVar) {
    }

    default void x0(a aVar, int i10, int i11) {
    }

    default void y(a aVar, boolean z10) {
    }

    default void y0(a aVar) {
    }

    void z(a aVar, d4.q qVar);
}
