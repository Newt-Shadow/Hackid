package r9;

import java.util.Arrays;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class p extends k {

    /* renamed from: d  reason: collision with root package name */
    static final int[] f29032d = {1, 1, 1};

    /* renamed from: e  reason: collision with root package name */
    static final int[] f29033e = {1, 1, 1, 1, 1};

    /* renamed from: f  reason: collision with root package name */
    static final int[] f29034f = {1, 1, 1, 1, 1, 1};

    /* renamed from: g  reason: collision with root package name */
    static final int[][] f29035g;

    /* renamed from: h  reason: collision with root package name */
    static final int[][] f29036h;

    /* renamed from: a  reason: collision with root package name */
    private final StringBuilder f29037a = new StringBuilder(20);

    /* renamed from: b  reason: collision with root package name */
    private final o f29038b = new o();

    /* renamed from: c  reason: collision with root package name */
    private final g f29039c = new g();

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        f29035g = iArr;
        int[][] iArr2 = new int[20];
        f29036h = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i10 = 10; i10 < 20; i10++) {
            int[] iArr3 = f29035g[i10 - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i11 = 0; i11 < iArr3.length; i11++) {
                iArr4[i11] = iArr3[(iArr3.length - i11) - 1];
            }
            f29036h[i10] = iArr4;
        }
    }

    static boolean j(CharSequence charSequence) {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i10 = length - 1;
        if (s(charSequence.subSequence(0, i10)) != Character.digit(charSequence.charAt(i10), 10)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(j9.a aVar, int[] iArr, int i10, int[][] iArr2) {
        k.g(aVar, i10, iArr);
        int length = iArr2.length;
        float f10 = 0.48f;
        int i11 = -1;
        for (int i12 = 0; i12 < length; i12++) {
            float f11 = k.f(iArr, iArr2[i12], 0.7f);
            if (f11 < f10) {
                i11 = i12;
                f10 = f11;
            }
        }
        if (i11 >= 0) {
            return i11;
        }
        throw d9.j.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] o(j9.a aVar, int i10, boolean z10, int[] iArr) {
        return p(aVar, i10, z10, iArr, new int[iArr.length]);
    }

    private static int[] p(j9.a aVar, int i10, boolean z10, int[] iArr, int[] iArr2) {
        int e10;
        int i11 = aVar.i();
        if (z10) {
            e10 = aVar.f(i10);
        } else {
            e10 = aVar.e(i10);
        }
        int length = iArr.length;
        boolean z11 = z10;
        int i12 = 0;
        int i13 = e10;
        while (e10 < i11) {
            if (aVar.c(e10) != z11) {
                iArr2[i12] = iArr2[i12] + 1;
            } else {
                if (i12 == length - 1) {
                    if (k.f(iArr2, iArr, 0.7f) < 0.48f) {
                        return new int[]{i13, e10};
                    }
                    i13 += iArr2[0] + iArr2[1];
                    int i14 = i12 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i14);
                    iArr2[i14] = 0;
                    iArr2[i12] = 0;
                    i12--;
                } else {
                    i12++;
                }
                iArr2[i12] = 1;
                z11 = !z11;
            }
            e10++;
        }
        throw d9.j.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] q(j9.a aVar) {
        int[] iArr = new int[f29032d.length];
        int[] iArr2 = null;
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            int[] iArr3 = f29032d;
            Arrays.fill(iArr, 0, iArr3.length, 0);
            iArr2 = p(aVar, i10, false, iArr3, iArr);
            int i11 = iArr2[0];
            int i12 = iArr2[1];
            int i13 = i11 - (i12 - i11);
            if (i13 >= 0) {
                z10 = aVar.j(i13, i11, false);
            }
            i10 = i12;
        }
        return iArr2;
    }

    static int s(CharSequence charSequence) {
        int length = charSequence.length();
        int i10 = 0;
        for (int i11 = length - 1; i11 >= 0; i11 -= 2) {
            int charAt = charSequence.charAt(i11) - '0';
            if (charAt >= 0 && charAt <= 9) {
                i10 += charAt;
            } else {
                throw d9.f.a();
            }
        }
        int i12 = i10 * 3;
        for (int i13 = length - 2; i13 >= 0; i13 -= 2) {
            int charAt2 = charSequence.charAt(i13) - '0';
            if (charAt2 >= 0 && charAt2 <= 9) {
                i12 += charAt2;
            } else {
                throw d9.f.a();
            }
        }
        return (1000 - i12) % 10;
    }

    @Override // r9.k
    public d9.n d(int i10, j9.a aVar, Map map) {
        return n(i10, aVar, q(aVar), map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i(String str) {
        return j(str);
    }

    int[] l(j9.a aVar, int i10) {
        return o(aVar, i10, false, f29032d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int m(j9.a aVar, int[] iArr, StringBuilder sb2);

    public d9.n n(int i10, j9.a aVar, int[] iArr, Map map) {
        d9.q qVar;
        int i11;
        String c10;
        int[] iArr2 = null;
        if (map == null) {
            qVar = null;
        } else {
            qVar = (d9.q) map.get(d9.e.NEED_RESULT_POINT_CALLBACK);
        }
        boolean z10 = true;
        int i12 = 0;
        if (qVar != null) {
            qVar.a(new d9.p((iArr[0] + iArr[1]) / 2.0f, i10));
        }
        StringBuilder sb2 = this.f29037a;
        sb2.setLength(0);
        int m10 = m(aVar, iArr, sb2);
        if (qVar != null) {
            qVar.a(new d9.p(m10, i10));
        }
        int[] l10 = l(aVar, m10);
        if (qVar != null) {
            qVar.a(new d9.p((l10[0] + l10[1]) / 2.0f, i10));
        }
        int i13 = l10[1];
        int i14 = (i13 - l10[0]) + i13;
        if (i14 < aVar.i() && aVar.j(i13, i14, false)) {
            String sb3 = sb2.toString();
            if (sb3.length() >= 8) {
                if (i(sb3)) {
                    d9.a r10 = r();
                    float f10 = i10;
                    d9.n nVar = new d9.n(sb3, null, new d9.p[]{new d9.p((iArr[1] + iArr[0]) / 2.0f, f10), new d9.p((l10[1] + l10[0]) / 2.0f, f10)}, r10);
                    try {
                        d9.n a10 = this.f29038b.a(i10, aVar, l10[1]);
                        nVar.h(d9.o.UPC_EAN_EXTENSION, a10.f());
                        nVar.g(a10.d());
                        nVar.a(a10.e());
                        i11 = a10.f().length();
                    } catch (d9.m unused) {
                        i11 = 0;
                    }
                    if (map != null) {
                        iArr2 = (int[]) map.get(d9.e.ALLOWED_EAN_EXTENSIONS);
                    }
                    if (iArr2 != null) {
                        int length = iArr2.length;
                        int i15 = 0;
                        while (true) {
                            if (i15 < length) {
                                if (i11 == iArr2[i15]) {
                                    break;
                                }
                                i15++;
                            } else {
                                z10 = false;
                                break;
                            }
                        }
                        if (!z10) {
                            throw d9.j.a();
                        }
                    }
                    if ((r10 == d9.a.EAN_13 || r10 == d9.a.UPC_A) && (c10 = this.f29039c.c(sb3)) != null) {
                        nVar.h(d9.o.POSSIBLE_COUNTRY, c10);
                    }
                    if (r10 == d9.a.EAN_8) {
                        i12 = 4;
                    }
                    nVar.h(d9.o.SYMBOLOGY_IDENTIFIER, "]E" + i12);
                    return nVar;
                }
                throw d9.d.a();
            }
            throw d9.f.a();
        }
        throw d9.j.a();
    }

    abstract d9.a r();
}
