package s9;

import d9.j;
import d9.n;
import d9.o;
import d9.p;
import d9.q;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import r9.k;
/* loaded from: classes.dex */
public final class e extends a {

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f29561i = {1, 10, 34, 70, 126};

    /* renamed from: j  reason: collision with root package name */
    private static final int[] f29562j = {4, 20, 48, 81};

    /* renamed from: k  reason: collision with root package name */
    private static final int[] f29563k = {0, 161, 961, 2015, 2715};

    /* renamed from: l  reason: collision with root package name */
    private static final int[] f29564l = {0, 336, 1036, 1516};

    /* renamed from: m  reason: collision with root package name */
    private static final int[] f29565m = {8, 6, 4, 3, 1};

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f29566n = {2, 4, 6, 8};

    /* renamed from: o  reason: collision with root package name */
    private static final int[][] f29567o = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    /* renamed from: g  reason: collision with root package name */
    private final List f29568g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    private final List f29569h = new ArrayList();

    private static void s(Collection collection, d dVar) {
        boolean z10;
        if (dVar == null) {
            return;
        }
        Iterator it = collection.iterator();
        while (true) {
            if (it.hasNext()) {
                d dVar2 = (d) it.next();
                if (dVar2.b() == dVar.b()) {
                    dVar2.e();
                    z10 = true;
                    break;
                }
            } else {
                z10 = false;
                break;
            }
        }
        if (!z10) {
            collection.add(dVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
        if (r1 < 4) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003f, code lost:
        if (r1 < 4) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0041, code lost:
        r2 = true;
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0044, code lost:
        r2 = false;
        r5 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void t(boolean r10, int r11) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s9.e.t(boolean, int):void");
    }

    private static boolean u(d dVar, d dVar2) {
        int a10 = (dVar.a() + (dVar2.a() * 16)) % 79;
        int c10 = (dVar.d().c() * 9) + dVar2.d().c();
        if (c10 > 72) {
            c10--;
        }
        if (c10 > 8) {
            c10--;
        }
        if (a10 == c10) {
            return true;
        }
        return false;
    }

    private static n v(d dVar, d dVar2) {
        String valueOf = String.valueOf((dVar.b() * 4537077) + dVar2.b());
        StringBuilder sb2 = new StringBuilder(14);
        for (int length = 13 - valueOf.length(); length > 0; length--) {
            sb2.append('0');
        }
        sb2.append(valueOf);
        int i10 = 0;
        for (int i11 = 0; i11 < 13; i11++) {
            int charAt = sb2.charAt(i11) - '0';
            if ((i11 & 1) == 0) {
                charAt *= 3;
            }
            i10 += charAt;
        }
        int i12 = 10 - (i10 % 10);
        if (i12 == 10) {
            i12 = 0;
        }
        sb2.append(i12);
        p[] a10 = dVar.d().a();
        p[] a11 = dVar2.d().a();
        n nVar = new n(sb2.toString(), null, new p[]{a10[0], a10[1], a11[0], a11[1]}, d9.a.RSS_14);
        nVar.h(o.SYMBOLOGY_IDENTIFIER, "]e0");
        return nVar;
    }

    private b w(j9.a aVar, c cVar, boolean z10) {
        int i10;
        int[] j10 = j();
        Arrays.fill(j10, 0);
        if (z10) {
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
        if (z10) {
            i10 = 16;
        } else {
            i10 = 15;
        }
        float d10 = k9.a.d(j10) / i10;
        int[] n10 = n();
        int[] l10 = l();
        float[] o10 = o();
        float[] m10 = m();
        for (int i13 = 0; i13 < j10.length; i13++) {
            float f10 = j10[i13] / d10;
            int i14 = (int) (0.5f + f10);
            if (i14 < 1) {
                i14 = 1;
            } else if (i14 > 8) {
                i14 = 8;
            }
            int i15 = i13 / 2;
            if ((i13 & 1) == 0) {
                n10[i15] = i14;
                o10[i15] = f10 - i14;
            } else {
                l10[i15] = i14;
                m10[i15] = f10 - i14;
            }
        }
        t(z10, i10);
        int i16 = 0;
        int i17 = 0;
        for (int length2 = n10.length - 1; length2 >= 0; length2--) {
            int i18 = n10[length2];
            i16 = (i16 * 9) + i18;
            i17 += i18;
        }
        int i19 = 0;
        int i20 = 0;
        for (int length3 = l10.length - 1; length3 >= 0; length3--) {
            int i21 = l10[length3];
            i19 = (i19 * 9) + i21;
            i20 += i21;
        }
        int i22 = i16 + (i19 * 3);
        if (z10) {
            if ((i17 & 1) == 0 && i17 <= 12 && i17 >= 4) {
                int i23 = (12 - i17) / 2;
                int i24 = f29565m[i23];
                int i25 = 9 - i24;
                return new b((f.b(n10, i24, false) * f29561i[i23]) + f.b(l10, i25, true) + f29563k[i23], i22);
            }
            throw j.a();
        } else if ((i20 & 1) == 0 && i20 <= 10 && i20 >= 4) {
            int i26 = (10 - i20) / 2;
            int i27 = f29566n[i26];
            return new b((f.b(l10, 9 - i27, false) * f29562j[i26]) + f.b(n10, i27, true) + f29564l[i26], i22);
        } else {
            throw j.a();
        }
    }

    private d x(j9.a aVar, boolean z10, int i10, Map map) {
        q qVar;
        try {
            c z11 = z(aVar, i10, z10, y(aVar, z10));
            if (map == null) {
                qVar = null;
            } else {
                qVar = (q) map.get(d9.e.NEED_RESULT_POINT_CALLBACK);
            }
            if (qVar != null) {
                int[] b10 = z11.b();
                float f10 = ((b10[0] + b10[1]) - 1) / 2.0f;
                if (z10) {
                    f10 = (aVar.i() - 1) - f10;
                }
                qVar.a(new p(f10, i10));
            }
            b w10 = w(aVar, z11, true);
            b w11 = w(aVar, z11, false);
            return new d((w10.b() * 1597) + w11.b(), w10.a() + (w11.a() * 4), z11);
        } catch (j unused) {
            return null;
        }
    }

    private int[] y(j9.a aVar, boolean z10) {
        int[] k10 = k();
        k10[0] = 0;
        k10[1] = 0;
        k10[2] = 0;
        k10[3] = 0;
        int i10 = aVar.i();
        int i11 = 0;
        boolean z11 = false;
        while (i11 < i10) {
            z11 = !aVar.c(i11);
            if (z10 == z11) {
                break;
            }
            i11++;
        }
        int i12 = 0;
        int i13 = i11;
        while (i11 < i10) {
            if (aVar.c(i11) != z11) {
                k10[i12] = k10[i12] + 1;
            } else {
                if (i12 == 3) {
                    if (a.q(k10)) {
                        return new int[]{i13, i11};
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
                z11 = !z11;
            }
            i11++;
        }
        throw j.a();
    }

    private c z(j9.a aVar, int i10, boolean z10, int[] iArr) {
        int i11;
        int i12;
        boolean c10 = aVar.c(iArr[0]);
        int i13 = iArr[0] - 1;
        while (i13 >= 0 && c10 != aVar.c(i13)) {
            i13--;
        }
        int i14 = i13 + 1;
        int[] k10 = k();
        System.arraycopy(k10, 0, k10, 1, k10.length - 1);
        k10[0] = iArr[0] - i14;
        int r10 = a.r(k10, f29567o);
        int i15 = iArr[1];
        if (z10) {
            i11 = (aVar.i() - 1) - i15;
            i12 = (aVar.i() - 1) - i14;
        } else {
            i11 = i15;
            i12 = i14;
        }
        return new c(r10, new int[]{i14, iArr[1]}, i12, i11, i10);
    }

    @Override // r9.k, d9.l
    public void a() {
        this.f29568g.clear();
        this.f29569h.clear();
    }

    @Override // r9.k
    public n d(int i10, j9.a aVar, Map map) {
        s(this.f29568g, x(aVar, false, i10, map));
        aVar.l();
        s(this.f29569h, x(aVar, true, i10, map));
        aVar.l();
        for (d dVar : this.f29568g) {
            if (dVar.c() > 1) {
                for (d dVar2 : this.f29569h) {
                    if (dVar2.c() > 1 && u(dVar, dVar2)) {
                        return v(dVar, dVar2);
                    }
                }
                continue;
            }
        }
        throw j.a();
    }
}
