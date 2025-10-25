package y9;

import d9.c;
import d9.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f33073a = {0, 4, 1, 5};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f33074b = {6, 2, 7, 3};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f33075c = {8, 1, 1, 1, 1, 1, 1, 3};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f33076d = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f33077e = {0, 180, 270, 90};

    private static j9.b a(j9.b bVar, int i10) {
        if (i10 % 360 == 0) {
            return bVar;
        }
        j9.b clone = bVar.clone();
        clone.n(i10);
        return clone;
    }

    private static void b(p[] pVarArr, p[] pVarArr2, int[] iArr) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            pVarArr[iArr[i10]] = pVarArr2[i10];
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
        if (r4 != 0) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
        r3 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
        if (r3.hasNext() == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002a, code lost:
        r4 = (d9.p[]) r3.next();
        r7 = r4[1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
        if (r7 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
        r2 = (int) java.lang.Math.max(r2, r7.d());
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003e, code lost:
        r4 = r4[3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
        if (r4 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
        r2 = java.lang.Math.max(r2, (int) r4.d());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List c(boolean r8, j9.b r9) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            r2 = r1
            r3 = r2
        L8:
            r4 = r3
        L9:
            int r5 = r9.j()
            if (r2 >= r5) goto L79
            d9.p[] r3 = g(r9, r2, r3)
            r5 = r3[r1]
            r6 = 1
            if (r5 != 0) goto L50
            r5 = 3
            r7 = r3[r5]
            if (r7 != 0) goto L50
            if (r4 != 0) goto L20
            goto L79
        L20:
            java.util.Iterator r3 = r0.iterator()
        L24:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L4c
            java.lang.Object r4 = r3.next()
            d9.p[] r4 = (d9.p[]) r4
            r7 = r4[r6]
            if (r7 == 0) goto L3e
            float r2 = (float) r2
            float r7 = r7.d()
            float r2 = java.lang.Math.max(r2, r7)
            int r2 = (int) r2
        L3e:
            r4 = r4[r5]
            if (r4 == 0) goto L24
            float r4 = r4.d()
            int r4 = (int) r4
            int r2 = java.lang.Math.max(r2, r4)
            goto L24
        L4c:
            int r2 = r2 + 5
            r3 = r1
            goto L8
        L50:
            r0.add(r3)
            if (r8 != 0) goto L56
            goto L79
        L56:
            r2 = 2
            r4 = r3[r2]
            if (r4 == 0) goto L67
            float r4 = r4.c()
            int r4 = (int) r4
            r2 = r3[r2]
            float r2 = r2.d()
            goto L75
        L67:
            r2 = 4
            r4 = r3[r2]
            float r4 = r4.c()
            int r4 = (int) r4
            r2 = r3[r2]
            float r2 = r2.d()
        L75:
            int r2 = (int) r2
            r3 = r4
            r4 = r6
            goto L9
        L79:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: y9.a.c(boolean, j9.b):java.util.List");
    }

    public static b d(c cVar, Map map, boolean z10) {
        int[] iArr;
        j9.b a10 = cVar.a();
        for (int i10 : f33077e) {
            j9.b a11 = a(a10, i10);
            List c10 = c(z10, a11);
            if (!c10.isEmpty()) {
                return new b(a11, c10, i10);
            }
        }
        return new b(a10, new ArrayList(), 0);
    }

    private static int[] e(j9.b bVar, int i10, int i11, int i12, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i13 = 0;
        while (bVar.e(i10, i11) && i10 > 0) {
            int i14 = i13 + 1;
            if (i13 >= 3) {
                break;
            }
            i10--;
            i13 = i14;
        }
        int length = iArr.length;
        int i15 = i10;
        int i16 = 0;
        boolean z10 = false;
        while (i10 < i12) {
            if (bVar.e(i10, i11) != z10) {
                iArr2[i16] = iArr2[i16] + 1;
            } else {
                if (i16 == length - 1) {
                    if (h(iArr2, iArr) < 0.42f) {
                        return new int[]{i15, i10};
                    }
                    i15 += iArr2[0] + iArr2[1];
                    int i17 = i16 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i17);
                    iArr2[i17] = 0;
                    iArr2[i16] = 0;
                    i16--;
                } else {
                    i16++;
                }
                iArr2[i16] = 1;
                z10 = !z10;
            }
            i10++;
        }
        if (i16 == length - 1 && h(iArr2, iArr) < 0.42f) {
            return new int[]{i15, i10 - 1};
        }
        return null;
    }

    private static p[] f(j9.b bVar, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        boolean z10;
        int i15;
        p[] pVarArr = new p[4];
        int[] iArr2 = new int[iArr.length];
        int i16 = i12;
        while (true) {
            if (i16 < i10) {
                int[] e10 = e(bVar, i13, i16, i11, iArr, iArr2);
                if (e10 != null) {
                    int i17 = i16;
                    int[] iArr3 = e10;
                    int i18 = i17;
                    while (true) {
                        if (i18 > 0) {
                            int i19 = i18 - 1;
                            int[] e11 = e(bVar, i13, i19, i11, iArr, iArr2);
                            if (e11 != null) {
                                iArr3 = e11;
                                i18 = i19;
                            } else {
                                i15 = i19 + 1;
                                break;
                            }
                        } else {
                            i15 = i18;
                            break;
                        }
                    }
                    float f10 = i15;
                    pVarArr[0] = new p(iArr3[0], f10);
                    pVarArr[1] = new p(iArr3[1], f10);
                    z10 = true;
                    i16 = i15;
                } else {
                    i16 += 5;
                }
            } else {
                z10 = false;
                break;
            }
        }
        int i20 = i16 + 1;
        if (z10) {
            int[] iArr4 = {(int) pVarArr[0].c(), (int) pVarArr[1].c()};
            int i21 = i20;
            int i22 = 0;
            while (i21 < i10) {
                int[] e12 = e(bVar, iArr4[0], i21, i11, iArr, iArr2);
                if (e12 != null && Math.abs(iArr4[0] - e12[0]) < 5 && Math.abs(iArr4[1] - e12[1]) < 5) {
                    iArr4 = e12;
                    i22 = 0;
                } else if (i22 > 25) {
                    break;
                } else {
                    i22++;
                }
                i21++;
            }
            i20 = i21 - (i22 + 1);
            float f11 = i20;
            pVarArr[2] = new p(iArr4[0], f11);
            pVarArr[3] = new p(iArr4[1], f11);
        }
        if (i20 - i16 < i14) {
            Arrays.fill(pVarArr, (Object) null);
        }
        return pVarArr;
    }

    private static p[] g(j9.b bVar, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        p pVar;
        int j10 = bVar.j();
        int m10 = bVar.m();
        p[] pVarArr = new p[8];
        b(pVarArr, f(bVar, j10, m10, i10, i11, 10, f33075c), f33073a);
        p pVar2 = pVarArr[4];
        if (pVar2 != null) {
            i11 = (int) pVar2.c();
            i10 = (int) pVarArr[4].d();
            if (pVarArr[5] != null) {
                i12 = i10;
                i13 = i11;
                i14 = (int) Math.max((((int) pVar.d()) - i10) * 0.5f, 10.0f);
                b(pVarArr, f(bVar, j10, m10, i12, i13, i14, f33076d), f33074b);
                return pVarArr;
            }
        }
        i12 = i10;
        i13 = i11;
        i14 = 10;
        b(pVarArr, f(bVar, j10, m10, i12, i13, i14, f33076d), f33074b);
        return pVarArr;
    }

    private static float h(int[] iArr, int[] iArr2) {
        float f10;
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            i10 += iArr[i12];
            i11 += iArr2[i12];
        }
        if (i10 < i11) {
            return Float.POSITIVE_INFINITY;
        }
        float f11 = i10;
        float f12 = f11 / i11;
        float f13 = 0.8f * f12;
        float f14 = 0.0f;
        for (int i13 = 0; i13 < length; i13++) {
            float f15 = iArr2[i13] * f12;
            float f16 = iArr[i13];
            if (f16 > f15) {
                f10 = f16 - f15;
            } else {
                f10 = f15 - f16;
            }
            if (f10 > f13) {
                return Float.POSITIVE_INFINITY;
            }
            f14 += f10;
        }
        return f14 / f11;
    }
}
