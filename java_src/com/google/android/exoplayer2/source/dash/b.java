package com.google.android.exoplayer2.source.dash;

import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseIntArray;
import b3.x1;
import b3.x3;
import c3.t3;
import com.google.android.exoplayer2.source.dash.a;
import com.google.android.exoplayer2.source.dash.e;
import d4.a0;
import d4.h;
import d4.k;
import d4.n0;
import d4.r;
import d4.s0;
import d4.u0;
import f3.u;
import f3.v;
import f4.i;
import h4.f;
import h4.g;
import h4.j;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import w4.y;
import x4.d0;
import x4.f0;
import x4.m0;
import y4.q0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b implements r, n0.a, i.b {

    /* renamed from: y  reason: collision with root package name */
    private static final Pattern f5617y = Pattern.compile("CC([1-4])=(.+)");

    /* renamed from: z  reason: collision with root package name */
    private static final Pattern f5618z = Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");

    /* renamed from: a  reason: collision with root package name */
    final int f5619a;

    /* renamed from: b  reason: collision with root package name */
    private final a.InterfaceC0094a f5620b;

    /* renamed from: c  reason: collision with root package name */
    private final m0 f5621c;

    /* renamed from: d  reason: collision with root package name */
    private final v f5622d;

    /* renamed from: e  reason: collision with root package name */
    private final d0 f5623e;

    /* renamed from: f  reason: collision with root package name */
    private final g4.b f5624f;

    /* renamed from: g  reason: collision with root package name */
    private final long f5625g;

    /* renamed from: h  reason: collision with root package name */
    private final f0 f5626h;

    /* renamed from: i  reason: collision with root package name */
    private final x4.b f5627i;

    /* renamed from: j  reason: collision with root package name */
    private final u0 f5628j;

    /* renamed from: k  reason: collision with root package name */
    private final a[] f5629k;

    /* renamed from: l  reason: collision with root package name */
    private final h f5630l;

    /* renamed from: m  reason: collision with root package name */
    private final e f5631m;

    /* renamed from: o  reason: collision with root package name */
    private final a0.a f5633o;

    /* renamed from: p  reason: collision with root package name */
    private final u.a f5634p;

    /* renamed from: q  reason: collision with root package name */
    private final t3 f5635q;

    /* renamed from: r  reason: collision with root package name */
    private r.a f5636r;

    /* renamed from: u  reason: collision with root package name */
    private n0 f5639u;

    /* renamed from: v  reason: collision with root package name */
    private h4.c f5640v;

    /* renamed from: w  reason: collision with root package name */
    private int f5641w;

    /* renamed from: x  reason: collision with root package name */
    private List f5642x;

    /* renamed from: s  reason: collision with root package name */
    private i[] f5637s = E(0);

    /* renamed from: t  reason: collision with root package name */
    private d[] f5638t = new d[0];

    /* renamed from: n  reason: collision with root package name */
    private final IdentityHashMap f5632n = new IdentityHashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int[] f5643a;

        /* renamed from: b  reason: collision with root package name */
        public final int f5644b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5645c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5646d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5647e;

        /* renamed from: f  reason: collision with root package name */
        public final int f5648f;

        /* renamed from: g  reason: collision with root package name */
        public final int f5649g;

        private a(int i10, int i11, int[] iArr, int i12, int i13, int i14, int i15) {
            this.f5644b = i10;
            this.f5643a = iArr;
            this.f5645c = i11;
            this.f5647e = i12;
            this.f5648f = i13;
            this.f5649g = i14;
            this.f5646d = i15;
        }

        public static a a(int[] iArr, int i10) {
            return new a(3, 1, iArr, i10, -1, -1, -1);
        }

        public static a b(int[] iArr, int i10) {
            return new a(5, 1, iArr, i10, -1, -1, -1);
        }

        public static a c(int i10) {
            return new a(5, 2, new int[0], -1, -1, -1, i10);
        }

        public static a d(int i10, int[] iArr, int i11, int i12, int i13) {
            return new a(i10, 0, iArr, i11, i12, i13, -1);
        }
    }

    public b(int i10, h4.c cVar, g4.b bVar, int i11, a.InterfaceC0094a interfaceC0094a, m0 m0Var, v vVar, u.a aVar, d0 d0Var, a0.a aVar2, long j10, f0 f0Var, x4.b bVar2, h hVar, e.b bVar3, t3 t3Var) {
        this.f5619a = i10;
        this.f5640v = cVar;
        this.f5624f = bVar;
        this.f5641w = i11;
        this.f5620b = interfaceC0094a;
        this.f5621c = m0Var;
        this.f5622d = vVar;
        this.f5634p = aVar;
        this.f5623e = d0Var;
        this.f5633o = aVar2;
        this.f5625g = j10;
        this.f5626h = f0Var;
        this.f5627i = bVar2;
        this.f5630l = hVar;
        this.f5635q = t3Var;
        this.f5631m = new e(cVar, bVar3, bVar2);
        this.f5639u = hVar.a(this.f5637s);
        g d10 = cVar.d(i11);
        List list = d10.f16798d;
        this.f5642x = list;
        Pair u10 = u(vVar, d10.f16797c, list);
        this.f5628j = (u0) u10.first;
        this.f5629k = (a[]) u10.second;
    }

    private int A(int i10, int[] iArr) {
        int i11 = iArr[i10];
        if (i11 == -1) {
            return -1;
        }
        int i12 = this.f5629k[i11].f5647e;
        for (int i13 = 0; i13 < iArr.length; i13++) {
            int i14 = iArr[i13];
            if (i14 == i12 && this.f5629k[i14].f5645c == 0) {
                return i13;
            }
        }
        return -1;
    }

    private int[] B(y[] yVarArr) {
        int[] iArr = new int[yVarArr.length];
        for (int i10 = 0; i10 < yVarArr.length; i10++) {
            y yVar = yVarArr[i10];
            if (yVar != null) {
                iArr[i10] = this.f5628j.c(yVar.a());
            } else {
                iArr[i10] = -1;
            }
        }
        return iArr;
    }

    private static boolean C(List list, int[] iArr) {
        for (int i10 : iArr) {
            List list2 = ((h4.a) list.get(i10)).f16752c;
            for (int i11 = 0; i11 < list2.size(); i11++) {
                if (!((j) list2.get(i11)).f16813e.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    private static int D(int i10, List list, int[][] iArr, boolean[] zArr, x1[][] x1VarArr) {
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            if (C(list, iArr[i12])) {
                zArr[i12] = true;
                i11++;
            }
            x1[] y10 = y(list, iArr[i12]);
            x1VarArr[i12] = y10;
            if (y10.length != 0) {
                i11++;
            }
        }
        return i11;
    }

    private static i[] E(int i10) {
        return new i[i10];
    }

    private static x1[] G(h4.e eVar, Pattern pattern, x1 x1Var) {
        String str = eVar.f16788b;
        if (str == null) {
            return new x1[]{x1Var};
        }
        String[] P0 = q0.P0(str, ";");
        x1[] x1VarArr = new x1[P0.length];
        for (int i10 = 0; i10 < P0.length; i10++) {
            Matcher matcher = pattern.matcher(P0[i10]);
            if (!matcher.matches()) {
                return new x1[]{x1Var};
            }
            int parseInt = Integer.parseInt(matcher.group(1));
            x1.b b10 = x1Var.b();
            x1VarArr[i10] = b10.U(x1Var.f4503a + ":" + parseInt).H(parseInt).X(matcher.group(2)).G();
        }
        return x1VarArr;
    }

    private void I(y[] yVarArr, boolean[] zArr, d4.m0[] m0VarArr) {
        for (int i10 = 0; i10 < yVarArr.length; i10++) {
            if (yVarArr[i10] == null || !zArr[i10]) {
                d4.m0 m0Var = m0VarArr[i10];
                if (m0Var instanceof i) {
                    ((i) m0Var).O(this);
                } else if (m0Var instanceof i.a) {
                    ((i.a) m0Var).c();
                }
                m0VarArr[i10] = null;
            }
        }
    }

    private void J(y[] yVarArr, d4.m0[] m0VarArr, int[] iArr) {
        boolean z10;
        for (int i10 = 0; i10 < yVarArr.length; i10++) {
            d4.m0 m0Var = m0VarArr[i10];
            if ((m0Var instanceof k) || (m0Var instanceof i.a)) {
                int A = A(i10, iArr);
                if (A == -1) {
                    z10 = m0VarArr[i10] instanceof k;
                } else {
                    d4.m0 m0Var2 = m0VarArr[i10];
                    if ((m0Var2 instanceof i.a) && ((i.a) m0Var2).f15812a == m0VarArr[A]) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                if (!z10) {
                    d4.m0 m0Var3 = m0VarArr[i10];
                    if (m0Var3 instanceof i.a) {
                        ((i.a) m0Var3).c();
                    }
                    m0VarArr[i10] = null;
                }
            }
        }
    }

    private void K(y[] yVarArr, d4.m0[] m0VarArr, boolean[] zArr, long j10, int[] iArr) {
        for (int i10 = 0; i10 < yVarArr.length; i10++) {
            y yVar = yVarArr[i10];
            if (yVar != null) {
                d4.m0 m0Var = m0VarArr[i10];
                if (m0Var == null) {
                    zArr[i10] = true;
                    a aVar = this.f5629k[iArr[i10]];
                    int i11 = aVar.f5645c;
                    if (i11 == 0) {
                        m0VarArr[i10] = s(aVar, yVar, j10);
                    } else if (i11 == 2) {
                        m0VarArr[i10] = new d((f) this.f5642x.get(aVar.f5646d), yVar.a().b(0), this.f5640v.f16763d);
                    }
                } else if (m0Var instanceof i) {
                    ((com.google.android.exoplayer2.source.dash.a) ((i) m0Var).C()).b(yVar);
                }
            }
        }
        for (int i12 = 0; i12 < yVarArr.length; i12++) {
            if (m0VarArr[i12] == null && yVarArr[i12] != null) {
                a aVar2 = this.f5629k[iArr[i12]];
                if (aVar2.f5645c == 1) {
                    int A = A(i12, iArr);
                    if (A == -1) {
                        m0VarArr[i12] = new k();
                    } else {
                        m0VarArr[i12] = ((i) m0VarArr[A]).R(j10, aVar2.f5644b);
                    }
                }
            }
        }
    }

    private static void n(List list, s0[] s0VarArr, a[] aVarArr, int i10) {
        int i11 = 0;
        while (i11 < list.size()) {
            f fVar = (f) list.get(i11);
            x1 G = new x1.b().U(fVar.a()).g0("application/x-emsg").G();
            s0VarArr[i10] = new s0(fVar.a() + ":" + i11, G);
            aVarArr[i10] = a.c(i11);
            i11++;
            i10++;
        }
    }

    private static int o(v vVar, List list, int[][] iArr, int i10, boolean[] zArr, x1[][] x1VarArr, s0[] s0VarArr, a[] aVarArr) {
        String str;
        int i11;
        int i12;
        int i13 = 0;
        int i14 = 0;
        while (i13 < i10) {
            int[] iArr2 = iArr[i13];
            ArrayList arrayList = new ArrayList();
            for (int i15 : iArr2) {
                arrayList.addAll(((h4.a) list.get(i15)).f16752c);
            }
            int size = arrayList.size();
            x1[] x1VarArr2 = new x1[size];
            for (int i16 = 0; i16 < size; i16++) {
                x1 x1Var = ((j) arrayList.get(i16)).f16810b;
                x1VarArr2[i16] = x1Var.c(vVar.c(x1Var));
            }
            h4.a aVar = (h4.a) list.get(iArr2[0]);
            int i17 = aVar.f16750a;
            if (i17 != -1) {
                str = Integer.toString(i17);
            } else {
                str = "unset:" + i13;
            }
            int i18 = i14 + 1;
            if (zArr[i13]) {
                i11 = i18 + 1;
            } else {
                i11 = i18;
                i18 = -1;
            }
            if (x1VarArr[i13].length != 0) {
                i12 = i11 + 1;
            } else {
                i12 = i11;
                i11 = -1;
            }
            s0VarArr[i14] = new s0(str, x1VarArr2);
            aVarArr[i14] = a.d(aVar.f16751b, iArr2, i14, i18, i11);
            if (i18 != -1) {
                String str2 = str + ":emsg";
                s0VarArr[i18] = new s0(str2, new x1.b().U(str2).g0("application/x-emsg").G());
                aVarArr[i18] = a.b(iArr2, i14);
            }
            if (i11 != -1) {
                s0VarArr[i11] = new s0(str + ":cc", x1VarArr[i13]);
                aVarArr[i11] = a.a(iArr2, i14);
            }
            i13++;
            i14 = i12;
        }
        return i14;
    }

    private i s(a aVar, y yVar, long j10) {
        boolean z10;
        int i10;
        s0 s0Var;
        boolean z11;
        s0 s0Var2;
        int i11;
        int i12 = aVar.f5648f;
        if (i12 != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        e.c cVar = null;
        if (z10) {
            s0Var = this.f5628j.b(i12);
            i10 = 1;
        } else {
            i10 = 0;
            s0Var = null;
        }
        int i13 = aVar.f5649g;
        if (i13 != -1) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11) {
            s0Var2 = this.f5628j.b(i13);
            i10 += s0Var2.f14950a;
        } else {
            s0Var2 = null;
        }
        x1[] x1VarArr = new x1[i10];
        int[] iArr = new int[i10];
        if (z10) {
            x1VarArr[0] = s0Var.b(0);
            iArr[0] = 5;
            i11 = 1;
        } else {
            i11 = 0;
        }
        ArrayList arrayList = new ArrayList();
        if (z11) {
            for (int i14 = 0; i14 < s0Var2.f14950a; i14++) {
                x1 b10 = s0Var2.b(i14);
                x1VarArr[i11] = b10;
                iArr[i11] = 3;
                arrayList.add(b10);
                i11++;
            }
        }
        if (this.f5640v.f16763d && z10) {
            cVar = this.f5631m.k();
        }
        e.c cVar2 = cVar;
        i iVar = new i(aVar.f5644b, iArr, x1VarArr, this.f5620b.a(this.f5626h, this.f5640v, this.f5624f, this.f5641w, aVar.f5643a, yVar, aVar.f5644b, this.f5625g, z10, arrayList, cVar2, this.f5621c, this.f5635q), this, this.f5627i, j10, this.f5622d, this.f5634p, this.f5623e, this.f5633o);
        synchronized (this) {
            this.f5632n.put(iVar, cVar2);
        }
        return iVar;
    }

    private static Pair u(v vVar, List list, List list2) {
        int[][] z10 = z(list);
        int length = z10.length;
        boolean[] zArr = new boolean[length];
        x1[][] x1VarArr = new x1[length];
        int D = D(length, list, z10, zArr, x1VarArr) + length + list2.size();
        s0[] s0VarArr = new s0[D];
        a[] aVarArr = new a[D];
        n(list2, s0VarArr, aVarArr, o(vVar, list, z10, length, zArr, x1VarArr, s0VarArr, aVarArr));
        return Pair.create(new u0(s0VarArr), aVarArr);
    }

    private static h4.e v(List list) {
        return w(list, "urn:mpeg:dash:adaptation-set-switching:2016");
    }

    private static h4.e w(List list, String str) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            h4.e eVar = (h4.e) list.get(i10);
            if (str.equals(eVar.f16787a)) {
                return eVar;
            }
        }
        return null;
    }

    private static h4.e x(List list) {
        return w(list, "http://dashif.org/guidelines/trickmode");
    }

    private static x1[] y(List list, int[] iArr) {
        for (int i10 : iArr) {
            h4.a aVar = (h4.a) list.get(i10);
            List list2 = ((h4.a) list.get(i10)).f16753d;
            for (int i11 = 0; i11 < list2.size(); i11++) {
                h4.e eVar = (h4.e) list2.get(i11);
                if ("urn:scte:dash:cc:cea-608:2015".equals(eVar.f16787a)) {
                    return G(eVar, f5617y, new x1.b().g0("application/cea-608").U(aVar.f16750a + ":cea608").G());
                } else if ("urn:scte:dash:cc:cea-708:2015".equals(eVar.f16787a)) {
                    return G(eVar, f5618z, new x1.b().g0("application/cea-708").U(aVar.f16750a + ":cea708").G());
                }
            }
        }
        return new x1[0];
    }

    private static int[][] z(List list) {
        int i10;
        h4.e v10;
        int size = list.size();
        SparseIntArray sparseIntArray = new SparseIntArray(size);
        ArrayList arrayList = new ArrayList(size);
        SparseArray sparseArray = new SparseArray(size);
        for (int i11 = 0; i11 < size; i11++) {
            sparseIntArray.put(((h4.a) list.get(i11)).f16750a, i11);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i11));
            arrayList.add(arrayList2);
            sparseArray.put(i11, arrayList2);
        }
        for (int i12 = 0; i12 < size; i12++) {
            h4.a aVar = (h4.a) list.get(i12);
            h4.e x10 = x(aVar.f16754e);
            if (x10 == null) {
                x10 = x(aVar.f16755f);
            }
            if (x10 == null || (i10 = sparseIntArray.get(Integer.parseInt(x10.f16788b), -1)) == -1) {
                i10 = i12;
            }
            if (i10 == i12 && (v10 = v(aVar.f16755f)) != null) {
                for (String str : q0.P0(v10.f16788b, StringUtils.COMMA)) {
                    int i13 = sparseIntArray.get(Integer.parseInt(str), -1);
                    if (i13 != -1) {
                        i10 = Math.min(i10, i13);
                    }
                }
            }
            if (i10 != i12) {
                List list2 = (List) sparseArray.get(i12);
                List list3 = (List) sparseArray.get(i10);
                list3.addAll(list2);
                sparseArray.put(i12, list3);
                arrayList.remove(list2);
            }
        }
        int size2 = arrayList.size();
        int[][] iArr = new int[size2];
        for (int i14 = 0; i14 < size2; i14++) {
            int[] k10 = q6.e.k((Collection) arrayList.get(i14));
            iArr[i14] = k10;
            Arrays.sort(k10);
        }
        return iArr;
    }

    @Override // d4.n0.a
    /* renamed from: F */
    public void h(i iVar) {
        this.f5636r.h(this);
    }

    public void H() {
        this.f5631m.o();
        for (i iVar : this.f5637s) {
            iVar.O(this);
        }
        this.f5636r = null;
    }

    public void L(h4.c cVar, int i10) {
        d[] dVarArr;
        this.f5640v = cVar;
        this.f5641w = i10;
        this.f5631m.q(cVar);
        i[] iVarArr = this.f5637s;
        if (iVarArr != null) {
            for (i iVar : iVarArr) {
                ((com.google.android.exoplayer2.source.dash.a) iVar.C()).c(cVar, i10);
            }
            this.f5636r.h(this);
        }
        this.f5642x = cVar.d(i10).f16798d;
        for (d dVar : this.f5638t) {
            Iterator it = this.f5642x.iterator();
            while (true) {
                if (it.hasNext()) {
                    f fVar = (f) it.next();
                    if (fVar.a().equals(dVar.b())) {
                        boolean z10 = true;
                        dVar.d(fVar, (cVar.f16763d && i10 == cVar.e() - 1) ? false : false);
                    }
                }
            }
        }
    }

    @Override // d4.r, d4.n0
    public long b() {
        return this.f5639u.b();
    }

    @Override // d4.r, d4.n0
    public boolean c(long j10) {
        return this.f5639u.c(j10);
    }

    @Override // d4.r, d4.n0
    public long d() {
        return this.f5639u.d();
    }

    @Override // d4.r
    public long e(long j10, x3 x3Var) {
        i[] iVarArr;
        for (i iVar : this.f5637s) {
            if (iVar.f15789a == 2) {
                return iVar.e(j10, x3Var);
            }
        }
        return j10;
    }

    @Override // d4.r, d4.n0
    public void f(long j10) {
        this.f5639u.f(j10);
    }

    @Override // d4.r
    public void i() {
        this.f5626h.a();
    }

    @Override // d4.r, d4.n0
    public boolean isLoading() {
        return this.f5639u.isLoading();
    }

    @Override // d4.r
    public long k(long j10) {
        for (i iVar : this.f5637s) {
            iVar.Q(j10);
        }
        for (d dVar : this.f5638t) {
            dVar.c(j10);
        }
        return j10;
    }

    @Override // f4.i.b
    public synchronized void l(i iVar) {
        e.c cVar = (e.c) this.f5632n.remove(iVar);
        if (cVar != null) {
            cVar.n();
        }
    }

    @Override // d4.r
    public long m(y[] yVarArr, boolean[] zArr, d4.m0[] m0VarArr, boolean[] zArr2, long j10) {
        int[] B = B(yVarArr);
        I(yVarArr, zArr, m0VarArr);
        J(yVarArr, m0VarArr, B);
        K(yVarArr, m0VarArr, zArr2, j10, B);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (d4.m0 m0Var : m0VarArr) {
            if (m0Var instanceof i) {
                arrayList.add((i) m0Var);
            } else if (m0Var instanceof d) {
                arrayList2.add((d) m0Var);
            }
        }
        i[] E = E(arrayList.size());
        this.f5637s = E;
        arrayList.toArray(E);
        d[] dVarArr = new d[arrayList2.size()];
        this.f5638t = dVarArr;
        arrayList2.toArray(dVarArr);
        this.f5639u = this.f5630l.a(this.f5637s);
        return j10;
    }

    @Override // d4.r
    public long p() {
        return -9223372036854775807L;
    }

    @Override // d4.r
    public u0 q() {
        return this.f5628j;
    }

    @Override // d4.r
    public void r(long j10, boolean z10) {
        for (i iVar : this.f5637s) {
            iVar.r(j10, z10);
        }
    }

    @Override // d4.r
    public void t(r.a aVar, long j10) {
        this.f5636r = aVar;
        aVar.g(this);
    }
}
