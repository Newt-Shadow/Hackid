package w4;

import android.content.Context;
import android.graphics.Point;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import b3.g4;
import b3.r;
import b3.u3;
import b3.v3;
import b3.x1;
import d3.o0;
import d4.s0;
import d4.t;
import d4.u0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import o6.q;
import w4.a;
import w4.a0;
import w4.f0;
import w4.m;
import w4.y;
import y4.q0;
/* loaded from: classes.dex */
public class m extends a0 {

    /* renamed from: k  reason: collision with root package name */
    private static final o6.h0 f31850k = o6.h0.a(new Comparator() { // from class: w4.f
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int M;
            M = m.M((Integer) obj, (Integer) obj2);
            return M;
        }
    });

    /* renamed from: l  reason: collision with root package name */
    private static final o6.h0 f31851l = o6.h0.a(new Comparator() { // from class: w4.g
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int N;
            N = m.N((Integer) obj, (Integer) obj2);
            return N;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private final Object f31852d;

    /* renamed from: e  reason: collision with root package name */
    public final Context f31853e;

    /* renamed from: f  reason: collision with root package name */
    private final y.b f31854f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f31855g;

    /* renamed from: h  reason: collision with root package name */
    private d f31856h;

    /* renamed from: i  reason: collision with root package name */
    private f f31857i;

    /* renamed from: j  reason: collision with root package name */
    private d3.e f31858j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b extends h implements Comparable {

        /* renamed from: e  reason: collision with root package name */
        private final int f31859e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f31860f;

        /* renamed from: g  reason: collision with root package name */
        private final String f31861g;

        /* renamed from: h  reason: collision with root package name */
        private final d f31862h;

        /* renamed from: i  reason: collision with root package name */
        private final boolean f31863i;

        /* renamed from: j  reason: collision with root package name */
        private final int f31864j;

        /* renamed from: k  reason: collision with root package name */
        private final int f31865k;

        /* renamed from: l  reason: collision with root package name */
        private final int f31866l;

        /* renamed from: m  reason: collision with root package name */
        private final boolean f31867m;

        /* renamed from: n  reason: collision with root package name */
        private final int f31868n;

        /* renamed from: o  reason: collision with root package name */
        private final int f31869o;

        /* renamed from: p  reason: collision with root package name */
        private final boolean f31870p;

        /* renamed from: q  reason: collision with root package name */
        private final int f31871q;

        /* renamed from: r  reason: collision with root package name */
        private final int f31872r;

        /* renamed from: s  reason: collision with root package name */
        private final int f31873s;

        /* renamed from: t  reason: collision with root package name */
        private final int f31874t;

        /* renamed from: u  reason: collision with root package name */
        private final boolean f31875u;

        /* renamed from: v  reason: collision with root package name */
        private final boolean f31876v;

        public b(int i10, s0 s0Var, int i11, d dVar, int i12, boolean z10, n6.n nVar) {
            super(i10, s0Var, i11);
            int i13;
            int i14;
            boolean z11;
            boolean z12;
            boolean z13;
            int i15;
            boolean z14;
            this.f31862h = dVar;
            this.f31861g = m.Q(this.f31913d.f4505c);
            this.f31863i = m.I(i12, false);
            int i16 = 0;
            while (true) {
                i13 = Integer.MAX_VALUE;
                if (i16 < dVar.f31798n.size()) {
                    i14 = m.B(this.f31913d, (String) dVar.f31798n.get(i16), false);
                    if (i14 > 0) {
                        break;
                    }
                    i16++;
                } else {
                    i14 = 0;
                    i16 = Integer.MAX_VALUE;
                    break;
                }
            }
            this.f31865k = i16;
            this.f31864j = i14;
            this.f31866l = m.E(this.f31913d.f4507e, dVar.f31799o);
            x1 x1Var = this.f31913d;
            int i17 = x1Var.f4507e;
            if (i17 != 0 && (i17 & 1) == 0) {
                z11 = false;
            } else {
                z11 = true;
            }
            this.f31867m = z11;
            if ((x1Var.f4506d & 1) != 0) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.f31870p = z12;
            int i18 = x1Var.f4527y;
            this.f31871q = i18;
            this.f31872r = x1Var.f4528z;
            int i19 = x1Var.f4510h;
            this.f31873s = i19;
            if ((i19 == -1 || i19 <= dVar.f31801q) && ((i18 == -1 || i18 <= dVar.f31800p) && nVar.apply(x1Var))) {
                z13 = true;
            } else {
                z13 = false;
            }
            this.f31860f = z13;
            String[] g02 = q0.g0();
            int i20 = 0;
            while (true) {
                if (i20 < g02.length) {
                    i15 = m.B(this.f31913d, g02[i20], false);
                    if (i15 > 0) {
                        break;
                    }
                    i20++;
                } else {
                    i15 = 0;
                    i20 = Integer.MAX_VALUE;
                    break;
                }
            }
            this.f31868n = i20;
            this.f31869o = i15;
            int i21 = 0;
            while (true) {
                if (i21 < dVar.f31802r.size()) {
                    String str = this.f31913d.f4514l;
                    if (str != null && str.equals(dVar.f31802r.get(i21))) {
                        i13 = i21;
                        break;
                    }
                    i21++;
                } else {
                    break;
                }
            }
            this.f31874t = i13;
            if (u3.k(i12) == 128) {
                z14 = true;
            } else {
                z14 = false;
            }
            this.f31875u = z14;
            this.f31876v = u3.o(i12) == 64;
            this.f31859e = l(i12, z10);
        }

        public static int f(List list, List list2) {
            return ((b) Collections.max(list)).compareTo((b) Collections.max(list2));
        }

        public static o6.q j(int i10, s0 s0Var, d dVar, int[] iArr, boolean z10, n6.n nVar) {
            q.a r10 = o6.q.r();
            for (int i11 = 0; i11 < s0Var.f14950a; i11++) {
                r10.a(new b(i10, s0Var, i11, dVar, iArr[i11], z10, nVar));
            }
            return r10.k();
        }

        private int l(int i10, boolean z10) {
            if (!m.I(i10, this.f31862h.C0)) {
                return 0;
            }
            if (!this.f31860f && !this.f31862h.f31884w0) {
                return 0;
            }
            if (m.I(i10, false) && this.f31860f && this.f31913d.f4510h != -1) {
                d dVar = this.f31862h;
                if (!dVar.f31808x && !dVar.f31807w && (dVar.E0 || !z10)) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // w4.m.h
        public int a() {
            return this.f31859e;
        }

        @Override // java.lang.Comparable
        /* renamed from: i */
        public int compareTo(b bVar) {
            o6.h0 d10;
            o6.h0 h0Var;
            if (this.f31860f && this.f31863i) {
                d10 = m.f31850k;
            } else {
                d10 = m.f31850k.d();
            }
            o6.k f10 = o6.k.j().g(this.f31863i, bVar.f31863i).f(Integer.valueOf(this.f31865k), Integer.valueOf(bVar.f31865k), o6.h0.b().d()).d(this.f31864j, bVar.f31864j).d(this.f31866l, bVar.f31866l).g(this.f31870p, bVar.f31870p).g(this.f31867m, bVar.f31867m).f(Integer.valueOf(this.f31868n), Integer.valueOf(bVar.f31868n), o6.h0.b().d()).d(this.f31869o, bVar.f31869o).g(this.f31860f, bVar.f31860f).f(Integer.valueOf(this.f31874t), Integer.valueOf(bVar.f31874t), o6.h0.b().d());
            Integer valueOf = Integer.valueOf(this.f31873s);
            Integer valueOf2 = Integer.valueOf(bVar.f31873s);
            if (!this.f31862h.f31807w) {
                h0Var = m.f31851l;
            } else {
                h0Var = m.f31850k.d();
            }
            o6.k f11 = f10.f(valueOf, valueOf2, h0Var).g(this.f31875u, bVar.f31875u).g(this.f31876v, bVar.f31876v).f(Integer.valueOf(this.f31871q), Integer.valueOf(bVar.f31871q), d10).f(Integer.valueOf(this.f31872r), Integer.valueOf(bVar.f31872r), d10);
            Integer valueOf3 = Integer.valueOf(this.f31873s);
            Integer valueOf4 = Integer.valueOf(bVar.f31873s);
            if (!q0.c(this.f31861g, bVar.f31861g)) {
                d10 = m.f31851l;
            }
            return f11.f(valueOf3, valueOf4, d10).i();
        }

        @Override // w4.m.h
        /* renamed from: m */
        public boolean b(b bVar) {
            int i10;
            String str;
            int i11;
            d dVar = this.f31862h;
            if ((dVar.f31887z0 || ((i11 = this.f31913d.f4527y) != -1 && i11 == bVar.f31913d.f4527y)) && (dVar.f31885x0 || ((str = this.f31913d.f4514l) != null && TextUtils.equals(str, bVar.f31913d.f4514l)))) {
                d dVar2 = this.f31862h;
                if ((dVar2.f31886y0 || ((i10 = this.f31913d.f4528z) != -1 && i10 == bVar.f31913d.f4528z)) && (dVar2.A0 || (this.f31875u == bVar.f31875u && this.f31876v == bVar.f31876v))) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c implements Comparable {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f31877a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f31878b;

        public c(x1 x1Var, int i10) {
            this.f31877a = (x1Var.f4506d & 1) != 0;
            this.f31878b = m.I(i10, false);
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(c cVar) {
            return o6.k.j().g(this.f31878b, cVar.f31878b).g(this.f31877a, cVar.f31877a).i();
        }
    }

    /* loaded from: classes.dex */
    public static final class d extends f0 {
        public static final d H0;
        public static final d I0;
        private static final String J0;
        private static final String K0;
        private static final String L0;
        private static final String M0;
        private static final String N0;
        private static final String O0;
        private static final String P0;
        private static final String Q0;
        private static final String R0;
        private static final String S0;
        private static final String T0;
        private static final String U0;
        private static final String V0;
        private static final String W0;
        private static final String X0;
        private static final String Y0;
        private static final String Z0;

        /* renamed from: a1  reason: collision with root package name */
        public static final r.a f31879a1;
        public final boolean A0;
        public final boolean B0;
        public final boolean C0;
        public final boolean D0;
        public final boolean E0;
        private final SparseArray F0;
        private final SparseBooleanArray G0;

        /* renamed from: d0  reason: collision with root package name */
        public final boolean f31880d0;

        /* renamed from: e0  reason: collision with root package name */
        public final boolean f31881e0;

        /* renamed from: f0  reason: collision with root package name */
        public final boolean f31882f0;

        /* renamed from: v0  reason: collision with root package name */
        public final boolean f31883v0;

        /* renamed from: w0  reason: collision with root package name */
        public final boolean f31884w0;

        /* renamed from: x0  reason: collision with root package name */
        public final boolean f31885x0;

        /* renamed from: y0  reason: collision with root package name */
        public final boolean f31886y0;

        /* renamed from: z0  reason: collision with root package name */
        public final boolean f31887z0;

        static {
            d A = new a().A();
            H0 = A;
            I0 = A;
            J0 = q0.q0(1000);
            K0 = q0.q0(1001);
            L0 = q0.q0(1002);
            M0 = q0.q0(1003);
            N0 = q0.q0(1004);
            O0 = q0.q0(1005);
            P0 = q0.q0(1006);
            Q0 = q0.q0(1007);
            R0 = q0.q0(1008);
            S0 = q0.q0(1009);
            T0 = q0.q0(1010);
            U0 = q0.q0(1011);
            V0 = q0.q0(1012);
            W0 = q0.q0(1013);
            X0 = q0.q0(1014);
            Y0 = q0.q0(1015);
            Z0 = q0.q0(1016);
            f31879a1 = new r.a() { // from class: w4.n
                @Override // b3.r.a
                public final b3.r fromBundle(Bundle bundle) {
                    m.d M;
                    M = m.d.M(bundle);
                    return M;
                }
            };
        }

        private static boolean E(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i10)) < 0) {
                    return false;
                }
            }
            return true;
        }

        private static boolean F(SparseArray sparseArray, SparseArray sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i10));
                if (indexOfKey < 0 || !G((Map) sparseArray.valueAt(i10), (Map) sparseArray2.valueAt(indexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static boolean G(java.util.Map r4, java.util.Map r5) {
            /*
                int r0 = r4.size()
                int r1 = r5.size()
                r2 = 0
                if (r1 == r0) goto Lc
                return r2
            Lc:
                java.util.Set r4 = r4.entrySet()
                java.util.Iterator r4 = r4.iterator()
            L14:
                boolean r0 = r4.hasNext()
                if (r0 == 0) goto L3b
                java.lang.Object r0 = r4.next()
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                java.lang.Object r1 = r0.getKey()
                d4.u0 r1 = (d4.u0) r1
                boolean r3 = r5.containsKey(r1)
                if (r3 == 0) goto L3a
                java.lang.Object r0 = r0.getValue()
                java.lang.Object r1 = r5.get(r1)
                boolean r0 = y4.q0.c(r0, r1)
                if (r0 != 0) goto L14
            L3a:
                return r2
            L3b:
                r4 = 1
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: w4.m.d.G(java.util.Map, java.util.Map):boolean");
        }

        public static d I(Context context) {
            return new a(context).A();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ d M(Bundle bundle) {
            return new a(bundle).A();
        }

        public a H() {
            return new a();
        }

        public boolean J(int i10) {
            return this.G0.get(i10);
        }

        public e K(int i10, u0 u0Var) {
            Map map = (Map) this.F0.get(i10);
            if (map != null) {
                return (e) map.get(u0Var);
            }
            return null;
        }

        public boolean L(int i10, u0 u0Var) {
            Map map = (Map) this.F0.get(i10);
            if (map != null && map.containsKey(u0Var)) {
                return true;
            }
            return false;
        }

        @Override // w4.f0
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (super.equals(dVar) && this.f31880d0 == dVar.f31880d0 && this.f31881e0 == dVar.f31881e0 && this.f31882f0 == dVar.f31882f0 && this.f31883v0 == dVar.f31883v0 && this.f31884w0 == dVar.f31884w0 && this.f31885x0 == dVar.f31885x0 && this.f31886y0 == dVar.f31886y0 && this.f31887z0 == dVar.f31887z0 && this.A0 == dVar.A0 && this.B0 == dVar.B0 && this.C0 == dVar.C0 && this.D0 == dVar.D0 && this.E0 == dVar.E0 && E(this.G0, dVar.G0) && F(this.F0, dVar.F0)) {
                return true;
            }
            return false;
        }

        @Override // w4.f0
        public int hashCode() {
            return ((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.f31880d0 ? 1 : 0)) * 31) + (this.f31881e0 ? 1 : 0)) * 31) + (this.f31882f0 ? 1 : 0)) * 31) + (this.f31883v0 ? 1 : 0)) * 31) + (this.f31884w0 ? 1 : 0)) * 31) + (this.f31885x0 ? 1 : 0)) * 31) + (this.f31886y0 ? 1 : 0)) * 31) + (this.f31887z0 ? 1 : 0)) * 31) + (this.A0 ? 1 : 0)) * 31) + (this.B0 ? 1 : 0)) * 31) + (this.C0 ? 1 : 0)) * 31) + (this.D0 ? 1 : 0)) * 31) + (this.E0 ? 1 : 0);
        }

        /* loaded from: classes.dex */
        public static final class a extends f0.a {
            private boolean A;
            private boolean B;
            private boolean C;
            private boolean D;
            private boolean E;
            private boolean F;
            private boolean G;
            private boolean H;
            private boolean I;
            private boolean J;
            private boolean K;
            private boolean L;
            private boolean M;
            private final SparseArray N;
            private final SparseBooleanArray O;

            private static SparseArray Y(SparseArray sparseArray) {
                SparseArray sparseArray2 = new SparseArray();
                for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                    sparseArray2.put(sparseArray.keyAt(i10), new HashMap((Map) sparseArray.valueAt(i10)));
                }
                return sparseArray2;
            }

            private void Z() {
                this.A = true;
                this.B = false;
                this.C = true;
                this.D = false;
                this.E = true;
                this.F = false;
                this.G = false;
                this.H = false;
                this.I = false;
                this.J = true;
                this.K = true;
                this.L = false;
                this.M = true;
            }

            private SparseBooleanArray a0(int[] iArr) {
                if (iArr == null) {
                    return new SparseBooleanArray();
                }
                SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
                for (int i10 : iArr) {
                    sparseBooleanArray.append(i10, true);
                }
                return sparseBooleanArray;
            }

            private void q0(Bundle bundle) {
                o6.q b10;
                SparseArray c10;
                int[] intArray = bundle.getIntArray(d.T0);
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(d.U0);
                if (parcelableArrayList == null) {
                    b10 = o6.q.D();
                } else {
                    b10 = y4.c.b(u0.f14961f, parcelableArrayList);
                }
                SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(d.V0);
                if (sparseParcelableArray == null) {
                    c10 = new SparseArray();
                } else {
                    c10 = y4.c.c(e.f31891h, sparseParcelableArray);
                }
                if (intArray != null && intArray.length == b10.size()) {
                    for (int i10 = 0; i10 < intArray.length; i10++) {
                        p0(intArray[i10], (u0) b10.get(i10), (e) c10.get(i10));
                    }
                }
            }

            @Override // w4.f0.a
            /* renamed from: X */
            public d A() {
                return new d(this);
            }

            protected a b0(f0 f0Var) {
                super.D(f0Var);
                return this;
            }

            public a c0(boolean z10) {
                this.H = z10;
                return this;
            }

            public a d0(boolean z10) {
                this.I = z10;
                return this;
            }

            public a e0(boolean z10) {
                this.F = z10;
                return this;
            }

            public a f0(boolean z10) {
                this.G = z10;
                return this;
            }

            public a g0(boolean z10) {
                this.M = z10;
                return this;
            }

            public a h0(boolean z10) {
                this.D = z10;
                return this;
            }

            public a i0(boolean z10) {
                this.B = z10;
                return this;
            }

            public a j0(boolean z10) {
                this.C = z10;
                return this;
            }

            public a k0(boolean z10) {
                this.J = z10;
                return this;
            }

            public a l0(boolean z10) {
                this.E = z10;
                return this;
            }

            public a m0(boolean z10) {
                this.K = z10;
                return this;
            }

            public a n0(boolean z10) {
                this.A = z10;
                return this;
            }

            @Override // w4.f0.a
            /* renamed from: o0 */
            public a E(Context context) {
                super.E(context);
                return this;
            }

            public a p0(int i10, u0 u0Var, e eVar) {
                Map map = (Map) this.N.get(i10);
                if (map == null) {
                    map = new HashMap();
                    this.N.put(i10, map);
                }
                if (map.containsKey(u0Var) && q0.c(map.get(u0Var), eVar)) {
                    return this;
                }
                map.put(u0Var, eVar);
                return this;
            }

            public a r0(boolean z10) {
                this.L = z10;
                return this;
            }

            @Override // w4.f0.a
            /* renamed from: s0 */
            public a G(int i10, int i11, boolean z10) {
                super.G(i10, i11, z10);
                return this;
            }

            @Override // w4.f0.a
            /* renamed from: t0 */
            public a H(Context context, boolean z10) {
                super.H(context, z10);
                return this;
            }

            public a() {
                this.N = new SparseArray();
                this.O = new SparseBooleanArray();
                Z();
            }

            public a(Context context) {
                super(context);
                this.N = new SparseArray();
                this.O = new SparseBooleanArray();
                Z();
            }

            private a(d dVar) {
                super(dVar);
                this.A = dVar.f31880d0;
                this.B = dVar.f31881e0;
                this.C = dVar.f31882f0;
                this.D = dVar.f31883v0;
                this.E = dVar.f31884w0;
                this.F = dVar.f31885x0;
                this.G = dVar.f31886y0;
                this.H = dVar.f31887z0;
                this.I = dVar.A0;
                this.J = dVar.B0;
                this.K = dVar.C0;
                this.L = dVar.D0;
                this.M = dVar.E0;
                this.N = Y(dVar.F0);
                this.O = dVar.G0.clone();
            }

            private a(Bundle bundle) {
                super(bundle);
                Z();
                d dVar = d.H0;
                n0(bundle.getBoolean(d.J0, dVar.f31880d0));
                i0(bundle.getBoolean(d.K0, dVar.f31881e0));
                j0(bundle.getBoolean(d.L0, dVar.f31882f0));
                h0(bundle.getBoolean(d.X0, dVar.f31883v0));
                l0(bundle.getBoolean(d.M0, dVar.f31884w0));
                e0(bundle.getBoolean(d.N0, dVar.f31885x0));
                f0(bundle.getBoolean(d.O0, dVar.f31886y0));
                c0(bundle.getBoolean(d.P0, dVar.f31887z0));
                d0(bundle.getBoolean(d.Y0, dVar.A0));
                k0(bundle.getBoolean(d.Z0, dVar.B0));
                m0(bundle.getBoolean(d.Q0, dVar.C0));
                r0(bundle.getBoolean(d.R0, dVar.D0));
                g0(bundle.getBoolean(d.S0, dVar.E0));
                this.N = new SparseArray();
                q0(bundle);
                this.O = a0(bundle.getIntArray(d.W0));
            }
        }

        private d(a aVar) {
            super(aVar);
            this.f31880d0 = aVar.A;
            this.f31881e0 = aVar.B;
            this.f31882f0 = aVar.C;
            this.f31883v0 = aVar.D;
            this.f31884w0 = aVar.E;
            this.f31885x0 = aVar.F;
            this.f31886y0 = aVar.G;
            this.f31887z0 = aVar.H;
            this.A0 = aVar.I;
            this.B0 = aVar.J;
            this.C0 = aVar.K;
            this.D0 = aVar.L;
            this.E0 = aVar.M;
            this.F0 = aVar.N;
            this.G0 = aVar.O;
        }
    }

    /* loaded from: classes.dex */
    public static final class e implements b3.r {

        /* renamed from: e  reason: collision with root package name */
        private static final String f31888e = q0.q0(0);

        /* renamed from: f  reason: collision with root package name */
        private static final String f31889f = q0.q0(1);

        /* renamed from: g  reason: collision with root package name */
        private static final String f31890g = q0.q0(2);

        /* renamed from: h  reason: collision with root package name */
        public static final r.a f31891h = new r.a() { // from class: w4.o
            @Override // b3.r.a
            public final b3.r fromBundle(Bundle bundle) {
                m.e b10;
                b10 = m.e.b(bundle);
                return b10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final int f31892a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f31893b;

        /* renamed from: c  reason: collision with root package name */
        public final int f31894c;

        /* renamed from: d  reason: collision with root package name */
        public final int f31895d;

        public e(int i10, int[] iArr, int i11) {
            this.f31892a = i10;
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f31893b = copyOf;
            this.f31894c = iArr.length;
            this.f31895d = i11;
            Arrays.sort(copyOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ e b(Bundle bundle) {
            boolean z10;
            int i10 = bundle.getInt(f31888e, -1);
            int[] intArray = bundle.getIntArray(f31889f);
            int i11 = bundle.getInt(f31890g, -1);
            if (i10 >= 0 && i11 >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.a(z10);
            y4.a.e(intArray);
            return new e(i10, intArray, i11);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            if (this.f31892a == eVar.f31892a && Arrays.equals(this.f31893b, eVar.f31893b) && this.f31895d == eVar.f31895d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f31892a * 31) + Arrays.hashCode(this.f31893b)) * 31) + this.f31895d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        private final Spatializer f31896a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f31897b;

        /* renamed from: c  reason: collision with root package name */
        private Handler f31898c;

        /* renamed from: d  reason: collision with root package name */
        private Spatializer$OnSpatializerStateChangedListener f31899d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a implements Spatializer$OnSpatializerStateChangedListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ m f31900a;

            a(f fVar, m mVar) {
                this.f31900a = mVar;
            }

            public void onSpatializerAvailableChanged(Spatializer spatializer, boolean z10) {
                this.f31900a.P();
            }

            public void onSpatializerEnabledChanged(Spatializer spatializer, boolean z10) {
                this.f31900a.P();
            }
        }

        private f(Spatializer spatializer) {
            int immersiveAudioLevel;
            boolean z10;
            this.f31896a = spatializer;
            immersiveAudioLevel = spatializer.getImmersiveAudioLevel();
            if (immersiveAudioLevel != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f31897b = z10;
        }

        public static f g(Context context) {
            Spatializer spatializer;
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager != null) {
                spatializer = audioManager.getSpatializer();
                return new f(spatializer);
            }
            return null;
        }

        public boolean a(d3.e eVar, x1 x1Var) {
            int i10;
            boolean canBeSpatialized;
            if ("audio/eac3-joc".equals(x1Var.f4514l) && x1Var.f4527y == 16) {
                i10 = 12;
            } else {
                i10 = x1Var.f4527y;
            }
            AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(q0.G(i10));
            int i11 = x1Var.f4528z;
            if (i11 != -1) {
                channelMask.setSampleRate(i11);
            }
            canBeSpatialized = this.f31896a.canBeSpatialized(eVar.b().f14460a, channelMask.build());
            return canBeSpatialized;
        }

        public void b(m mVar, Looper looper) {
            if (this.f31899d == null && this.f31898c == null) {
                this.f31899d = new a(this, mVar);
                Handler handler = new Handler(looper);
                this.f31898c = handler;
                Spatializer spatializer = this.f31896a;
                Objects.requireNonNull(handler);
                spatializer.addOnSpatializerStateChangedListener(new o0(handler), this.f31899d);
            }
        }

        public boolean c() {
            boolean isAvailable;
            isAvailable = this.f31896a.isAvailable();
            return isAvailable;
        }

        public boolean d() {
            boolean isEnabled;
            isEnabled = this.f31896a.isEnabled();
            return isEnabled;
        }

        public boolean e() {
            return this.f31897b;
        }

        public void f() {
            Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener = this.f31899d;
            if (spatializer$OnSpatializerStateChangedListener != null && this.f31898c != null) {
                this.f31896a.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
                ((Handler) q0.j(this.f31898c)).removeCallbacksAndMessages(null);
                this.f31898c = null;
                this.f31899d = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class g extends h implements Comparable {

        /* renamed from: e  reason: collision with root package name */
        private final int f31901e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f31902f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f31903g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f31904h;

        /* renamed from: i  reason: collision with root package name */
        private final int f31905i;

        /* renamed from: j  reason: collision with root package name */
        private final int f31906j;

        /* renamed from: k  reason: collision with root package name */
        private final int f31907k;

        /* renamed from: l  reason: collision with root package name */
        private final int f31908l;

        /* renamed from: m  reason: collision with root package name */
        private final boolean f31909m;

        public g(int i10, s0 s0Var, int i11, d dVar, int i12, String str) {
            super(i10, s0Var, i11);
            boolean z10;
            boolean z11;
            o6.q qVar;
            int i13;
            boolean z12;
            boolean z13;
            boolean z14;
            int i14 = 0;
            this.f31902f = m.I(i12, false);
            int i15 = this.f31913d.f4506d & (~dVar.f31805u);
            if ((i15 & 1) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f31903g = z10;
            if ((i15 & 2) != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.f31904h = z11;
            if (dVar.f31803s.isEmpty()) {
                qVar = o6.q.F("");
            } else {
                qVar = dVar.f31803s;
            }
            int i16 = 0;
            while (true) {
                if (i16 < qVar.size()) {
                    i13 = m.B(this.f31913d, (String) qVar.get(i16), dVar.f31806v);
                    if (i13 > 0) {
                        break;
                    }
                    i16++;
                } else {
                    i16 = Integer.MAX_VALUE;
                    i13 = 0;
                    break;
                }
            }
            this.f31905i = i16;
            this.f31906j = i13;
            int E = m.E(this.f31913d.f4507e, dVar.f31804t);
            this.f31907k = E;
            if ((this.f31913d.f4507e & 1088) != 0) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.f31909m = z12;
            if (m.Q(str) == null) {
                z13 = true;
            } else {
                z13 = false;
            }
            int B = m.B(this.f31913d, str, z13);
            this.f31908l = B;
            if (i13 <= 0 && ((!dVar.f31803s.isEmpty() || E <= 0) && !this.f31903g && (!this.f31904h || B <= 0))) {
                z14 = false;
            } else {
                z14 = true;
            }
            if (m.I(i12, dVar.C0) && z14) {
                i14 = 1;
            }
            this.f31901e = i14;
        }

        public static int f(List list, List list2) {
            return ((g) list.get(0)).compareTo((g) list2.get(0));
        }

        public static o6.q j(int i10, s0 s0Var, d dVar, int[] iArr, String str) {
            q.a r10 = o6.q.r();
            for (int i11 = 0; i11 < s0Var.f14950a; i11++) {
                r10.a(new g(i10, s0Var, i11, dVar, iArr[i11], str));
            }
            return r10.k();
        }

        @Override // w4.m.h
        public int a() {
            return this.f31901e;
        }

        @Override // java.lang.Comparable
        /* renamed from: i */
        public int compareTo(g gVar) {
            o6.h0 d10;
            o6.k g10 = o6.k.j().g(this.f31902f, gVar.f31902f).f(Integer.valueOf(this.f31905i), Integer.valueOf(gVar.f31905i), o6.h0.b().d()).d(this.f31906j, gVar.f31906j).d(this.f31907k, gVar.f31907k).g(this.f31903g, gVar.f31903g);
            Boolean valueOf = Boolean.valueOf(this.f31904h);
            Boolean valueOf2 = Boolean.valueOf(gVar.f31904h);
            if (this.f31906j == 0) {
                d10 = o6.h0.b();
            } else {
                d10 = o6.h0.b().d();
            }
            o6.k d11 = g10.f(valueOf, valueOf2, d10).d(this.f31908l, gVar.f31908l);
            if (this.f31907k == 0) {
                d11 = d11.h(this.f31909m, gVar.f31909m);
            }
            return d11.i();
        }

        @Override // w4.m.h
        /* renamed from: l */
        public boolean b(g gVar) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class h {

        /* renamed from: a  reason: collision with root package name */
        public final int f31910a;

        /* renamed from: b  reason: collision with root package name */
        public final s0 f31911b;

        /* renamed from: c  reason: collision with root package name */
        public final int f31912c;

        /* renamed from: d  reason: collision with root package name */
        public final x1 f31913d;

        /* loaded from: classes.dex */
        public interface a {
            List a(int i10, s0 s0Var, int[] iArr);
        }

        public h(int i10, s0 s0Var, int i11) {
            this.f31910a = i10;
            this.f31911b = s0Var;
            this.f31912c = i11;
            this.f31913d = s0Var.b(i11);
        }

        public abstract int a();

        public abstract boolean b(h hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class i extends h {

        /* renamed from: e  reason: collision with root package name */
        private final boolean f31914e;

        /* renamed from: f  reason: collision with root package name */
        private final d f31915f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f31916g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f31917h;

        /* renamed from: i  reason: collision with root package name */
        private final int f31918i;

        /* renamed from: j  reason: collision with root package name */
        private final int f31919j;

        /* renamed from: k  reason: collision with root package name */
        private final int f31920k;

        /* renamed from: l  reason: collision with root package name */
        private final int f31921l;

        /* renamed from: m  reason: collision with root package name */
        private final boolean f31922m;

        /* renamed from: n  reason: collision with root package name */
        private final boolean f31923n;

        /* renamed from: o  reason: collision with root package name */
        private final int f31924o;

        /* renamed from: p  reason: collision with root package name */
        private final boolean f31925p;

        /* renamed from: q  reason: collision with root package name */
        private final boolean f31926q;

        /* renamed from: r  reason: collision with root package name */
        private final int f31927r;

        /* JADX WARN: Removed duplicated region for block: B:54:0x00a0  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00b2  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x00d7  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x00e3  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x00c8 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public i(int r5, d4.s0 r6, int r7, w4.m.d r8, int r9, int r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 247
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: w4.m.i.<init>(int, d4.s0, int, w4.m$d, int, int, boolean):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int j(i iVar, i iVar2) {
            o6.k g10 = o6.k.j().g(iVar.f31917h, iVar2.f31917h).d(iVar.f31921l, iVar2.f31921l).g(iVar.f31922m, iVar2.f31922m).g(iVar.f31914e, iVar2.f31914e).g(iVar.f31916g, iVar2.f31916g).f(Integer.valueOf(iVar.f31920k), Integer.valueOf(iVar2.f31920k), o6.h0.b().d()).g(iVar.f31925p, iVar2.f31925p).g(iVar.f31926q, iVar2.f31926q);
            if (iVar.f31925p && iVar.f31926q) {
                g10 = g10.d(iVar.f31927r, iVar2.f31927r);
            }
            return g10.i();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int l(i iVar, i iVar2) {
            o6.h0 d10;
            o6.h0 h0Var;
            if (iVar.f31914e && iVar.f31917h) {
                d10 = m.f31850k;
            } else {
                d10 = m.f31850k.d();
            }
            o6.k j10 = o6.k.j();
            Integer valueOf = Integer.valueOf(iVar.f31918i);
            Integer valueOf2 = Integer.valueOf(iVar2.f31918i);
            if (!iVar.f31915f.f31807w) {
                h0Var = m.f31851l;
            } else {
                h0Var = m.f31850k.d();
            }
            return j10.f(valueOf, valueOf2, h0Var).f(Integer.valueOf(iVar.f31919j), Integer.valueOf(iVar2.f31919j), d10).f(Integer.valueOf(iVar.f31918i), Integer.valueOf(iVar2.f31918i), d10).i();
        }

        public static int m(List list, List list2) {
            return o6.k.j().f((i) Collections.max(list, new Comparator() { // from class: w4.w
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int j10;
                    j10 = m.i.j((m.i) obj, (m.i) obj2);
                    return j10;
                }
            }), (i) Collections.max(list2, new Comparator() { // from class: w4.w
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int j10;
                    j10 = m.i.j((m.i) obj, (m.i) obj2);
                    return j10;
                }
            }), new Comparator() { // from class: w4.w
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int j10;
                    j10 = m.i.j((m.i) obj, (m.i) obj2);
                    return j10;
                }
            }).d(list.size(), list2.size()).f((i) Collections.max(list, new Comparator() { // from class: w4.x
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int l10;
                    l10 = m.i.l((m.i) obj, (m.i) obj2);
                    return l10;
                }
            }), (i) Collections.max(list2, new Comparator() { // from class: w4.x
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int l10;
                    l10 = m.i.l((m.i) obj, (m.i) obj2);
                    return l10;
                }
            }), new Comparator() { // from class: w4.x
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int l10;
                    l10 = m.i.l((m.i) obj, (m.i) obj2);
                    return l10;
                }
            }).i();
        }

        public static o6.q n(int i10, s0 s0Var, d dVar, int[] iArr, int i11) {
            boolean z10;
            int C = m.C(s0Var, dVar.f31793i, dVar.f31794j, dVar.f31795k);
            q.a r10 = o6.q.r();
            for (int i12 = 0; i12 < s0Var.f14950a; i12++) {
                int f10 = s0Var.b(i12).f();
                if (C != Integer.MAX_VALUE && (f10 == -1 || f10 > C)) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                r10.a(new i(i10, s0Var, i12, dVar, iArr[i12], i11, z10));
            }
            return r10.k();
        }

        private int o(int i10, int i11) {
            if ((this.f31913d.f4507e & 16384) != 0 || !m.I(i10, this.f31915f.C0)) {
                return 0;
            }
            if (!this.f31914e && !this.f31915f.f31880d0) {
                return 0;
            }
            if (m.I(i10, false) && this.f31916g && this.f31914e && this.f31913d.f4510h != -1) {
                d dVar = this.f31915f;
                if (!dVar.f31808x && !dVar.f31807w && (i10 & i11) != 0) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // w4.m.h
        public int a() {
            return this.f31924o;
        }

        @Override // w4.m.h
        /* renamed from: p */
        public boolean b(i iVar) {
            if ((!this.f31923n && !q0.c(this.f31913d.f4514l, iVar.f31913d.f4514l)) || (!this.f31915f.f31883v0 && (this.f31925p != iVar.f31925p || this.f31926q != iVar.f31926q))) {
                return false;
            }
            return true;
        }
    }

    public m(Context context) {
        this(context, new a.b());
    }

    private static void A(u0 u0Var, f0 f0Var, Map map) {
        d0 d0Var;
        for (int i10 = 0; i10 < u0Var.f14962a; i10++) {
            d0 d0Var2 = (d0) f0Var.f31809y.get(u0Var.b(i10));
            if (d0Var2 != null && ((d0Var = (d0) map.get(Integer.valueOf(d0Var2.b()))) == null || (d0Var.f31781b.isEmpty() && !d0Var2.f31781b.isEmpty()))) {
                map.put(Integer.valueOf(d0Var2.b()), d0Var2);
            }
        }
    }

    protected static int B(x1 x1Var, String str, boolean z10) {
        if (!TextUtils.isEmpty(str) && str.equals(x1Var.f4505c)) {
            return 4;
        }
        String Q = Q(str);
        String Q2 = Q(x1Var.f4505c);
        if (Q2 != null && Q != null) {
            if (!Q2.startsWith(Q) && !Q.startsWith(Q2)) {
                if (!q0.Q0(Q2, "-")[0].equals(q0.Q0(Q, "-")[0])) {
                    return 0;
                }
                return 2;
            }
            return 3;
        } else if (!z10 || Q2 != null) {
            return 0;
        } else {
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int C(s0 s0Var, int i10, int i11, boolean z10) {
        int i12;
        int i13 = Integer.MAX_VALUE;
        if (i10 != Integer.MAX_VALUE && i11 != Integer.MAX_VALUE) {
            for (int i14 = 0; i14 < s0Var.f14950a; i14++) {
                x1 b10 = s0Var.b(i14);
                int i15 = b10.f4519q;
                if (i15 > 0 && (i12 = b10.f4520r) > 0) {
                    Point D = D(z10, i10, i11, i15, i12);
                    int i16 = b10.f4519q;
                    int i17 = b10.f4520r;
                    int i18 = i16 * i17;
                    if (i16 >= ((int) (D.x * 0.98f)) && i17 >= ((int) (D.y * 0.98f)) && i18 < i13) {
                        i13 = i18;
                    }
                }
            }
        }
        return i13;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x000d, code lost:
        if (r1 != r3) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Point D(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto L10
            r3 = 1
            r0 = 0
            if (r6 <= r7) goto L8
            r1 = r3
            goto L9
        L8:
            r1 = r0
        L9:
            if (r4 <= r5) goto Lc
            goto Ld
        Lc:
            r3 = r0
        Ld:
            if (r1 == r3) goto L10
            goto L13
        L10:
            r2 = r5
            r5 = r4
            r4 = r2
        L13:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L23
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = y4.q0.l(r0, r6)
            r3.<init>(r5, r4)
            return r3
        L23:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = y4.q0.l(r3, r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: w4.m.D(boolean, int, int, int, int):android.graphics.Point");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int E(int i10, int i11) {
        if (i10 != 0 && i10 == i11) {
            return Integer.MAX_VALUE;
        }
        return Integer.bitCount(i10 & i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int F(String str) {
        if (str == null) {
            return 0;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1851077871:
                if (str.equals("video/dolby-vision")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1662735862:
                if (str.equals("video/av01")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 5;
            case 1:
                return 4;
            case 2:
                return 3;
            case 3:
                return 1;
            case 4:
                return 2;
            default:
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean G(x1 x1Var) {
        boolean z10;
        f fVar;
        f fVar2;
        synchronized (this.f31852d) {
            if (this.f31856h.B0 && !this.f31855g && x1Var.f4527y > 2 && ((!H(x1Var) || (q0.f32946a >= 32 && (fVar2 = this.f31857i) != null && fVar2.e())) && (q0.f32946a < 32 || (fVar = this.f31857i) == null || !fVar.e() || !this.f31857i.c() || !this.f31857i.d() || !this.f31857i.a(this.f31858j, x1Var)))) {
                z10 = false;
            }
            z10 = true;
        }
        return z10;
    }

    private static boolean H(x1 x1Var) {
        String str = x1Var.f4514l;
        if (str == null) {
            return false;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c10 = 0;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c10 = 1;
                    break;
                }
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    protected static boolean I(int i10, boolean z10) {
        int F = u3.F(i10);
        if (F != 4 && (!z10 || F != 3)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List J(d dVar, boolean z10, int i10, s0 s0Var, int[] iArr) {
        return b.j(i10, s0Var, dVar, iArr, z10, new n6.n() { // from class: w4.l
            @Override // n6.n
            public final boolean apply(Object obj) {
                boolean G;
                G = m.this.G((x1) obj);
                return G;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List K(d dVar, String str, int i10, s0 s0Var, int[] iArr) {
        return g.j(i10, s0Var, dVar, iArr, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List L(d dVar, int[] iArr, int i10, s0 s0Var, int[] iArr2) {
        return i.n(i10, s0Var, dVar, iArr2, iArr[i10]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int M(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            if (num2.intValue() != -1) {
                return -1;
            }
            return 0;
        } else if (num2.intValue() == -1) {
            return 1;
        } else {
            return num.intValue() - num2.intValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int N(Integer num, Integer num2) {
        return 0;
    }

    private static void O(a0.a aVar, int[][][] iArr, v3[] v3VarArr, y[] yVarArr) {
        boolean z10;
        boolean z11 = false;
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < aVar.d(); i12++) {
            int e10 = aVar.e(i12);
            y yVar = yVarArr[i12];
            if ((e10 == 1 || e10 == 2) && yVar != null && R(iArr[i12], aVar.f(i12), yVar)) {
                if (e10 == 1) {
                    if (i11 == -1) {
                        i11 = i12;
                    } else {
                        z10 = false;
                        break;
                    }
                } else if (i10 != -1) {
                    z10 = false;
                    break;
                } else {
                    i10 = i12;
                }
            }
        }
        z10 = true;
        if (i11 != -1 && i10 != -1) {
            z11 = true;
        }
        if (z10 & z11) {
            v3 v3Var = new v3(true);
            v3VarArr[i11] = v3Var;
            v3VarArr[i10] = v3Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        boolean z10;
        f fVar;
        synchronized (this.f31852d) {
            if (this.f31856h.B0 && !this.f31855g && q0.f32946a >= 32 && (fVar = this.f31857i) != null && fVar.e()) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (z10) {
            c();
        }
    }

    protected static String Q(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    private static boolean R(int[][] iArr, u0 u0Var, y yVar) {
        if (yVar == null) {
            return false;
        }
        int c10 = u0Var.c(yVar.a());
        for (int i10 = 0; i10 < yVar.length(); i10++) {
            if (u3.p(iArr[c10][yVar.j(i10)]) != 32) {
                return false;
            }
        }
        return true;
    }

    private Pair W(int i10, a0.a aVar, int[][][] iArr, h.a aVar2, Comparator comparator) {
        int i11;
        RandomAccess randomAccess;
        a0.a aVar3 = aVar;
        ArrayList arrayList = new ArrayList();
        int d10 = aVar.d();
        int i12 = 0;
        while (i12 < d10) {
            if (i10 == aVar3.e(i12)) {
                u0 f10 = aVar3.f(i12);
                for (int i13 = 0; i13 < f10.f14962a; i13++) {
                    s0 b10 = f10.b(i13);
                    List a10 = aVar2.a(i12, b10, iArr[i12][i13]);
                    boolean[] zArr = new boolean[b10.f14950a];
                    int i14 = 0;
                    while (i14 < b10.f14950a) {
                        h hVar = (h) a10.get(i14);
                        int a11 = hVar.a();
                        if (!zArr[i14] && a11 != 0) {
                            if (a11 == 1) {
                                randomAccess = o6.q.F(hVar);
                                i11 = d10;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(hVar);
                                int i15 = i14 + 1;
                                while (i15 < b10.f14950a) {
                                    h hVar2 = (h) a10.get(i15);
                                    int i16 = d10;
                                    if (hVar2.a() == 2 && hVar.b(hVar2)) {
                                        arrayList2.add(hVar2);
                                        zArr[i15] = true;
                                    }
                                    i15++;
                                    d10 = i16;
                                }
                                i11 = d10;
                                randomAccess = arrayList2;
                            }
                            arrayList.add(randomAccess);
                        } else {
                            i11 = d10;
                        }
                        i14++;
                        d10 = i11;
                    }
                }
            }
            i12++;
            aVar3 = aVar;
            d10 = d10;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i17 = 0; i17 < list.size(); i17++) {
            iArr2[i17] = ((h) list.get(i17)).f31912c;
        }
        h hVar3 = (h) list.get(0);
        return Pair.create(new y.a(hVar3.f31911b, iArr2), Integer.valueOf(hVar3.f31910a));
    }

    private static void y(a0.a aVar, d dVar, y.a[] aVarArr) {
        y.a aVar2;
        int d10 = aVar.d();
        for (int i10 = 0; i10 < d10; i10++) {
            u0 f10 = aVar.f(i10);
            if (dVar.L(i10, f10)) {
                e K = dVar.K(i10, f10);
                if (K != null && K.f31893b.length != 0) {
                    aVar2 = new y.a(f10.b(K.f31892a), K.f31893b, K.f31895d);
                } else {
                    aVar2 = null;
                }
                aVarArr[i10] = aVar2;
            }
        }
    }

    private static void z(a0.a aVar, f0 f0Var, y.a[] aVarArr) {
        y.a aVar2;
        int d10 = aVar.d();
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < d10; i10++) {
            A(aVar.f(i10), f0Var, hashMap);
        }
        A(aVar.h(), f0Var, hashMap);
        for (int i11 = 0; i11 < d10; i11++) {
            d0 d0Var = (d0) hashMap.get(Integer.valueOf(aVar.e(i11)));
            if (d0Var != null) {
                if (!d0Var.f31781b.isEmpty() && aVar.f(i11).c(d0Var.f31780a) != -1) {
                    aVar2 = new y.a(d0Var.f31780a, q6.e.k(d0Var.f31781b));
                } else {
                    aVar2 = null;
                }
                aVarArr[i11] = aVar2;
            }
        }
    }

    protected y.a[] S(a0.a aVar, int[][][] iArr, int[] iArr2, d dVar) {
        String str;
        int d10 = aVar.d();
        y.a[] aVarArr = new y.a[d10];
        Pair X = X(aVar, iArr, iArr2, dVar);
        if (X != null) {
            aVarArr[((Integer) X.second).intValue()] = (y.a) X.first;
        }
        Pair T = T(aVar, iArr, iArr2, dVar);
        if (T != null) {
            aVarArr[((Integer) T.second).intValue()] = (y.a) T.first;
        }
        if (T == null) {
            str = null;
        } else {
            Object obj = T.first;
            str = ((y.a) obj).f31928a.b(((y.a) obj).f31929b[0]).f4505c;
        }
        Pair V = V(aVar, iArr, dVar, str);
        if (V != null) {
            aVarArr[((Integer) V.second).intValue()] = (y.a) V.first;
        }
        for (int i10 = 0; i10 < d10; i10++) {
            int e10 = aVar.e(i10);
            if (e10 != 2 && e10 != 1 && e10 != 3) {
                aVarArr[i10] = U(e10, aVar.f(i10), iArr[i10], dVar);
            }
        }
        return aVarArr;
    }

    protected Pair T(a0.a aVar, int[][][] iArr, int[] iArr2, final d dVar) {
        final boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 < aVar.d()) {
                if (2 == aVar.e(i10) && aVar.f(i10).f14962a > 0) {
                    z10 = true;
                    break;
                }
                i10++;
            } else {
                break;
            }
        }
        return W(1, aVar, iArr, new h.a() { // from class: w4.j
            @Override // w4.m.h.a
            public final List a(int i11, s0 s0Var, int[] iArr3) {
                List J;
                J = m.this.J(dVar, z10, i11, s0Var, iArr3);
                return J;
            }
        }, new Comparator() { // from class: w4.k
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.b.f((List) obj, (List) obj2);
            }
        });
    }

    protected y.a U(int i10, u0 u0Var, int[][] iArr, d dVar) {
        s0 s0Var = null;
        c cVar = null;
        int i11 = 0;
        for (int i12 = 0; i12 < u0Var.f14962a; i12++) {
            s0 b10 = u0Var.b(i12);
            int[] iArr2 = iArr[i12];
            for (int i13 = 0; i13 < b10.f14950a; i13++) {
                if (I(iArr2[i13], dVar.C0)) {
                    c cVar2 = new c(b10.b(i13), iArr2[i13]);
                    if (cVar == null || cVar2.compareTo(cVar) > 0) {
                        s0Var = b10;
                        i11 = i13;
                        cVar = cVar2;
                    }
                }
            }
        }
        if (s0Var == null) {
            return null;
        }
        return new y.a(s0Var, i11);
    }

    protected Pair V(a0.a aVar, int[][][] iArr, final d dVar, final String str) {
        return W(3, aVar, iArr, new h.a() { // from class: w4.d
            @Override // w4.m.h.a
            public final List a(int i10, s0 s0Var, int[] iArr2) {
                List K;
                K = m.K(m.d.this, str, i10, s0Var, iArr2);
                return K;
            }
        }, new Comparator() { // from class: w4.e
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.g.f((List) obj, (List) obj2);
            }
        });
    }

    protected Pair X(a0.a aVar, int[][][] iArr, final int[] iArr2, final d dVar) {
        return W(2, aVar, iArr, new h.a() { // from class: w4.h
            @Override // w4.m.h.a
            public final List a(int i10, s0 s0Var, int[] iArr3) {
                List L;
                L = m.L(m.d.this, iArr2, i10, s0Var, iArr3);
                return L;
            }
        }, new Comparator() { // from class: w4.i
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.i.m((List) obj, (List) obj2);
            }
        });
    }

    @Override // w4.h0
    public boolean d() {
        return true;
    }

    @Override // w4.h0
    public void f() {
        f fVar;
        synchronized (this.f31852d) {
            if (q0.f32946a >= 32 && (fVar = this.f31857i) != null) {
                fVar.f();
            }
        }
        super.f();
    }

    @Override // w4.h0
    public void h(d3.e eVar) {
        boolean z10;
        synchronized (this.f31852d) {
            if (!this.f31858j.equals(eVar)) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f31858j = eVar;
        }
        if (z10) {
            P();
        }
    }

    @Override // w4.a0
    protected final Pair l(a0.a aVar, int[][][] iArr, int[] iArr2, t.b bVar, g4 g4Var) {
        d dVar;
        boolean z10;
        v3 v3Var;
        f fVar;
        synchronized (this.f31852d) {
            dVar = this.f31856h;
            if (dVar.B0 && q0.f32946a >= 32 && (fVar = this.f31857i) != null) {
                fVar.b(this, (Looper) y4.a.h(Looper.myLooper()));
            }
        }
        int d10 = aVar.d();
        y.a[] S = S(aVar, iArr, iArr2, dVar);
        z(aVar, dVar, S);
        y(aVar, dVar, S);
        for (int i10 = 0; i10 < d10; i10++) {
            int e10 = aVar.e(i10);
            if (dVar.J(i10) || dVar.f31810z.contains(Integer.valueOf(e10))) {
                S[i10] = null;
            }
        }
        y[] a10 = this.f31854f.a(S, a(), bVar, g4Var);
        v3[] v3VarArr = new v3[d10];
        for (int i11 = 0; i11 < d10; i11++) {
            int e11 = aVar.e(i11);
            boolean z11 = true;
            if (!dVar.J(i11) && !dVar.f31810z.contains(Integer.valueOf(e11))) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (z10 || (aVar.e(i11) != -2 && a10[i11] == null)) {
                z11 = false;
            }
            if (z11) {
                v3Var = v3.f4474b;
            } else {
                v3Var = null;
            }
            v3VarArr[i11] = v3Var;
        }
        if (dVar.D0) {
            O(aVar, iArr, v3VarArr, a10);
        }
        return Pair.create(v3VarArr, a10);
    }

    public m(Context context, y.b bVar) {
        this(context, d.I(context), bVar);
    }

    public m(Context context, f0 f0Var, y.b bVar) {
        this(f0Var, bVar, context);
    }

    private m(f0 f0Var, y.b bVar, Context context) {
        this.f31852d = new Object();
        this.f31853e = context != null ? context.getApplicationContext() : null;
        this.f31854f = bVar;
        if (f0Var instanceof d) {
            this.f31856h = (d) f0Var;
        } else {
            this.f31856h = (context == null ? d.H0 : d.I(context)).H().b0(f0Var).A();
        }
        this.f31858j = d3.e.f14447g;
        boolean z10 = context != null && q0.w0(context);
        this.f31855g = z10;
        if (!z10 && context != null && q0.f32946a >= 32) {
            this.f31857i = f.g(context);
        }
        if (this.f31856h.B0 && context == null) {
            y4.r.i("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }
}
