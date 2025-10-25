package r9;
/* loaded from: classes.dex */
public final class b extends k {

    /* renamed from: a  reason: collision with root package name */
    static final int[][] f28998a;

    static {
        int[] iArr = new int[6];
        // fill-array-data instruction
        iArr[0] = 1;
        iArr[1] = 2;
        iArr[2] = 2;
        iArr[3] = 2;
        iArr[4] = 3;
        iArr[5] = 1;
        f28998a = new int[][]{new int[]{2, 1, 2, 2, 2, 2}, new int[]{2, 2, 2, 1, 2, 2}, new int[]{2, 2, 2, 2, 2, 1}, new int[]{1, 2, 1, 2, 2, 3}, new int[]{1, 2, 1, 3, 2, 2}, new int[]{1, 3, 1, 2, 2, 2}, new int[]{1, 2, 2, 2, 1, 3}, new int[]{1, 2, 2, 3, 1, 2}, new int[]{1, 3, 2, 2, 1, 2}, new int[]{2, 2, 1, 2, 1, 3}, new int[]{2, 2, 1, 3, 1, 2}, new int[]{2, 3, 1, 2, 1, 2}, new int[]{1, 1, 2, 2, 3, 2}, new int[]{1, 2, 2, 1, 3, 2}, iArr, new int[]{1, 1, 3, 2, 2, 2}, new int[]{1, 2, 3, 1, 2, 2}, new int[]{1, 2, 3, 2, 2, 1}, new int[]{2, 2, 3, 2, 1, 1}, new int[]{2, 2, 1, 1, 3, 2}, new int[]{2, 2, 1, 2, 3, 1}, new int[]{2, 1, 3, 2, 1, 2}, new int[]{2, 2, 3, 1, 1, 2}, new int[]{3, 1, 2, 1, 3, 1}, new int[]{3, 1, 1, 2, 2, 2}, new int[]{3, 2, 1, 1, 2, 2}, new int[]{3, 2, 1, 2, 2, 1}, new int[]{3, 1, 2, 2, 1, 2}, new int[]{3, 2, 2, 1, 1, 2}, new int[]{3, 2, 2, 2, 1, 1}, new int[]{2, 1, 2, 1, 2, 3}, new int[]{2, 1, 2, 3, 2, 1}, new int[]{2, 3, 2, 1, 2, 1}, new int[]{1, 1, 1, 3, 2, 3}, new int[]{1, 3, 1, 1, 2, 3}, new int[]{1, 3, 1, 3, 2, 1}, new int[]{1, 1, 2, 3, 1, 3}, new int[]{1, 3, 2, 1, 1, 3}, new int[]{1, 3, 2, 3, 1, 1}, new int[]{2, 1, 1, 3, 1, 3}, new int[]{2, 3, 1, 1, 1, 3}, new int[]{2, 3, 1, 3, 1, 1}, new int[]{1, 1, 2, 1, 3, 3}, new int[]{1, 1, 2, 3, 3, 1}, new int[]{1, 3, 2, 1, 3, 1}, new int[]{1, 1, 3, 1, 2, 3}, new int[]{1, 1, 3, 3, 2, 1}, new int[]{1, 3, 3, 1, 2, 1}, new int[]{3, 1, 3, 1, 2, 1}, new int[]{2, 1, 1, 3, 3, 1}, new int[]{2, 3, 1, 1, 3, 1}, new int[]{2, 1, 3, 1, 1, 3}, new int[]{2, 1, 3, 3, 1, 1}, new int[]{2, 1, 3, 1, 3, 1}, new int[]{3, 1, 1, 1, 2, 3}, new int[]{3, 1, 1, 3, 2, 1}, new int[]{3, 3, 1, 1, 2, 1}, new int[]{3, 1, 2, 1, 1, 3}, new int[]{3, 1, 2, 3, 1, 1}, new int[]{3, 3, 2, 1, 1, 1}, new int[]{3, 1, 4, 1, 1, 1}, new int[]{2, 2, 1, 4, 1, 1}, new int[]{4, 3, 1, 1, 1, 1}, new int[]{1, 1, 1, 2, 2, 4}, new int[]{1, 1, 1, 4, 2, 2}, new int[]{1, 2, 1, 1, 2, 4}, new int[]{1, 2, 1, 4, 2, 1}, new int[]{1, 4, 1, 1, 2, 2}, new int[]{1, 4, 1, 2, 2, 1}, new int[]{1, 1, 2, 2, 1, 4}, new int[]{1, 1, 2, 4, 1, 2}, new int[]{1, 2, 2, 1, 1, 4}, new int[]{1, 2, 2, 4, 1, 1}, new int[]{1, 4, 2, 1, 1, 2}, new int[]{1, 4, 2, 2, 1, 1}, new int[]{2, 4, 1, 2, 1, 1}, new int[]{2, 2, 1, 1, 1, 4}, new int[]{4, 1, 3, 1, 1, 1}, new int[]{2, 4, 1, 1, 1, 2}, new int[]{1, 3, 4, 1, 1, 1}, new int[]{1, 1, 1, 2, 4, 2}, new int[]{1, 2, 1, 1, 4, 2}, new int[]{1, 2, 1, 2, 4, 1}, new int[]{1, 1, 4, 2, 1, 2}, new int[]{1, 2, 4, 1, 1, 2}, new int[]{1, 2, 4, 2, 1, 1}, new int[]{4, 1, 1, 2, 1, 2}, new int[]{4, 2, 1, 1, 1, 2}, new int[]{4, 2, 1, 2, 1, 1}, new int[]{2, 1, 2, 1, 4, 1}, new int[]{2, 1, 4, 1, 2, 1}, new int[]{4, 1, 2, 1, 2, 1}, new int[]{1, 1, 1, 1, 4, 3}, new int[]{1, 1, 1, 3, 4, 1}, new int[]{1, 3, 1, 1, 4, 1}, new int[]{1, 1, 4, 1, 1, 3}, new int[]{1, 1, 4, 3, 1, 1}, new int[]{4, 1, 1, 1, 1, 3}, new int[]{4, 1, 1, 3, 1, 1}, new int[]{1, 1, 3, 1, 4, 1}, new int[]{1, 1, 4, 1, 3, 1}, new int[]{3, 1, 1, 1, 4, 1}, new int[]{4, 1, 1, 1, 3, 1}, new int[]{2, 1, 1, 4, 1, 2}, new int[]{2, 1, 1, 2, 1, 4}, new int[]{2, 1, 1, 2, 3, 2}, new int[]{2, 3, 3, 1, 1, 1, 2}};
    }

    private static int i(j9.a aVar, int[] iArr, int i10) {
        k.g(aVar, i10, iArr);
        float f10 = 0.25f;
        int i11 = -1;
        int i12 = 0;
        while (true) {
            int[][] iArr2 = f28998a;
            if (i12 >= iArr2.length) {
                break;
            }
            float f11 = k.f(iArr, iArr2[i12], 0.7f);
            if (f11 < f10) {
                i11 = i12;
                f10 = f11;
            }
            i12++;
        }
        if (i11 >= 0) {
            return i11;
        }
        throw d9.j.a();
    }

    private static int[] j(j9.a aVar) {
        int i10 = aVar.i();
        int e10 = aVar.e(0);
        int[] iArr = new int[6];
        boolean z10 = false;
        int i11 = 0;
        int i12 = e10;
        while (e10 < i10) {
            if (aVar.c(e10) != z10) {
                iArr[i11] = iArr[i11] + 1;
            } else {
                if (i11 == 5) {
                    int i13 = -1;
                    float f10 = 0.25f;
                    for (int i14 = 103; i14 <= 105; i14++) {
                        float f11 = k.f(iArr, f28998a[i14], 0.7f);
                        if (f11 < f10) {
                            i13 = i14;
                            f10 = f11;
                        }
                    }
                    if (i13 >= 0 && aVar.j(Math.max(0, i12 - ((e10 - i12) / 2)), i12, false)) {
                        return new int[]{i12, e10, i13};
                    }
                    i12 += iArr[0] + iArr[1];
                    int i15 = i11 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i15);
                    iArr[i15] = 0;
                    iArr[i11] = 0;
                    i11--;
                } else {
                    i11++;
                }
                iArr[i11] = 1;
                z10 = !z10;
            }
            e10++;
        }
        throw d9.j.a();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00f4, code lost:
        if (r3 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0151, code lost:
        if (r3 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0153, code lost:
        r2 = false;
        r3 = false;
        r5 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:74:0x011f A[FALL_THROUGH, PHI: r21 r22 
      PHI: (r21v8 boolean) = (r21v5 boolean), (r21v5 boolean), (r21v5 boolean), (r21v5 boolean), (r21v15 boolean), (r21v15 boolean), (r21v15 boolean), (r21v15 boolean) binds: [B:73:0x011c, B:81:0x0133, B:85:0x013f, B:84:0x013b, B:43:0x00c5, B:51:0x00db, B:55:0x00e7, B:54:0x00e3] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r22v8 int) = (r22v1 int), (r22v6 int), (r22v6 int), (r22v6 int), (r22v1 int), (r22v12 int), (r22v12 int), (r22v12 int) binds: [B:73:0x011c, B:81:0x0133, B:85:0x013f, B:84:0x013b, B:43:0x00c5, B:51:0x00db, B:55:0x00e7, B:54:0x00e3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x015a A[PHI: r21 
      PHI: (r21v10 boolean) = (r21v5 boolean), (r21v15 boolean) binds: [B:73:0x011c, B:43:0x00c5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0162 A[PHI: r21 
      PHI: (r21v9 boolean) = (r21v5 boolean), (r21v15 boolean) binds: [B:73:0x011c, B:43:0x00c5] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // r9.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d9.n d(int r26, j9.a r27, java.util.Map r28) {
        /*
            Method dump skipped, instructions count: 702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: r9.b.d(int, j9.a, java.util.Map):d9.n");
    }
}
