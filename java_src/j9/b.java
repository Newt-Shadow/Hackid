package j9;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class b implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private int f24492a;

    /* renamed from: b  reason: collision with root package name */
    private int f24493b;

    /* renamed from: c  reason: collision with root package name */
    private int f24494c;

    /* renamed from: d  reason: collision with root package name */
    private int[] f24495d;

    public b(int i10) {
        this(i10, i10);
    }

    private String a(String str, String str2, String str3) {
        String str4;
        StringBuilder sb2 = new StringBuilder(this.f24493b * (this.f24492a + 1));
        for (int i10 = 0; i10 < this.f24493b; i10++) {
            for (int i11 = 0; i11 < this.f24492a; i11++) {
                if (e(i11, i10)) {
                    str4 = str;
                } else {
                    str4 = str2;
                }
                sb2.append(str4);
            }
            sb2.append(str3);
        }
        return sb2.toString();
    }

    /* renamed from: b */
    public b clone() {
        return new b(this.f24492a, this.f24493b, this.f24494c, (int[]) this.f24495d.clone());
    }

    public void c() {
        int length = this.f24495d.length;
        for (int i10 = 0; i10 < length; i10++) {
            int[] iArr = this.f24495d;
            iArr[i10] = ~iArr[i10];
        }
    }

    public void d(int i10, int i11) {
        int i12 = (i11 * this.f24494c) + (i10 / 32);
        int[] iArr = this.f24495d;
        iArr[i12] = (1 << (i10 & 31)) ^ iArr[i12];
    }

    public boolean e(int i10, int i11) {
        if (((this.f24495d[(i11 * this.f24494c) + (i10 / 32)] >>> (i10 & 31)) & 1) != 0) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f24492a != bVar.f24492a || this.f24493b != bVar.f24493b || this.f24494c != bVar.f24494c || !Arrays.equals(this.f24495d, bVar.f24495d)) {
            return false;
        }
        return true;
    }

    public int[] f() {
        int length = this.f24495d.length - 1;
        while (length >= 0 && this.f24495d[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i10 = this.f24494c;
        int i11 = length / i10;
        int i12 = (length % i10) * 32;
        int i13 = 31;
        while ((this.f24495d[length] >>> i13) == 0) {
            i13--;
        }
        return new int[]{i12 + i13, i11};
    }

    public int hashCode() {
        int i10 = this.f24492a;
        return (((((((i10 * 31) + i10) * 31) + this.f24493b) * 31) + this.f24494c) * 31) + Arrays.hashCode(this.f24495d);
    }

    public int[] i() {
        int i10 = this.f24492a;
        int i11 = this.f24493b;
        int i12 = -1;
        int i13 = -1;
        for (int i14 = 0; i14 < this.f24493b; i14++) {
            int i15 = 0;
            while (true) {
                int i16 = this.f24494c;
                if (i15 < i16) {
                    int i17 = this.f24495d[(i16 * i14) + i15];
                    if (i17 != 0) {
                        if (i14 < i11) {
                            i11 = i14;
                        }
                        if (i14 > i13) {
                            i13 = i14;
                        }
                        int i18 = i15 * 32;
                        if (i18 < i10) {
                            int i19 = 0;
                            while ((i17 << (31 - i19)) == 0) {
                                i19++;
                            }
                            int i20 = i19 + i18;
                            if (i20 < i10) {
                                i10 = i20;
                            }
                        }
                        if (i18 + 31 > i12) {
                            int i21 = 31;
                            while ((i17 >>> i21) == 0) {
                                i21--;
                            }
                            int i22 = i18 + i21;
                            if (i22 > i12) {
                                i12 = i22;
                            }
                        }
                    }
                    i15++;
                }
            }
        }
        if (i12 >= i10 && i13 >= i11) {
            return new int[]{i10, i11, (i12 - i10) + 1, (i13 - i11) + 1};
        }
        return null;
    }

    public int j() {
        return this.f24493b;
    }

    public a k(int i10, a aVar) {
        if (aVar != null && aVar.i() >= this.f24492a) {
            aVar.a();
        } else {
            aVar = new a(this.f24492a);
        }
        int i11 = i10 * this.f24494c;
        for (int i12 = 0; i12 < this.f24494c; i12++) {
            aVar.n(i12 * 32, this.f24495d[i11 + i12]);
        }
        return aVar;
    }

    public int[] l() {
        int[] iArr;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            iArr = this.f24495d;
            if (i11 >= iArr.length || iArr[i11] != 0) {
                break;
            }
            i11++;
        }
        if (i11 == iArr.length) {
            return null;
        }
        int i12 = this.f24494c;
        int i13 = i11 / i12;
        int i14 = (i11 % i12) * 32;
        while ((iArr[i11] << (31 - i10)) == 0) {
            i10++;
        }
        return new int[]{i14 + i10, i13};
    }

    public int m() {
        return this.f24492a;
    }

    public void n(int i10) {
        int i11 = i10 % 360;
        if (i11 != 0) {
            if (i11 != 90) {
                if (i11 != 180) {
                    if (i11 == 270) {
                        p();
                        o();
                        return;
                    }
                    throw new IllegalArgumentException("degrees must be a multiple of 0, 90, 180, or 270");
                }
                o();
                return;
            }
            p();
        }
    }

    public void o() {
        a aVar = new a(this.f24492a);
        a aVar2 = new a(this.f24492a);
        int i10 = (this.f24493b + 1) / 2;
        for (int i11 = 0; i11 < i10; i11++) {
            aVar = k(i11, aVar);
            int i12 = (this.f24493b - 1) - i11;
            aVar2 = k(i12, aVar2);
            aVar.l();
            aVar2.l();
            t(i11, aVar2);
            t(i12, aVar);
        }
    }

    public void p() {
        int i10 = this.f24493b;
        int i11 = this.f24492a;
        int i12 = (i10 + 31) / 32;
        int[] iArr = new int[i12 * i11];
        for (int i13 = 0; i13 < this.f24493b; i13++) {
            for (int i14 = 0; i14 < this.f24492a; i14++) {
                if (((this.f24495d[(this.f24494c * i13) + (i14 / 32)] >>> (i14 & 31)) & 1) != 0) {
                    int i15 = (((i11 - 1) - i14) * i12) + (i13 / 32);
                    iArr[i15] = (1 << (i13 & 31)) | iArr[i15];
                }
            }
        }
        this.f24492a = i10;
        this.f24493b = i11;
        this.f24494c = i12;
        this.f24495d = iArr;
    }

    public void q(int i10, int i11) {
        int i12 = (i11 * this.f24494c) + (i10 / 32);
        int[] iArr = this.f24495d;
        iArr[i12] = (1 << (i10 & 31)) | iArr[i12];
    }

    public void r(int i10, int i11, int i12, int i13) {
        if (i11 >= 0 && i10 >= 0) {
            if (i13 >= 1 && i12 >= 1) {
                int i14 = i12 + i10;
                int i15 = i13 + i11;
                if (i15 <= this.f24493b && i14 <= this.f24492a) {
                    while (i11 < i15) {
                        int i16 = this.f24494c * i11;
                        for (int i17 = i10; i17 < i14; i17++) {
                            int[] iArr = this.f24495d;
                            int i18 = (i17 / 32) + i16;
                            iArr[i18] = iArr[i18] | (1 << (i17 & 31));
                        }
                        i11++;
                    }
                    return;
                }
                throw new IllegalArgumentException("The region must fit inside the matrix");
            }
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        throw new IllegalArgumentException("Left and top must be nonnegative");
    }

    public void t(int i10, a aVar) {
        int[] d10 = aVar.d();
        int[] iArr = this.f24495d;
        int i11 = this.f24494c;
        System.arraycopy(d10, 0, iArr, i10 * i11, i11);
    }

    public String toString() {
        return u("X ", "  ");
    }

    public String u(String str, String str2) {
        return a(str, str2, "\n");
    }

    public b(int i10, int i11) {
        if (i10 >= 1 && i11 >= 1) {
            this.f24492a = i10;
            this.f24493b = i11;
            int i12 = (i10 + 31) / 32;
            this.f24494c = i12;
            this.f24495d = new int[i12 * i11];
            return;
        }
        throw new IllegalArgumentException("Both dimensions must be greater than 0");
    }

    private b(int i10, int i11, int i12, int[] iArr) {
        this.f24492a = i10;
        this.f24493b = i11;
        this.f24494c = i12;
        this.f24495d = iArr;
    }
}
