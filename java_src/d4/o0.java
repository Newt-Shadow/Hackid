package d4;

import java.util.Arrays;
import java.util.Random;
/* loaded from: classes.dex */
public interface o0 {

    /* loaded from: classes.dex */
    public static class a implements o0 {

        /* renamed from: a  reason: collision with root package name */
        private final Random f14902a;

        /* renamed from: b  reason: collision with root package name */
        private final int[] f14903b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f14904c;

        public a(int i10) {
            this(i10, new Random());
        }

        private static int[] a(int i10, Random random) {
            int[] iArr = new int[i10];
            int i11 = 0;
            while (i11 < i10) {
                int i12 = i11 + 1;
                int nextInt = random.nextInt(i12);
                iArr[i11] = iArr[nextInt];
                iArr[nextInt] = i11;
                i11 = i12;
            }
            return iArr;
        }

        @Override // d4.o0
        public int b() {
            return this.f14903b.length;
        }

        @Override // d4.o0
        public o0 c(int i10, int i11) {
            int i12 = i11 - i10;
            int[] iArr = new int[this.f14903b.length - i12];
            int i13 = 0;
            int i14 = 0;
            while (true) {
                int[] iArr2 = this.f14903b;
                if (i13 < iArr2.length) {
                    int i15 = iArr2[i13];
                    if (i15 >= i10 && i15 < i11) {
                        i14++;
                    } else {
                        int i16 = i13 - i14;
                        if (i15 >= i10) {
                            i15 -= i12;
                        }
                        iArr[i16] = i15;
                    }
                    i13++;
                } else {
                    return new a(iArr, new Random(this.f14902a.nextLong()));
                }
            }
        }

        @Override // d4.o0
        public int d() {
            int[] iArr = this.f14903b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // d4.o0
        public int e(int i10) {
            int i11 = this.f14904c[i10] - 1;
            if (i11 < 0) {
                return -1;
            }
            return this.f14903b[i11];
        }

        @Override // d4.o0
        public int f(int i10) {
            int i11 = this.f14904c[i10] + 1;
            int[] iArr = this.f14903b;
            if (i11 < iArr.length) {
                return iArr[i11];
            }
            return -1;
        }

        @Override // d4.o0
        public o0 g(int i10, int i11) {
            int[] iArr = new int[i11];
            int[] iArr2 = new int[i11];
            int i12 = 0;
            int i13 = 0;
            while (i13 < i11) {
                iArr[i13] = this.f14902a.nextInt(this.f14903b.length + 1);
                int i14 = i13 + 1;
                int nextInt = this.f14902a.nextInt(i14);
                iArr2[i13] = iArr2[nextInt];
                iArr2[nextInt] = i13 + i10;
                i13 = i14;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.f14903b.length + i11];
            int i15 = 0;
            int i16 = 0;
            while (true) {
                int[] iArr4 = this.f14903b;
                if (i12 < iArr4.length + i11) {
                    if (i15 < i11 && i16 == iArr[i15]) {
                        iArr3[i12] = iArr2[i15];
                        i15++;
                    } else {
                        int i17 = i16 + 1;
                        int i18 = iArr4[i16];
                        iArr3[i12] = i18;
                        if (i18 >= i10) {
                            iArr3[i12] = i18 + i11;
                        }
                        i16 = i17;
                    }
                    i12++;
                } else {
                    return new a(iArr3, new Random(this.f14902a.nextLong()));
                }
            }
        }

        @Override // d4.o0
        public int h() {
            int[] iArr = this.f14903b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // d4.o0
        public o0 i() {
            return new a(0, new Random(this.f14902a.nextLong()));
        }

        private a(int i10, Random random) {
            this(a(i10, random), random);
        }

        private a(int[] iArr, Random random) {
            this.f14903b = iArr;
            this.f14902a = random;
            this.f14904c = new int[iArr.length];
            for (int i10 = 0; i10 < iArr.length; i10++) {
                this.f14904c[iArr[i10]] = i10;
            }
        }
    }

    int b();

    o0 c(int i10, int i11);

    int d();

    int e(int i10);

    int f(int i10);

    o0 g(int i10, int i11);

    int h();

    o0 i();
}
