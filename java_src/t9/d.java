package t9;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import d9.j;
import d9.n;
import d9.o;
import d9.p;
import io.appmetrica.analytics.BuildConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import r9.k;
import s9.f;
/* loaded from: classes.dex */
public final class d extends s9.a {

    /* renamed from: k  reason: collision with root package name */
    private static final int[] f30491k = {7, 5, 4, 3, 1};

    /* renamed from: l  reason: collision with root package name */
    private static final int[] f30492l = {4, 20, 52, 104, 204};

    /* renamed from: m  reason: collision with root package name */
    private static final int[] f30493m = {0, 348, 1388, 2948, 3988};

    /* renamed from: n  reason: collision with root package name */
    private static final int[][] f30494n = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};

    /* renamed from: o  reason: collision with root package name */
    private static final int[][] f30495o = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, 180, 118, 143, 7, 21, 63}, new int[]{189, 145, 13, 39, 117, 140, 209, 205}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, 136, 197, 169, 85, 44, 132}, new int[]{185, 133, 188, 142, 4, 12, 36, 108}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, 123, 158, 52, 156}, new int[]{46, 138, 203, 187, 139, 206, 196, 166}, new int[]{76, 17, 51, 153, 37, 111, 122, ModuleDescriptor.MODULE_VERSION}, new int[]{43, 129, 176, 106, 107, 110, 119, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{109, 116, 137, 200, 178, 112, 125, 164}, new int[]{70, 210, 208, 202, 184, 130, 179, BuildConfig.API_LEVEL}, new int[]{134, 191, 151, 31, 93, 68, 204, 190}, new int[]{148, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, 192, 154, 40}, new int[]{120, 149, 25, 75, 14, 42, 126, 167}, new int[]{79, 26, 78, 23, 69, 207, 199, 175}, new int[]{103, 98, 83, 38, 114, 131, 182, 124}, new int[]{161, 61, 183, 127, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, 194, 160, 58, 174, 100, 89}};

    /* renamed from: p  reason: collision with root package name */
    private static final int[][] f30496p = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};

    /* renamed from: g  reason: collision with root package name */
    private final List f30497g = new ArrayList(11);

    /* renamed from: h  reason: collision with root package name */
    private final List f30498h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private final int[] f30499i = new int[2];

    /* renamed from: j  reason: collision with root package name */
    private boolean f30500j;

    private static int A(j9.a aVar, int i10) {
        if (aVar.c(i10)) {
            return aVar.e(aVar.f(i10));
        }
        return aVar.f(aVar.e(i10));
    }

    private static boolean B(s9.c cVar, boolean z10, boolean z11) {
        if (cVar.c() == 0 && z10 && z11) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0043, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean C(java.lang.Iterable r7, java.lang.Iterable r8) {
        /*
            java.util.Iterator r8 = r8.iterator()
        L4:
            boolean r0 = r8.hasNext()
            r1 = 0
            if (r0 == 0) goto L46
            java.lang.Object r0 = r8.next()
            t9.c r0 = (t9.c) r0
            java.util.Iterator r2 = r7.iterator()
        L15:
            boolean r3 = r2.hasNext()
            r4 = 1
            if (r3 == 0) goto L42
            java.lang.Object r3 = r2.next()
            t9.b r3 = (t9.b) r3
            java.util.List r5 = r0.a()
            java.util.Iterator r5 = r5.iterator()
        L2a:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L3e
            java.lang.Object r6 = r5.next()
            t9.b r6 = (t9.b) r6
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L2a
            r3 = r4
            goto L3f
        L3e:
            r3 = r1
        L3f:
            if (r3 != 0) goto L15
            goto L43
        L42:
            r1 = r4
        L43:
            if (r1 == 0) goto L4
            return r4
        L46:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: t9.d.C(java.lang.Iterable, java.lang.Iterable):boolean");
    }

    private static boolean D(List list) {
        int[][] iArr;
        boolean z10;
        for (int[] iArr2 : f30496p) {
            if (list.size() <= iArr2.length) {
                int i10 = 0;
                while (true) {
                    if (i10 < list.size()) {
                        if (((b) list.get(i10)).a().c() != iArr2[i10]) {
                            z10 = false;
                            break;
                        }
                        i10++;
                    } else {
                        z10 = true;
                        break;
                    }
                }
                if (z10) {
                    return true;
                }
            }
        }
        return false;
    }

    private s9.c E(j9.a aVar, int i10, boolean z10) {
        int i11;
        int i12;
        int i13;
        if (z10) {
            int i14 = this.f30499i[0] - 1;
            while (i14 >= 0 && !aVar.c(i14)) {
                i14--;
            }
            int i15 = i14 + 1;
            int[] iArr = this.f30499i;
            i13 = iArr[0] - i15;
            i11 = iArr[1];
            i12 = i15;
        } else {
            int[] iArr2 = this.f30499i;
            int i16 = iArr2[0];
            int f10 = aVar.f(iArr2[1] + 1);
            i11 = f10;
            i12 = i16;
            i13 = f10 - this.f30499i[1];
        }
        int[] k10 = k();
        System.arraycopy(k10, 0, k10, 1, k10.length - 1);
        k10[0] = i13;
        try {
            return new s9.c(s9.a.r(k10, f30494n), new int[]{i12, i11}, i12, i11, i10);
        } catch (j unused) {
            return null;
        }
    }

    private static void F(Collection collection, Collection collection2) {
        boolean z10;
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.a().size() != collection.size()) {
                Iterator it2 = cVar.a().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (!collection.contains((b) it2.next())) {
                            z10 = false;
                            break;
                        }
                    } else {
                        z10 = true;
                        break;
                    }
                }
                if (z10) {
                    it.remove();
                }
            }
        }
    }

    private static void H(int[] iArr) {
        int length = iArr.length;
        for (int i10 = 0; i10 < length / 2; i10++) {
            int i11 = iArr[i10];
            int i12 = (length - i10) - 1;
            iArr[i10] = iArr[i12];
            iArr[i12] = i11;
        }
    }

    private void I(int i10) {
        boolean z10 = false;
        int i11 = 0;
        boolean z11 = false;
        while (true) {
            if (i11 >= this.f30498h.size()) {
                break;
            }
            c cVar = (c) this.f30498h.get(i11);
            if (cVar.b() > i10) {
                z10 = cVar.c(this.f30497g);
                break;
            } else {
                z11 = cVar.c(this.f30497g);
                i11++;
            }
        }
        if (z10 || z11 || C(this.f30497g, this.f30498h)) {
            return;
        }
        this.f30498h.add(i11, new c(this.f30497g, i10));
        F(this.f30497g, this.f30498h);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void s(int r11) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: t9.d.s(int):void");
    }

    private boolean t() {
        b bVar = (b) this.f30497g.get(0);
        s9.b b10 = bVar.b();
        s9.b c10 = bVar.c();
        if (c10 == null) {
            return false;
        }
        int a10 = c10.a();
        int i10 = 2;
        for (int i11 = 1; i11 < this.f30497g.size(); i11++) {
            b bVar2 = (b) this.f30497g.get(i11);
            a10 += bVar2.b().a();
            i10++;
            s9.b c11 = bVar2.c();
            if (c11 != null) {
                a10 += c11.a();
                i10++;
            }
        }
        if (((i10 - 4) * 211) + (a10 % 211) != b10.b()) {
            return false;
        }
        return true;
    }

    private List u(List list, int i10) {
        while (i10 < this.f30498h.size()) {
            c cVar = (c) this.f30498h.get(i10);
            this.f30497g.clear();
            for (c cVar2 : list) {
                this.f30497g.addAll(cVar2.a());
            }
            this.f30497g.addAll(cVar.a());
            if (D(this.f30497g)) {
                if (t()) {
                    return this.f30497g;
                }
                ArrayList arrayList = new ArrayList(list);
                arrayList.add(cVar);
                try {
                    return u(arrayList, i10 + 1);
                } catch (j unused) {
                    continue;
                }
            }
            i10++;
        }
        throw j.a();
    }

    private List v(boolean z10) {
        List list = null;
        if (this.f30498h.size() > 25) {
            this.f30498h.clear();
            return null;
        }
        this.f30497g.clear();
        if (z10) {
            Collections.reverse(this.f30498h);
        }
        try {
            list = u(new ArrayList(), 0);
        } catch (j unused) {
        }
        if (z10) {
            Collections.reverse(this.f30498h);
        }
        return list;
    }

    static n w(List list) {
        String d10 = u9.j.a(a.a(list)).d();
        p[] a10 = ((b) list.get(0)).a().a();
        p[] a11 = ((b) list.get(list.size() - 1)).a().a();
        n nVar = new n(d10, null, new p[]{a10[0], a10[1], a11[0], a11[1]}, d9.a.RSS_EXPANDED);
        nVar.h(o.SYMBOLOGY_IDENTIFIER, "]e0");
        return nVar;
    }

    private void z(j9.a aVar, List list, int i10) {
        boolean z10;
        int[] k10 = k();
        k10[0] = 0;
        k10[1] = 0;
        k10[2] = 0;
        k10[3] = 0;
        int i11 = aVar.i();
        if (i10 < 0) {
            if (list.isEmpty()) {
                i10 = 0;
            } else {
                i10 = ((b) list.get(list.size() - 1)).a().b()[1];
            }
        }
        if (list.size() % 2 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f30500j) {
            z10 = !z10;
        }
        boolean z11 = false;
        while (i10 < i11) {
            z11 = !aVar.c(i10);
            if (!z11) {
                break;
            }
            i10++;
        }
        int i12 = 0;
        boolean z12 = z11;
        int i13 = i10;
        while (i10 < i11) {
            if (aVar.c(i10) != z12) {
                k10[i12] = k10[i12] + 1;
            } else {
                if (i12 == 3) {
                    if (z10) {
                        H(k10);
                    }
                    if (s9.a.q(k10)) {
                        int[] iArr = this.f30499i;
                        iArr[0] = i13;
                        iArr[1] = i10;
                        return;
                    }
                    if (z10) {
                        H(k10);
                    }
                    i13 += k10[0] + k10[1];
                    k10[0] = k10[2];
                    k10[1] = k10[3];
                    k10[2] = 0;
                    k10[3] = 0;
                    i12--;
                } else {
                    i12++;
                }
                k10[i12] = 1;
                z12 = !z12;
            }
            i10++;
        }
        throw j.a();
    }

    b G(j9.a aVar, List list, int i10) {
        boolean z10;
        s9.c E;
        s9.b bVar;
        if (list.size() % 2 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f30500j) {
            z10 = !z10;
        }
        int i11 = -1;
        boolean z11 = true;
        do {
            z(aVar, list, i11);
            E = E(aVar, i10, z10);
            if (E == null) {
                i11 = A(aVar, this.f30499i[0]);
                continue;
            } else {
                z11 = false;
                continue;
            }
        } while (z11);
        s9.b x10 = x(aVar, E, z10, true);
        if (!list.isEmpty() && ((b) list.get(list.size() - 1)).d()) {
            throw j.a();
        }
        try {
            bVar = x(aVar, E, z10, false);
        } catch (j unused) {
            bVar = null;
        }
        return new b(x10, bVar, E);
    }

    @Override // r9.k, d9.l
    public void a() {
        this.f30497g.clear();
        this.f30498h.clear();
    }

    @Override // r9.k
    public n d(int i10, j9.a aVar, Map map) {
        this.f30497g.clear();
        this.f30500j = false;
        try {
            return w(y(i10, aVar));
        } catch (j unused) {
            this.f30497g.clear();
            this.f30500j = true;
            return w(y(i10, aVar));
        }
    }

    s9.b x(j9.a aVar, s9.c cVar, boolean z10, boolean z11) {
        int i10;
        int[] j10 = j();
        Arrays.fill(j10, 0);
        if (z11) {
            k.h(aVar, cVar.b()[0], j10);
        } else {
            k.g(aVar, cVar.b()[1], j10);
            int i11 = 0;
            for (int length = j10.length - 1; i11 < length; length--) {
                int i12 = j10[i11];
                j10[i11] = j10[length];
                j10[length] = i12;
                i11++;
            }
        }
        float d10 = k9.a.d(j10) / 17;
        float f10 = (cVar.b()[1] - cVar.b()[0]) / 15.0f;
        if (Math.abs(d10 - f10) / f10 <= 0.3f) {
            int[] n10 = n();
            int[] l10 = l();
            float[] o10 = o();
            float[] m10 = m();
            for (int i13 = 0; i13 < j10.length; i13++) {
                float f11 = (j10[i13] * 1.0f) / d10;
                int i14 = (int) (0.5f + f11);
                if (i14 < 1) {
                    if (f11 >= 0.3f) {
                        i14 = 1;
                    } else {
                        throw j.a();
                    }
                } else if (i14 > 8) {
                    if (f11 <= 8.7f) {
                        i14 = 8;
                    } else {
                        throw j.a();
                    }
                }
                int i15 = i13 / 2;
                if ((i13 & 1) == 0) {
                    n10[i15] = i14;
                    o10[i15] = f11 - i14;
                } else {
                    l10[i15] = i14;
                    m10[i15] = f11 - i14;
                }
            }
            s(17);
            int c10 = cVar.c() * 4;
            if (z10) {
                i10 = 0;
            } else {
                i10 = 2;
            }
            int i16 = ((c10 + i10) + (!z11 ? 1 : 0)) - 1;
            int i17 = 0;
            int i18 = 0;
            for (int length2 = n10.length - 1; length2 >= 0; length2--) {
                if (B(cVar, z10, z11)) {
                    i17 += n10[length2] * f30495o[i16][length2 * 2];
                }
                i18 += n10[length2];
            }
            int i19 = 0;
            for (int length3 = l10.length - 1; length3 >= 0; length3--) {
                if (B(cVar, z10, z11)) {
                    i19 += l10[length3] * f30495o[i16][(length3 * 2) + 1];
                }
            }
            int i20 = i17 + i19;
            if ((i18 & 1) == 0 && i18 <= 13 && i18 >= 4) {
                int i21 = (13 - i18) / 2;
                int i22 = f30491k[i21];
                int i23 = 9 - i22;
                return new s9.b((f.b(n10, i22, true) * f30492l[i21]) + f.b(l10, i23, false) + f30493m[i21], i20);
            }
            throw j.a();
        }
        throw j.a();
    }

    List y(int i10, j9.a aVar) {
        boolean z10 = false;
        while (!z10) {
            try {
                List list = this.f30497g;
                list.add(G(aVar, list, i10));
            } catch (j e10) {
                if (!this.f30497g.isEmpty()) {
                    z10 = true;
                } else {
                    throw e10;
                }
            }
        }
        if (t()) {
            return this.f30497g;
        }
        boolean z11 = !this.f30498h.isEmpty();
        I(i10);
        if (z11) {
            List v10 = v(false);
            if (v10 != null) {
                return v10;
            }
            List v11 = v(true);
            if (v11 != null) {
                return v11;
            }
        }
        throw j.a();
    }
}
