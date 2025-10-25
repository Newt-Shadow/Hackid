package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.i0;
import androidx.datastore.preferences.protobuf.q1;
import androidx.datastore.preferences.protobuf.r1;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k implements r1 {

    /* renamed from: a  reason: collision with root package name */
    private final j f2218a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2219a;

        static {
            int[] iArr = new int[q1.b.values().length];
            f2219a = iArr;
            try {
                iArr[q1.b.f2272j.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2219a[q1.b.f2271i.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2219a[q1.b.f2269g.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2219a[q1.b.f2279q.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2219a[q1.b.f2281s.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2219a[q1.b.f2277o.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2219a[q1.b.f2270h.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2219a[q1.b.f2267e.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2219a[q1.b.f2280r.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2219a[q1.b.f2282t.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2219a[q1.b.f2268f.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2219a[q1.b.f2273k.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private k(j jVar) {
        j jVar2 = (j) y.b(jVar, "output");
        this.f2218a = jVar2;
        jVar2.f2208a = this;
    }

    public static k P(j jVar) {
        k kVar = jVar.f2208a;
        if (kVar != null) {
            return kVar;
        }
        return new k(jVar);
    }

    private void Q(int i10, e eVar, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void R(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.d(((Boolean) list.get(i13)).booleanValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.b0(((Boolean) list.get(i11)).booleanValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.a0(i10, ((Boolean) list.get(i11)).booleanValue());
            i11++;
        }
    }

    private void S(int i10, boolean z10, Object obj, i0.a aVar) {
        this.f2218a.M0(i10, 2);
        this.f2218a.O0(i0.b(aVar, Boolean.valueOf(z10), obj));
        i0.e(this.f2218a, aVar, Boolean.valueOf(z10), obj);
    }

    private void T(int i10, i0.a aVar, Map map) {
        int size = map.size();
        int[] iArr = new int[size];
        int i11 = 0;
        for (Integer num : map.keySet()) {
            iArr[i11] = num.intValue();
            i11++;
        }
        Arrays.sort(iArr);
        for (int i12 = 0; i12 < size; i12++) {
            int i13 = iArr[i12];
            Object obj = map.get(Integer.valueOf(i13));
            this.f2218a.M0(i10, 2);
            this.f2218a.O0(i0.b(aVar, Integer.valueOf(i13), obj));
            i0.e(this.f2218a, aVar, Integer.valueOf(i13), obj);
        }
    }

    private void U(int i10, i0.a aVar, Map map) {
        int size = map.size();
        long[] jArr = new long[size];
        int i11 = 0;
        for (Long l10 : map.keySet()) {
            jArr[i11] = l10.longValue();
            i11++;
        }
        Arrays.sort(jArr);
        for (int i12 = 0; i12 < size; i12++) {
            long j10 = jArr[i12];
            Object obj = map.get(Long.valueOf(j10));
            this.f2218a.M0(i10, 2);
            this.f2218a.O0(i0.b(aVar, Long.valueOf(j10), obj));
            i0.e(this.f2218a, aVar, Long.valueOf(j10), obj);
        }
    }

    private void V(int i10, i0.a aVar, Map map) {
        switch (a.f2219a[aVar.f2202a.ordinal()]) {
            case 1:
                Object obj = map.get(Boolean.FALSE);
                if (obj != null) {
                    S(i10, false, obj, aVar);
                }
                Object obj2 = map.get(Boolean.TRUE);
                if (obj2 != null) {
                    S(i10, true, obj2, aVar);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                T(i10, aVar, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                U(i10, aVar, map);
                return;
            case 12:
                W(i10, aVar, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + aVar.f2202a);
        }
    }

    private void W(int i10, i0.a aVar, Map map) {
        int size = map.size();
        String[] strArr = new String[size];
        int i11 = 0;
        for (String str : map.keySet()) {
            strArr[i11] = str;
            i11++;
        }
        Arrays.sort(strArr);
        for (int i12 = 0; i12 < size; i12++) {
            String str2 = strArr[i12];
            Object obj = map.get(str2);
            this.f2218a.M0(i10, 2);
            this.f2218a.O0(i0.b(aVar, str2, obj));
            i0.e(this.f2218a, aVar, str2, obj);
        }
    }

    private void X(int i10, l lVar, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void Y(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.i(((Double) list.get(i13)).doubleValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.h0(((Double) list.get(i11)).doubleValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.g0(i10, ((Double) list.get(i11)).doubleValue());
            i11++;
        }
    }

    private void Z(int i10, x xVar, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void a0(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.k(((Integer) list.get(i13)).intValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.j0(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.i0(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    private void b0(int i10, x xVar, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void c0(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.m(((Integer) list.get(i13)).intValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.l0(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.k0(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    private void d0(int i10, g0 g0Var, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void e0(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.o(((Long) list.get(i13)).longValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.n0(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.m0(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    private void f0(int i10, u uVar, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void g0(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.q(((Float) list.get(i13)).floatValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.p0(((Float) list.get(i11)).floatValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.o0(i10, ((Float) list.get(i11)).floatValue());
            i11++;
        }
    }

    private void h0(int i10, x xVar, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void i0(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.v(((Integer) list.get(i13)).intValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.v0(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.u0(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    private void j0(int i10, g0 g0Var, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void k0(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.x(((Long) list.get(i13)).longValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.x0(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.w0(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    private void l0(int i10, Object obj) {
        if (obj instanceof String) {
            this.f2218a.K0(i10, (String) obj);
        } else {
            this.f2218a.e0(i10, (g) obj);
        }
    }

    private void m0(int i10, x xVar, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void n0(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.F(((Integer) list.get(i13)).intValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.D0(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.C0(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    private void o0(int i10, g0 g0Var, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void p0(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.H(((Long) list.get(i13)).longValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.F0(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.E0(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    private void q0(int i10, x xVar, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void s0(int i10, g0 g0Var, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void t0(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.L(((Long) list.get(i13)).longValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.J0(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.I0(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    private void u0(int i10, x xVar, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void w0(int i10, g0 g0Var, boolean z10) {
        if (z10) {
            this.f2218a.M0(i10, 2);
            throw null;
        }
        throw null;
    }

    private void x0(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.S(((Long) list.get(i13)).longValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.Q0(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.P0(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void A(int i10, float f10) {
        this.f2218a.o0(i10, f10);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void B(int i10) {
        this.f2218a.M0(i10, 4);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void C(int i10, List list, boolean z10) {
        if (list instanceof x) {
            q0(i10, (x) list, z10);
        } else {
            r0(i10, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void D(int i10, int i11) {
        this.f2218a.i0(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void E(int i10, List list, boolean z10) {
        if (list instanceof g0) {
            j0(i10, (g0) list, z10);
        } else {
            k0(i10, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void F(int i10, List list, boolean z10) {
        if (list instanceof x) {
            Z(i10, (x) list, z10);
        } else {
            a0(i10, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void G(int i10, List list, boolean z10) {
        if (list instanceof l) {
            X(i10, (l) list, z10);
        } else {
            Y(i10, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void H(int i10, int i11) {
        this.f2218a.G0(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void I(int i10, List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f2218a.e0(i10, (g) list.get(i11));
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void J(int i10, List list, e1 e1Var) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            M(i10, list.get(i11), e1Var);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void K(int i10, List list, e1 e1Var) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            O(i10, list.get(i11), e1Var);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void L(int i10, g gVar) {
        this.f2218a.e0(i10, gVar);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void M(int i10, Object obj, e1 e1Var) {
        this.f2218a.y0(i10, (p0) obj, e1Var);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void N(int i10, i0.a aVar, Map map) {
        if (this.f2218a.X()) {
            V(i10, aVar, map);
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            this.f2218a.M0(i10, 2);
            this.f2218a.O0(i0.b(aVar, entry.getKey(), entry.getValue()));
            i0.e(this.f2218a, aVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void O(int i10, Object obj, e1 e1Var) {
        this.f2218a.r0(i10, (p0) obj, e1Var);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void a(int i10, List list, boolean z10) {
        if (list instanceof u) {
            f0(i10, (u) list, z10);
        } else {
            g0(i10, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void b(int i10, int i11) {
        this.f2218a.N0(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public final void c(int i10, Object obj) {
        if (obj instanceof g) {
            this.f2218a.B0(i10, (g) obj);
        } else {
            this.f2218a.A0(i10, (p0) obj);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void d(int i10, int i11) {
        this.f2218a.k0(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void e(int i10, double d10) {
        this.f2218a.g0(i10, d10);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void f(int i10, List list, boolean z10) {
        if (list instanceof g0) {
            o0(i10, (g0) list, z10);
        } else {
            p0(i10, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void g(int i10, List list, boolean z10) {
        if (list instanceof g0) {
            w0(i10, (g0) list, z10);
        } else {
            x0(i10, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void h(int i10, long j10) {
        this.f2218a.m0(i10, j10);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public r1.a i() {
        return r1.a.ASCENDING;
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void j(int i10, List list) {
        int i11 = 0;
        if (list instanceof c0) {
            c0 c0Var = (c0) list;
            while (i11 < list.size()) {
                l0(i10, c0Var.v(i11));
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.K0(i10, (String) list.get(i11));
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void k(int i10, String str) {
        this.f2218a.K0(i10, str);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void l(int i10, long j10) {
        this.f2218a.P0(i10, j10);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void m(int i10, List list, boolean z10) {
        if (list instanceof x) {
            h0(i10, (x) list, z10);
        } else {
            i0(i10, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void n(int i10, long j10) {
        this.f2218a.w0(i10, j10);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void o(int i10, boolean z10) {
        this.f2218a.a0(i10, z10);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void p(int i10, int i11) {
        this.f2218a.C0(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void q(int i10) {
        this.f2218a.M0(i10, 3);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void r(int i10, int i11) {
        this.f2218a.u0(i10, i11);
    }

    public void r0(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.J(((Integer) list.get(i13)).intValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.H0(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.G0(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void s(int i10, List list, boolean z10) {
        if (list instanceof g0) {
            d0(i10, (g0) list, z10);
        } else {
            e0(i10, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void t(int i10, List list, boolean z10) {
        if (list instanceof x) {
            m0(i10, (x) list, z10);
        } else {
            n0(i10, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void u(int i10, long j10) {
        this.f2218a.E0(i10, j10);
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void v(int i10, List list, boolean z10) {
        if (list instanceof x) {
            b0(i10, (x) list, z10);
        } else {
            c0(i10, list, z10);
        }
    }

    public void v0(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f2218a.M0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += j.Q(((Integer) list.get(i13)).intValue());
            }
            this.f2218a.O0(i12);
            while (i11 < list.size()) {
                this.f2218a.O0(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f2218a.N0(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void w(int i10, List list, boolean z10) {
        if (list instanceof e) {
            Q(i10, (e) list, z10);
        } else {
            R(i10, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void x(int i10, List list, boolean z10) {
        if (list instanceof x) {
            u0(i10, (x) list, z10);
        } else {
            v0(i10, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void y(int i10, List list, boolean z10) {
        if (list instanceof g0) {
            s0(i10, (g0) list, z10);
        } else {
            t0(i10, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.r1
    public void z(int i10, long j10) {
        this.f2218a.I0(i10, j10);
    }
}
