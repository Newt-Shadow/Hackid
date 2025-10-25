package i4;

import android.net.Uri;
import android.text.TextUtils;
import b3.x1;
import b3.x3;
import c3.t3;
import d4.a0;
import d4.n0;
import d4.r;
import d4.s0;
import d4.u0;
import f3.u;
import f3.v;
import i4.p;
import j4.h;
import j4.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import w4.y;
import x4.d0;
import x4.m0;
import y4.q0;
/* loaded from: classes.dex */
public final class k implements d4.r, l.b {

    /* renamed from: a  reason: collision with root package name */
    private final h f17172a;

    /* renamed from: b  reason: collision with root package name */
    private final j4.l f17173b;

    /* renamed from: c  reason: collision with root package name */
    private final g f17174c;

    /* renamed from: d  reason: collision with root package name */
    private final m0 f17175d;

    /* renamed from: e  reason: collision with root package name */
    private final v f17176e;

    /* renamed from: f  reason: collision with root package name */
    private final u.a f17177f;

    /* renamed from: g  reason: collision with root package name */
    private final d0 f17178g;

    /* renamed from: h  reason: collision with root package name */
    private final a0.a f17179h;

    /* renamed from: i  reason: collision with root package name */
    private final x4.b f17180i;

    /* renamed from: l  reason: collision with root package name */
    private final d4.h f17183l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f17184m;

    /* renamed from: n  reason: collision with root package name */
    private final int f17185n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f17186o;

    /* renamed from: p  reason: collision with root package name */
    private final t3 f17187p;

    /* renamed from: r  reason: collision with root package name */
    private r.a f17189r;

    /* renamed from: s  reason: collision with root package name */
    private int f17190s;

    /* renamed from: t  reason: collision with root package name */
    private u0 f17191t;

    /* renamed from: x  reason: collision with root package name */
    private int f17195x;

    /* renamed from: y  reason: collision with root package name */
    private n0 f17196y;

    /* renamed from: q  reason: collision with root package name */
    private final p.b f17188q = new b();

    /* renamed from: j  reason: collision with root package name */
    private final IdentityHashMap f17181j = new IdentityHashMap();

    /* renamed from: k  reason: collision with root package name */
    private final s f17182k = new s();

    /* renamed from: u  reason: collision with root package name */
    private p[] f17192u = new p[0];

    /* renamed from: v  reason: collision with root package name */
    private p[] f17193v = new p[0];

    /* renamed from: w  reason: collision with root package name */
    private int[][] f17194w = new int[0];

    /* loaded from: classes.dex */
    private class b implements p.b {
        private b() {
        }

        @Override // i4.p.b
        public void a() {
            p[] pVarArr;
            if (k.h(k.this) <= 0) {
                int i10 = 0;
                for (p pVar : k.this.f17192u) {
                    i10 += pVar.q().f14962a;
                }
                s0[] s0VarArr = new s0[i10];
                int i11 = 0;
                for (p pVar2 : k.this.f17192u) {
                    int i12 = pVar2.q().f14962a;
                    int i13 = 0;
                    while (i13 < i12) {
                        s0VarArr[i11] = pVar2.q().b(i13);
                        i13++;
                        i11++;
                    }
                }
                k.this.f17191t = new u0(s0VarArr);
                k.this.f17189r.g(k.this);
            }
        }

        @Override // d4.n0.a
        /* renamed from: b */
        public void h(p pVar) {
            k.this.f17189r.h(k.this);
        }

        @Override // i4.p.b
        public void j(Uri uri) {
            k.this.f17173b.l(uri);
        }
    }

    public k(h hVar, j4.l lVar, g gVar, m0 m0Var, v vVar, u.a aVar, d0 d0Var, a0.a aVar2, x4.b bVar, d4.h hVar2, boolean z10, int i10, boolean z11, t3 t3Var) {
        this.f17172a = hVar;
        this.f17173b = lVar;
        this.f17174c = gVar;
        this.f17175d = m0Var;
        this.f17176e = vVar;
        this.f17177f = aVar;
        this.f17178g = d0Var;
        this.f17179h = aVar2;
        this.f17180i = bVar;
        this.f17183l = hVar2;
        this.f17184m = z10;
        this.f17185n = i10;
        this.f17186o = z11;
        this.f17187p = t3Var;
        this.f17196y = hVar2.a(new n0[0]);
    }

    static /* synthetic */ int h(k kVar) {
        int i10 = kVar.f17190s - 1;
        kVar.f17190s = i10;
        return i10;
    }

    private void s(long j10, List list, List list2, List list3, Map map) {
        boolean z10;
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = ((h.a) list.get(i10)).f24412d;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z11 = true;
                for (int i11 = 0; i11 < list.size(); i11++) {
                    if (q0.c(str, ((h.a) list.get(i11)).f24412d)) {
                        h.a aVar = (h.a) list.get(i11);
                        arrayList3.add(Integer.valueOf(i11));
                        arrayList.add(aVar.f24409a);
                        arrayList2.add(aVar.f24410b);
                        if (q0.K(aVar.f24410b.f4511i, 1) == 1) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 &= z10;
                    }
                }
                String str2 = "audio:" + str;
                p w10 = w(str2, 1, (Uri[]) arrayList.toArray((Uri[]) q0.k(new Uri[0])), (x1[]) arrayList2.toArray(new x1[0]), null, Collections.emptyList(), map, j10);
                list3.add(q6.e.k(arrayList3));
                list2.add(w10);
                if (this.f17184m && z11) {
                    w10.c0(new s0[]{new s0(str2, (x1[]) arrayList2.toArray(new x1[0]))}, 0, new int[0]);
                }
            }
        }
    }

    private void u(j4.h hVar, long j10, List list, List list2, Map map) {
        boolean z10;
        boolean z11;
        int size = hVar.f24400e.size();
        int[] iArr = new int[size];
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < hVar.f24400e.size(); i12++) {
            x1 x1Var = ((h.b) hVar.f24400e.get(i12)).f24414b;
            if (x1Var.f4520r <= 0 && q0.L(x1Var.f4511i, 2) == null) {
                if (q0.L(x1Var.f4511i, 1) != null) {
                    iArr[i12] = 1;
                    i11++;
                } else {
                    iArr[i12] = -1;
                }
            } else {
                iArr[i12] = 2;
                i10++;
            }
        }
        if (i10 > 0) {
            size = i10;
            z10 = true;
            z11 = false;
        } else if (i11 < size) {
            size -= i11;
            z10 = false;
            z11 = true;
        } else {
            z10 = false;
            z11 = false;
        }
        Uri[] uriArr = new Uri[size];
        x1[] x1VarArr = new x1[size];
        int[] iArr2 = new int[size];
        int i13 = 0;
        for (int i14 = 0; i14 < hVar.f24400e.size(); i14++) {
            if ((!z10 || iArr[i14] == 2) && (!z11 || iArr[i14] != 1)) {
                h.b bVar = (h.b) hVar.f24400e.get(i14);
                uriArr[i13] = bVar.f24413a;
                x1VarArr[i13] = bVar.f24414b;
                iArr2[i13] = i14;
                i13++;
            }
        }
        String str = x1VarArr[0].f4511i;
        int K = q0.K(str, 2);
        int K2 = q0.K(str, 1);
        boolean z12 = (K2 == 1 || (K2 == 0 && hVar.f24402g.isEmpty())) && K <= 1 && K2 + K > 0;
        p w10 = w("main", (z10 || K2 <= 0) ? 0 : 1, uriArr, x1VarArr, hVar.f24405j, hVar.f24406k, map, j10);
        list.add(w10);
        list2.add(iArr2);
        if (this.f17184m && z12) {
            ArrayList arrayList = new ArrayList();
            if (K > 0) {
                x1[] x1VarArr2 = new x1[size];
                for (int i15 = 0; i15 < size; i15++) {
                    x1VarArr2[i15] = z(x1VarArr[i15]);
                }
                arrayList.add(new s0("main", x1VarArr2));
                if (K2 > 0 && (hVar.f24405j != null || hVar.f24402g.isEmpty())) {
                    arrayList.add(new s0("main:audio", x(x1VarArr[0], hVar.f24405j, false)));
                }
                List list3 = hVar.f24406k;
                if (list3 != null) {
                    for (int i16 = 0; i16 < list3.size(); i16++) {
                        arrayList.add(new s0("main:cc:" + i16, (x1) list3.get(i16)));
                    }
                }
            } else {
                x1[] x1VarArr3 = new x1[size];
                for (int i17 = 0; i17 < size; i17++) {
                    x1VarArr3[i17] = x(x1VarArr[i17], hVar.f24405j, true);
                }
                arrayList.add(new s0("main", x1VarArr3));
            }
            s0 s0Var = new s0("main:id3", new x1.b().U("ID3").g0("application/id3").G());
            arrayList.add(s0Var);
            w10.c0((s0[]) arrayList.toArray(new s0[0]), 0, arrayList.indexOf(s0Var));
        }
    }

    private void v(long j10) {
        Map emptyMap;
        j4.h hVar = (j4.h) y4.a.e(this.f17173b.g());
        if (this.f17186o) {
            emptyMap = y(hVar.f24408m);
        } else {
            emptyMap = Collections.emptyMap();
        }
        Map map = emptyMap;
        boolean z10 = !hVar.f24400e.isEmpty();
        List list = hVar.f24402g;
        List list2 = hVar.f24403h;
        int i10 = 0;
        this.f17190s = 0;
        ArrayList arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        if (z10) {
            u(hVar, j10, arrayList, arrayList2, map);
        }
        s(j10, list, arrayList, arrayList2, map);
        this.f17195x = arrayList.size();
        int i11 = 0;
        while (i11 < list2.size()) {
            h.a aVar = (h.a) list2.get(i11);
            String str = "subtitle:" + i11 + ":" + aVar.f24412d;
            Map map2 = map;
            int i12 = i11;
            Map map3 = map;
            ArrayList arrayList3 = arrayList2;
            p w10 = w(str, 3, new Uri[]{aVar.f24409a}, new x1[]{aVar.f24410b}, null, Collections.emptyList(), map2, j10);
            arrayList3.add(new int[]{i12});
            arrayList.add(w10);
            w10.c0(new s0[]{new s0(str, aVar.f24410b)}, 0, new int[0]);
            i11 = i12 + 1;
            i10 = 0;
            arrayList2 = arrayList3;
            map = map3;
        }
        int i13 = i10;
        this.f17192u = (p[]) arrayList.toArray(new p[i13]);
        this.f17194w = (int[][]) arrayList2.toArray(new int[i13]);
        this.f17190s = this.f17192u.length;
        for (int i14 = i13; i14 < this.f17195x; i14++) {
            this.f17192u[i14].l0(true);
        }
        p[] pVarArr = this.f17192u;
        int length = pVarArr.length;
        for (int i15 = i13; i15 < length; i15++) {
            pVarArr[i15].A();
        }
        this.f17193v = this.f17192u;
    }

    private p w(String str, int i10, Uri[] uriArr, x1[] x1VarArr, x1 x1Var, List list, Map map, long j10) {
        return new p(str, i10, this.f17188q, new f(this.f17172a, this.f17173b, uriArr, x1VarArr, this.f17174c, this.f17175d, this.f17182k, list, this.f17187p), map, this.f17180i, j10, x1Var, this.f17176e, this.f17177f, this.f17178g, this.f17179h, this.f17185n);
    }

    private static x1 x(x1 x1Var, x1 x1Var2, boolean z10) {
        String L;
        t3.a aVar;
        int i10;
        String str;
        int i11;
        int i12;
        String str2;
        int i13;
        int i14 = -1;
        if (x1Var2 != null) {
            L = x1Var2.f4511i;
            aVar = x1Var2.f4512j;
            i11 = x1Var2.f4527y;
            i10 = x1Var2.f4506d;
            i12 = x1Var2.f4507e;
            str = x1Var2.f4505c;
            str2 = x1Var2.f4504b;
        } else {
            L = q0.L(x1Var.f4511i, 1);
            aVar = x1Var.f4512j;
            if (z10) {
                i11 = x1Var.f4527y;
                i10 = x1Var.f4506d;
                i12 = x1Var.f4507e;
                str = x1Var.f4505c;
                str2 = x1Var.f4504b;
            } else {
                i10 = 0;
                str = null;
                i11 = -1;
                i12 = 0;
                str2 = null;
            }
        }
        String g10 = y4.v.g(L);
        if (z10) {
            i13 = x1Var.f4508f;
        } else {
            i13 = -1;
        }
        if (z10) {
            i14 = x1Var.f4509g;
        }
        return new x1.b().U(x1Var.f4503a).W(str2).M(x1Var.f4513k).g0(g10).K(L).Z(aVar).I(i13).b0(i14).J(i11).i0(i10).e0(i12).X(str).G();
    }

    private static Map y(List list) {
        ArrayList arrayList = new ArrayList(list);
        HashMap hashMap = new HashMap();
        int i10 = 0;
        while (i10 < arrayList.size()) {
            f3.m mVar = (f3.m) list.get(i10);
            String str = mVar.f15716c;
            i10++;
            int i11 = i10;
            while (i11 < arrayList.size()) {
                f3.m mVar2 = (f3.m) arrayList.get(i11);
                if (TextUtils.equals(mVar2.f15716c, str)) {
                    mVar = mVar.f(mVar2);
                    arrayList.remove(i11);
                } else {
                    i11++;
                }
            }
            hashMap.put(str, mVar);
        }
        return hashMap;
    }

    private static x1 z(x1 x1Var) {
        String L = q0.L(x1Var.f4511i, 2);
        return new x1.b().U(x1Var.f4503a).W(x1Var.f4504b).M(x1Var.f4513k).g0(y4.v.g(L)).K(L).Z(x1Var.f4512j).I(x1Var.f4508f).b0(x1Var.f4509g).n0(x1Var.f4519q).S(x1Var.f4520r).R(x1Var.f4521s).i0(x1Var.f4506d).e0(x1Var.f4507e).G();
    }

    public void A() {
        this.f17173b.i(this);
        for (p pVar : this.f17192u) {
            pVar.e0();
        }
        this.f17189r = null;
    }

    @Override // j4.l.b
    public void a() {
        for (p pVar : this.f17192u) {
            pVar.a0();
        }
        this.f17189r.h(this);
    }

    @Override // d4.r, d4.n0
    public long b() {
        return this.f17196y.b();
    }

    @Override // d4.r, d4.n0
    public boolean c(long j10) {
        if (this.f17191t == null) {
            for (p pVar : this.f17192u) {
                pVar.A();
            }
            return false;
        }
        return this.f17196y.c(j10);
    }

    @Override // d4.r, d4.n0
    public long d() {
        return this.f17196y.d();
    }

    @Override // d4.r
    public long e(long j10, x3 x3Var) {
        p[] pVarArr;
        for (p pVar : this.f17193v) {
            if (pVar.Q()) {
                return pVar.e(j10, x3Var);
            }
        }
        return j10;
    }

    @Override // d4.r, d4.n0
    public void f(long j10) {
        this.f17196y.f(j10);
    }

    @Override // j4.l.b
    public boolean g(Uri uri, d0.c cVar, boolean z10) {
        boolean z11 = true;
        for (p pVar : this.f17192u) {
            z11 &= pVar.Z(uri, cVar, z10);
        }
        this.f17189r.h(this);
        return z11;
    }

    @Override // d4.r
    public void i() {
        for (p pVar : this.f17192u) {
            pVar.i();
        }
    }

    @Override // d4.r, d4.n0
    public boolean isLoading() {
        return this.f17196y.isLoading();
    }

    @Override // d4.r
    public long k(long j10) {
        p[] pVarArr = this.f17193v;
        if (pVarArr.length > 0) {
            boolean h02 = pVarArr[0].h0(j10, false);
            int i10 = 1;
            while (true) {
                p[] pVarArr2 = this.f17193v;
                if (i10 >= pVarArr2.length) {
                    break;
                }
                pVarArr2[i10].h0(j10, h02);
                i10++;
            }
            if (h02) {
                this.f17182k.b();
            }
        }
        return j10;
    }

    @Override // d4.r
    public long m(y[] yVarArr, boolean[] zArr, d4.m0[] m0VarArr, boolean[] zArr2, long j10) {
        boolean z10;
        d4.m0 m0Var;
        int intValue;
        d4.m0[] m0VarArr2 = m0VarArr;
        int[] iArr = new int[yVarArr.length];
        int[] iArr2 = new int[yVarArr.length];
        for (int i10 = 0; i10 < yVarArr.length; i10++) {
            d4.m0 m0Var2 = m0VarArr2[i10];
            if (m0Var2 == null) {
                intValue = -1;
            } else {
                intValue = ((Integer) this.f17181j.get(m0Var2)).intValue();
            }
            iArr[i10] = intValue;
            iArr2[i10] = -1;
            y yVar = yVarArr[i10];
            if (yVar != null) {
                s0 a10 = yVar.a();
                int i11 = 0;
                while (true) {
                    p[] pVarArr = this.f17192u;
                    if (i11 >= pVarArr.length) {
                        break;
                    } else if (pVarArr[i11].q().c(a10) != -1) {
                        iArr2[i10] = i11;
                        break;
                    } else {
                        i11++;
                    }
                }
            }
        }
        this.f17181j.clear();
        int length = yVarArr.length;
        d4.m0[] m0VarArr3 = new d4.m0[length];
        d4.m0[] m0VarArr4 = new d4.m0[yVarArr.length];
        y[] yVarArr2 = new y[yVarArr.length];
        p[] pVarArr2 = new p[this.f17192u.length];
        int i12 = 0;
        int i13 = 0;
        boolean z11 = false;
        while (i13 < this.f17192u.length) {
            for (int i14 = 0; i14 < yVarArr.length; i14++) {
                y yVar2 = null;
                if (iArr[i14] == i13) {
                    m0Var = m0VarArr2[i14];
                } else {
                    m0Var = null;
                }
                m0VarArr4[i14] = m0Var;
                if (iArr2[i14] == i13) {
                    yVar2 = yVarArr[i14];
                }
                yVarArr2[i14] = yVar2;
            }
            p pVar = this.f17192u[i13];
            int i15 = i12;
            int i16 = length;
            int i17 = i13;
            y[] yVarArr3 = yVarArr2;
            p[] pVarArr3 = pVarArr2;
            boolean i02 = pVar.i0(yVarArr2, zArr, m0VarArr4, zArr2, j10, z11);
            int i18 = 0;
            boolean z12 = false;
            while (true) {
                z10 = true;
                if (i18 >= yVarArr.length) {
                    break;
                }
                d4.m0 m0Var3 = m0VarArr4[i18];
                if (iArr2[i18] == i17) {
                    y4.a.e(m0Var3);
                    m0VarArr3[i18] = m0Var3;
                    this.f17181j.put(m0Var3, Integer.valueOf(i17));
                    z12 = true;
                } else if (iArr[i18] == i17) {
                    if (m0Var3 != null) {
                        z10 = false;
                    }
                    y4.a.f(z10);
                }
                i18++;
            }
            if (z12) {
                pVarArr3[i15] = pVar;
                i12 = i15 + 1;
                if (i15 == 0) {
                    pVar.l0(true);
                    if (!i02) {
                        p[] pVarArr4 = this.f17193v;
                        if (pVarArr4.length != 0 && pVar == pVarArr4[0]) {
                        }
                    }
                    this.f17182k.b();
                    z11 = true;
                } else {
                    if (i17 >= this.f17195x) {
                        z10 = false;
                    }
                    pVar.l0(z10);
                }
            } else {
                i12 = i15;
            }
            i13 = i17 + 1;
            m0VarArr2 = m0VarArr;
            pVarArr2 = pVarArr3;
            length = i16;
            yVarArr2 = yVarArr3;
        }
        System.arraycopy(m0VarArr3, 0, m0VarArr2, 0, length);
        p[] pVarArr5 = (p[]) q0.F0(pVarArr2, i12);
        this.f17193v = pVarArr5;
        this.f17196y = this.f17183l.a(pVarArr5);
        return j10;
    }

    @Override // d4.r
    public long p() {
        return -9223372036854775807L;
    }

    @Override // d4.r
    public u0 q() {
        return (u0) y4.a.e(this.f17191t);
    }

    @Override // d4.r
    public void r(long j10, boolean z10) {
        for (p pVar : this.f17193v) {
            pVar.r(j10, z10);
        }
    }

    @Override // d4.r
    public void t(r.a aVar, long j10) {
        this.f17189r = aVar;
        this.f17173b.b(this);
        v(j10);
    }
}
