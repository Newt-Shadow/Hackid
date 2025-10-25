package j9;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class a implements Cloneable {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f24489c = new int[0];

    /* renamed from: a  reason: collision with root package name */
    private int[] f24490a;

    /* renamed from: b  reason: collision with root package name */
    private int f24491b;

    public a(int i10) {
        this.f24491b = i10;
        this.f24490a = k(i10);
    }

    private static int[] k(int i10) {
        return new int[(i10 + 31) / 32];
    }

    public void a() {
        int length = this.f24490a.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f24490a[i10] = 0;
        }
    }

    /* renamed from: b */
    public a clone() {
        return new a((int[]) this.f24490a.clone(), this.f24491b);
    }

    public boolean c(int i10) {
        if (((1 << (i10 & 31)) & this.f24490a[i10 / 32]) != 0) {
            return true;
        }
        return false;
    }

    public int[] d() {
        return this.f24490a;
    }

    public int e(int i10) {
        int i11 = this.f24491b;
        if (i10 >= i11) {
            return i11;
        }
        int i12 = i10 / 32;
        int i13 = (-(1 << (i10 & 31))) & this.f24490a[i12];
        while (i13 == 0) {
            i12++;
            int[] iArr = this.f24490a;
            if (i12 == iArr.length) {
                return this.f24491b;
            }
            i13 = iArr[i12];
        }
        return Math.min((i12 * 32) + Integer.numberOfTrailingZeros(i13), this.f24491b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f24491b != aVar.f24491b || !Arrays.equals(this.f24490a, aVar.f24490a)) {
            return false;
        }
        return true;
    }

    public int f(int i10) {
        int i11 = this.f24491b;
        if (i10 >= i11) {
            return i11;
        }
        int i12 = i10 / 32;
        int i13 = (-(1 << (i10 & 31))) & (~this.f24490a[i12]);
        while (i13 == 0) {
            i12++;
            int[] iArr = this.f24490a;
            if (i12 == iArr.length) {
                return this.f24491b;
            }
            i13 = ~iArr[i12];
        }
        return Math.min((i12 * 32) + Integer.numberOfTrailingZeros(i13), this.f24491b);
    }

    public int hashCode() {
        return (this.f24491b * 31) + Arrays.hashCode(this.f24490a);
    }

    public int i() {
        return this.f24491b;
    }

    public boolean j(int i10, int i11, boolean z10) {
        int i12;
        if (i11 >= i10 && i10 >= 0 && i11 <= this.f24491b) {
            if (i11 == i10) {
                return true;
            }
            int i13 = i11 - 1;
            int i14 = i10 / 32;
            int i15 = i13 / 32;
            for (int i16 = i14; i16 <= i15; i16++) {
                int i17 = 31;
                if (i16 > i14) {
                    i12 = 0;
                } else {
                    i12 = i10 & 31;
                }
                if (i16 >= i15) {
                    i17 = 31 & i13;
                }
                int i18 = (2 << i17) - (1 << i12);
                int i19 = this.f24490a[i16] & i18;
                if (!z10) {
                    i18 = 0;
                }
                if (i19 != i18) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalArgumentException();
    }

    public void l() {
        int[] iArr = new int[this.f24490a.length];
        int i10 = (this.f24491b - 1) / 32;
        int i11 = i10 + 1;
        for (int i12 = 0; i12 < i11; i12++) {
            iArr[i10 - i12] = Integer.reverse(this.f24490a[i12]);
        }
        int i13 = this.f24491b;
        int i14 = i11 * 32;
        if (i13 != i14) {
            int i15 = i14 - i13;
            int i16 = iArr[0] >>> i15;
            for (int i17 = 1; i17 < i11; i17++) {
                int i18 = iArr[i17];
                iArr[i17 - 1] = i16 | (i18 << (32 - i15));
                i16 = i18 >>> i15;
            }
            iArr[i11 - 1] = i16;
        }
        this.f24490a = iArr;
    }

    public void m(int i10) {
        int[] iArr = this.f24490a;
        int i11 = i10 / 32;
        iArr[i11] = (1 << (i10 & 31)) | iArr[i11];
    }

    public void n(int i10, int i11) {
        this.f24490a[i10 / 32] = i11;
    }

    public String toString() {
        char c10;
        int i10 = this.f24491b;
        StringBuilder sb2 = new StringBuilder(i10 + (i10 / 8) + 1);
        for (int i11 = 0; i11 < this.f24491b; i11++) {
            if ((i11 & 7) == 0) {
                sb2.append(' ');
            }
            if (c(i11)) {
                c10 = 'X';
            } else {
                c10 = '.';
            }
            sb2.append(c10);
        }
        return sb2.toString();
    }

    a(int[] iArr, int i10) {
        this.f24490a = iArr;
        this.f24491b = i10;
    }
}
