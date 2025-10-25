package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class v5 {
    private Long A;
    private long B;
    private String C;
    private int D;
    private int E;
    private long F;
    private String G;
    private byte[] H;
    private int I;
    private long J;
    private long K;
    private long L;
    private long M;
    private long N;
    private long O;
    private String P;
    private boolean Q;
    private long R;
    private long S;

    /* renamed from: a  reason: collision with root package name */
    private final w6 f8106a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8107b;

    /* renamed from: c  reason: collision with root package name */
    private String f8108c;

    /* renamed from: d  reason: collision with root package name */
    private String f8109d;

    /* renamed from: e  reason: collision with root package name */
    private String f8110e;

    /* renamed from: f  reason: collision with root package name */
    private String f8111f;

    /* renamed from: g  reason: collision with root package name */
    private long f8112g;

    /* renamed from: h  reason: collision with root package name */
    private long f8113h;

    /* renamed from: i  reason: collision with root package name */
    private long f8114i;

    /* renamed from: j  reason: collision with root package name */
    private String f8115j;

    /* renamed from: k  reason: collision with root package name */
    private long f8116k;

    /* renamed from: l  reason: collision with root package name */
    private String f8117l;

    /* renamed from: m  reason: collision with root package name */
    private long f8118m;

    /* renamed from: n  reason: collision with root package name */
    private long f8119n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f8120o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f8121p;

    /* renamed from: q  reason: collision with root package name */
    private Boolean f8122q;

    /* renamed from: r  reason: collision with root package name */
    private long f8123r;

    /* renamed from: s  reason: collision with root package name */
    private List f8124s;

    /* renamed from: t  reason: collision with root package name */
    private String f8125t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f8126u;

    /* renamed from: v  reason: collision with root package name */
    private long f8127v;

    /* renamed from: w  reason: collision with root package name */
    private long f8128w;

    /* renamed from: x  reason: collision with root package name */
    private int f8129x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f8130y;

    /* renamed from: z  reason: collision with root package name */
    private Long f8131z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v5(w6 w6Var, String str) {
        n5.q.k(w6Var);
        n5.q.e(str);
        this.f8106a = w6Var;
        this.f8107b = str;
        w6Var.b().h();
    }

    public final boolean A() {
        this.f8106a.b().h();
        return this.Q;
    }

    public final void A0(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.f8113h != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.f8113h = j10;
    }

    public final int B() {
        this.f8106a.b().h();
        return this.D;
    }

    public final long B0() {
        this.f8106a.b().h();
        return this.f8114i;
    }

    public final void C(int i10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.D != i10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.D = i10;
    }

    public final void C0(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.f8114i != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.f8114i = j10;
    }

    public final int D() {
        this.f8106a.b().h();
        return this.E;
    }

    public final String D0() {
        this.f8106a.b().h();
        return this.f8115j;
    }

    public final void E(int i10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.E != i10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.E = i10;
    }

    public final void E0(String str) {
        this.f8106a.b().h();
        this.Q |= !Objects.equals(this.f8115j, str);
        this.f8115j = str;
    }

    public final void F(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.F != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.F = j10;
    }

    public final long F0() {
        this.f8106a.b().h();
        return this.f8116k;
    }

    public final long G() {
        this.f8106a.b().h();
        return this.F;
    }

    public final void G0(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.f8116k != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.f8116k = j10;
    }

    public final void H(String str) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.G != str) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.G = str;
    }

    public final String H0() {
        this.f8106a.b().h();
        return this.f8117l;
    }

    public final String I() {
        this.f8106a.b().h();
        return this.G;
    }

    public final void I0(String str) {
        this.f8106a.b().h();
        this.Q |= !Objects.equals(this.f8117l, str);
        this.f8117l = str;
    }

    public final void J(byte[] bArr) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.H != bArr) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.H = bArr;
    }

    public final long J0() {
        this.f8106a.b().h();
        return this.f8118m;
    }

    public final byte[] K() {
        this.f8106a.b().h();
        return this.H;
    }

    public final void K0(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.f8118m != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.f8118m = j10;
    }

    public final void L(int i10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.I != i10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.I = i10;
    }

    public final long L0() {
        this.f8106a.b().h();
        return this.f8119n;
    }

    public final int M() {
        this.f8106a.b().h();
        return this.I;
    }

    public final String N() {
        this.f8106a.b().h();
        String str = this.P;
        O(null);
        return str;
    }

    public final void O(String str) {
        this.f8106a.b().h();
        this.Q |= !Objects.equals(this.P, str);
        this.P = str;
    }

    public final boolean P() {
        this.f8106a.b().h();
        return this.f8121p;
    }

    public final void Q(boolean z10) {
        boolean z11;
        this.f8106a.b().h();
        boolean z12 = this.Q;
        if (this.f8121p != z10) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.Q = z12 | z11;
        this.f8121p = z10;
    }

    public final Boolean R() {
        this.f8106a.b().h();
        return this.f8122q;
    }

    public final void S(Boolean bool) {
        this.f8106a.b().h();
        this.Q |= !Objects.equals(this.f8122q, bool);
        this.f8122q = bool;
    }

    public final List T() {
        this.f8106a.b().h();
        return this.f8124s;
    }

    public final void U(List list) {
        ArrayList arrayList;
        this.f8106a.b().h();
        if (!Objects.equals(this.f8124s, list)) {
            this.Q = true;
            if (list != null) {
                arrayList = new ArrayList(list);
            } else {
                arrayList = null;
            }
            this.f8124s = arrayList;
        }
    }

    public final boolean V() {
        this.f8106a.b().h();
        return this.f8126u;
    }

    public final void W(boolean z10) {
        boolean z11;
        this.f8106a.b().h();
        boolean z12 = this.Q;
        if (this.f8126u != z10) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.Q = z12 | z11;
        this.f8126u = z10;
    }

    public final long X() {
        this.f8106a.b().h();
        return this.f8127v;
    }

    public final void Y(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.f8127v != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.f8127v = j10;
    }

    public final long Z() {
        this.f8106a.b().h();
        return this.f8128w;
    }

    public final void a(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.f8119n != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.f8119n = j10;
    }

    public final void a0(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.f8128w != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.f8128w = j10;
    }

    public final long b() {
        this.f8106a.b().h();
        return this.f8123r;
    }

    public final int b0() {
        this.f8106a.b().h();
        return this.f8129x;
    }

    public final void c(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.f8123r != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.f8123r = j10;
    }

    public final void c0(int i10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.f8129x != i10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.f8129x = i10;
    }

    public final boolean d() {
        this.f8106a.b().h();
        return this.f8120o;
    }

    public final boolean d0() {
        this.f8106a.b().h();
        return this.f8130y;
    }

    public final void e(boolean z10) {
        boolean z11;
        this.f8106a.b().h();
        boolean z12 = this.Q;
        if (this.f8120o != z10) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.Q = z12 | z11;
        this.f8120o = z10;
    }

    public final void e0(boolean z10) {
        boolean z11;
        this.f8106a.b().h();
        boolean z12 = this.Q;
        if (this.f8130y != z10) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.Q = z12 | z11;
        this.f8130y = z10;
    }

    public final void f(long j10) {
        boolean z10;
        boolean z11 = true;
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        n5.q.a(z10);
        this.f8106a.b().h();
        boolean z12 = this.Q;
        if (this.f8112g == j10) {
            z11 = false;
        }
        this.Q = z12 | z11;
        this.f8112g = j10;
    }

    public final Long f0() {
        this.f8106a.b().h();
        return this.f8131z;
    }

    public final long g() {
        this.f8106a.b().h();
        return this.f8112g;
    }

    public final void g0(Long l10) {
        this.f8106a.b().h();
        this.Q |= !Objects.equals(this.f8131z, l10);
        this.f8131z = l10;
    }

    public final long h() {
        this.f8106a.b().h();
        return this.R;
    }

    public final Long h0() {
        this.f8106a.b().h();
        return this.A;
    }

    public final void i(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.R != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.R = j10;
    }

    public final void i0(Long l10) {
        this.f8106a.b().h();
        this.Q |= !Objects.equals(this.A, l10);
        this.A = l10;
    }

    public final long j() {
        this.f8106a.b().h();
        return this.S;
    }

    public final long j0() {
        this.f8106a.b().h();
        return this.B;
    }

    public final void k(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.S != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.S = j10;
    }

    public final void k0(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.B != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.B = j10;
    }

    public final void l() {
        w6 w6Var = this.f8106a;
        w6Var.b().h();
        long j10 = this.f8112g + 1;
        if (j10 > 2147483647L) {
            w6Var.a().r().b("Bundle index overflow. appId", p5.x(this.f8107b));
            j10 = 0;
        }
        this.Q = true;
        this.f8112g = j10;
    }

    public final String l0() {
        this.f8106a.b().h();
        return this.C;
    }

    public final void m(long j10) {
        w6 w6Var = this.f8106a;
        w6Var.b().h();
        long j11 = this.f8112g + j10;
        if (j11 > 2147483647L) {
            w6Var.a().r().b("Bundle index overflow. appId", p5.x(this.f8107b));
            j11 = (-1) + j10;
        }
        long j12 = this.F + 1;
        if (j12 > 2147483647L) {
            w6Var.a().r().b("Delivery index overflow. appId", p5.x(this.f8107b));
            j12 = 0;
        }
        this.Q = true;
        this.f8112g = j11;
        this.F = j12;
    }

    public final void m0(String str) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.C != str) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.C = str;
    }

    public final long n() {
        this.f8106a.b().h();
        return this.J;
    }

    public final void n0() {
        this.f8106a.b().h();
        this.Q = false;
    }

    public final void o(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.J != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.J = j10;
    }

    public final String o0() {
        this.f8106a.b().h();
        return this.f8107b;
    }

    public final long p() {
        this.f8106a.b().h();
        return this.K;
    }

    public final String p0() {
        this.f8106a.b().h();
        return this.f8108c;
    }

    public final void q(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.K != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.K = j10;
    }

    public final void q0(String str) {
        this.f8106a.b().h();
        this.Q |= !Objects.equals(this.f8108c, str);
        this.f8108c = str;
    }

    public final long r() {
        this.f8106a.b().h();
        return this.L;
    }

    public final String r0() {
        this.f8106a.b().h();
        return this.f8109d;
    }

    public final void s(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.L != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.L = j10;
    }

    public final void s0(String str) {
        this.f8106a.b().h();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.Q |= true ^ Objects.equals(this.f8109d, str);
        this.f8109d = str;
    }

    public final long t() {
        this.f8106a.b().h();
        return this.M;
    }

    public final String t0() {
        this.f8106a.b().h();
        return this.f8125t;
    }

    public final void u(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.M != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.M = j10;
    }

    public final void u0(String str) {
        this.f8106a.b().h();
        this.Q |= !Objects.equals(this.f8125t, str);
        this.f8125t = str;
    }

    public final long v() {
        this.f8106a.b().h();
        return this.O;
    }

    public final String v0() {
        this.f8106a.b().h();
        return this.f8110e;
    }

    public final void w(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.O != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.O = j10;
    }

    public final void w0(String str) {
        this.f8106a.b().h();
        this.Q |= !Objects.equals(this.f8110e, str);
        this.f8110e = str;
    }

    public final long x() {
        this.f8106a.b().h();
        return this.N;
    }

    public final String x0() {
        this.f8106a.b().h();
        return this.f8111f;
    }

    public final void y(long j10) {
        boolean z10;
        this.f8106a.b().h();
        boolean z11 = this.Q;
        if (this.N != j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Q = z11 | z10;
        this.N = j10;
    }

    public final void y0(String str) {
        this.f8106a.b().h();
        this.Q |= !Objects.equals(this.f8111f, str);
        this.f8111f = str;
    }

    public final String z() {
        this.f8106a.b().h();
        return this.P;
    }

    public final long z0() {
        this.f8106a.b().h();
        return this.f8113h;
    }
}
