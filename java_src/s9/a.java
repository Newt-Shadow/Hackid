package s9;

import d9.j;
import r9.k;
/* loaded from: classes.dex */
public abstract class a extends k {

    /* renamed from: b  reason: collision with root package name */
    private final int[] f29549b;

    /* renamed from: e  reason: collision with root package name */
    private final int[] f29552e;

    /* renamed from: f  reason: collision with root package name */
    private final int[] f29553f;

    /* renamed from: a  reason: collision with root package name */
    private final int[] f29548a = new int[4];

    /* renamed from: c  reason: collision with root package name */
    private final float[] f29550c = new float[4];

    /* renamed from: d  reason: collision with root package name */
    private final float[] f29551d = new float[4];

    /* JADX INFO: Access modifiers changed from: protected */
    public a() {
        int[] iArr = new int[8];
        this.f29549b = iArr;
        this.f29552e = new int[iArr.length / 2];
        this.f29553f = new int[iArr.length / 2];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void i(int[] iArr, float[] fArr) {
        int i10 = 0;
        float f10 = fArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            float f11 = fArr[i11];
            if (f11 < f10) {
                i10 = i11;
                f10 = f11;
            }
        }
        iArr[i10] = iArr[i10] - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void p(int[] iArr, float[] fArr) {
        int i10 = 0;
        float f10 = fArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            float f11 = fArr[i11];
            if (f11 > f10) {
                i10 = i11;
                f10 = f11;
            }
        }
        iArr[i10] = iArr[i10] + 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean q(int[] iArr) {
        int i10;
        float f10 = (iArr[0] + iArr[1]) / ((iArr[2] + i10) + iArr[3]);
        if (f10 < 0.7916667f || f10 > 0.89285713f) {
            return false;
        }
        int i11 = Integer.MAX_VALUE;
        int i12 = Integer.MIN_VALUE;
        for (int i13 : iArr) {
            if (i13 > i12) {
                i12 = i13;
            }
            if (i13 < i11) {
                i11 = i13;
            }
        }
        if (i12 >= i11 * 10) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int r(int[] iArr, int[][] iArr2) {
        for (int i10 = 0; i10 < iArr2.length; i10++) {
            if (k.f(iArr, iArr2[i10], 0.45f) < 0.2f) {
                return i10;
            }
        }
        throw j.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int[] j() {
        return this.f29549b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int[] k() {
        return this.f29548a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int[] l() {
        return this.f29553f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float[] m() {
        return this.f29551d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int[] n() {
        return this.f29552e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float[] o() {
        return this.f29550c;
    }
}
