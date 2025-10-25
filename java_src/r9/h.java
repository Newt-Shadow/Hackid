package r9;

import java.util.Map;
/* loaded from: classes.dex */
public final class h extends k {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f29014b = {6, 8, 10, 12, 14};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f29015c = {1, 1, 1, 1};

    /* renamed from: d  reason: collision with root package name */
    private static final int[][] f29016d = {new int[]{1, 1, 2}, new int[]{1, 1, 3}};

    /* renamed from: e  reason: collision with root package name */
    private static final int[][] f29017e = {new int[]{1, 1, 2, 2, 1}, new int[]{2, 1, 1, 1, 2}, new int[]{1, 2, 1, 1, 2}, new int[]{2, 2, 1, 1, 1}, new int[]{1, 1, 2, 1, 2}, new int[]{2, 1, 2, 1, 1}, new int[]{1, 2, 2, 1, 1}, new int[]{1, 1, 1, 2, 2}, new int[]{2, 1, 1, 2, 1}, new int[]{1, 2, 1, 2, 1}, new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    /* renamed from: a  reason: collision with root package name */
    private int f29018a = -1;

    private static int i(int[] iArr) {
        int length = f29017e.length;
        float f10 = 0.38f;
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            float f11 = k.f(iArr, f29017e[i11], 0.5f);
            if (f11 < f10) {
                i10 = i11;
                f10 = f11;
            } else if (f11 == f10) {
                i10 = -1;
            }
        }
        if (i10 >= 0) {
            return i10 % 10;
        }
        throw d9.j.a();
    }

    private int[] j(j9.a aVar) {
        int i10;
        int[] m10;
        aVar.l();
        try {
            try {
                m10 = m(aVar, n(aVar), f29016d[0]);
            } catch (d9.j unused) {
                m10 = m(aVar, i10, f29016d[1]);
            }
            o(aVar, m10[0]);
            int i11 = m10[0];
            m10[0] = aVar.i() - m10[1];
            m10[1] = aVar.i() - i11;
            return m10;
        } finally {
            aVar.l();
        }
    }

    private static void k(j9.a aVar, int i10, int i11, StringBuilder sb2) {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        while (i10 < i11) {
            k.g(aVar, i10, iArr);
            for (int i12 = 0; i12 < 5; i12++) {
                int i13 = i12 * 2;
                iArr2[i12] = iArr[i13];
                iArr3[i12] = iArr[i13 + 1];
            }
            sb2.append((char) (i(iArr2) + 48));
            sb2.append((char) (i(iArr3) + 48));
            for (int i14 = 0; i14 < 10; i14++) {
                i10 += iArr[i14];
            }
        }
    }

    private int[] l(j9.a aVar) {
        int[] m10 = m(aVar, n(aVar), f29015c);
        int i10 = m10[1];
        int i11 = m10[0];
        this.f29018a = (i10 - i11) / 4;
        o(aVar, i11);
        return m10;
    }

    private static int[] m(j9.a aVar, int i10, int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int i11 = aVar.i();
        int i12 = i10;
        boolean z10 = false;
        int i13 = 0;
        while (i10 < i11) {
            if (aVar.c(i10) != z10) {
                iArr2[i13] = iArr2[i13] + 1;
            } else {
                if (i13 == length - 1) {
                    if (k.f(iArr2, iArr, 0.5f) < 0.38f) {
                        return new int[]{i12, i10};
                    }
                    i12 += iArr2[0] + iArr2[1];
                    int i14 = i13 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i14);
                    iArr2[i14] = 0;
                    iArr2[i13] = 0;
                    i13--;
                } else {
                    i13++;
                }
                iArr2[i13] = 1;
                z10 = !z10;
            }
            i10++;
        }
        throw d9.j.a();
    }

    private static int n(j9.a aVar) {
        int i10 = aVar.i();
        int e10 = aVar.e(0);
        if (e10 != i10) {
            return e10;
        }
        throw d9.j.a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void o(j9.a r3, int r4) {
        /*
            r2 = this;
            int r0 = r2.f29018a
            int r0 = r0 * 10
            int r0 = java.lang.Math.min(r0, r4)
            int r4 = r4 + (-1)
        La:
            if (r0 <= 0) goto L1a
            if (r4 < 0) goto L1a
            boolean r1 = r3.c(r4)
            if (r1 == 0) goto L15
            goto L1a
        L15:
            int r0 = r0 + (-1)
            int r4 = r4 + (-1)
            goto La
        L1a:
            if (r0 != 0) goto L1d
            return
        L1d:
            d9.j r3 = d9.j.a()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: r9.h.o(j9.a, int):void");
    }

    @Override // r9.k
    public d9.n d(int i10, j9.a aVar, Map map) {
        int[] iArr;
        boolean z10;
        int[] l10 = l(aVar);
        int[] j10 = j(aVar);
        StringBuilder sb2 = new StringBuilder(20);
        k(aVar, l10[1], j10[0], sb2);
        String sb3 = sb2.toString();
        if (map != null) {
            iArr = (int[]) map.get(d9.e.ALLOWED_LENGTHS);
        } else {
            iArr = null;
        }
        if (iArr == null) {
            iArr = f29014b;
        }
        int length = sb3.length();
        int length2 = iArr.length;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i11 < length2) {
                int i13 = iArr[i11];
                if (length == i13) {
                    z10 = true;
                    break;
                }
                if (i13 > i12) {
                    i12 = i13;
                }
                i11++;
            } else {
                z10 = false;
                break;
            }
        }
        if (!z10 && length > i12) {
            z10 = true;
        }
        if (z10) {
            float f10 = i10;
            d9.n nVar = new d9.n(sb3, null, new d9.p[]{new d9.p(l10[1], f10), new d9.p(j10[0], f10)}, d9.a.ITF);
            nVar.h(d9.o.SYMBOLOGY_IDENTIFIER, "]I0");
            return nVar;
        }
        throw d9.f.a();
    }
}
