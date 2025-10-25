package y4;

import java.nio.ByteBuffer;
import java.util.Arrays;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public abstract class w {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f32972a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    public static final float[] f32973b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c  reason: collision with root package name */
    private static final Object f32974c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static int[] f32975d = new int[10];

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f32976a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f32977b;

        /* renamed from: c  reason: collision with root package name */
        public final int f32978c;

        /* renamed from: d  reason: collision with root package name */
        public final int f32979d;

        /* renamed from: e  reason: collision with root package name */
        public final int[] f32980e;

        /* renamed from: f  reason: collision with root package name */
        public final int f32981f;

        /* renamed from: g  reason: collision with root package name */
        public final int f32982g;

        /* renamed from: h  reason: collision with root package name */
        public final int f32983h;

        /* renamed from: i  reason: collision with root package name */
        public final int f32984i;

        /* renamed from: j  reason: collision with root package name */
        public final float f32985j;

        /* renamed from: k  reason: collision with root package name */
        public final int f32986k;

        /* renamed from: l  reason: collision with root package name */
        public final int f32987l;

        /* renamed from: m  reason: collision with root package name */
        public final int f32988m;

        public a(int i10, boolean z10, int i11, int i12, int[] iArr, int i13, int i14, int i15, int i16, float f10, int i17, int i18, int i19) {
            this.f32976a = i10;
            this.f32977b = z10;
            this.f32978c = i11;
            this.f32979d = i12;
            this.f32980e = iArr;
            this.f32981f = i13;
            this.f32982g = i14;
            this.f32983h = i15;
            this.f32984i = i16;
            this.f32985j = f10;
            this.f32986k = i17;
            this.f32987l = i18;
            this.f32988m = i19;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f32989a;

        /* renamed from: b  reason: collision with root package name */
        public final int f32990b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f32991c;

        public b(int i10, int i11, boolean z10) {
            this.f32989a = i10;
            this.f32990b = i11;
            this.f32991c = z10;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f32992a;

        /* renamed from: b  reason: collision with root package name */
        public final int f32993b;

        /* renamed from: c  reason: collision with root package name */
        public final int f32994c;

        /* renamed from: d  reason: collision with root package name */
        public final int f32995d;

        /* renamed from: e  reason: collision with root package name */
        public final int f32996e;

        /* renamed from: f  reason: collision with root package name */
        public final int f32997f;

        /* renamed from: g  reason: collision with root package name */
        public final int f32998g;

        /* renamed from: h  reason: collision with root package name */
        public final float f32999h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f33000i;

        /* renamed from: j  reason: collision with root package name */
        public final boolean f33001j;

        /* renamed from: k  reason: collision with root package name */
        public final int f33002k;

        /* renamed from: l  reason: collision with root package name */
        public final int f33003l;

        /* renamed from: m  reason: collision with root package name */
        public final int f33004m;

        /* renamed from: n  reason: collision with root package name */
        public final boolean f33005n;

        public c(int i10, int i11, int i12, int i13, int i14, int i15, int i16, float f10, boolean z10, boolean z11, int i17, int i18, int i19, boolean z12) {
            this.f32992a = i10;
            this.f32993b = i11;
            this.f32994c = i12;
            this.f32995d = i13;
            this.f32996e = i14;
            this.f32997f = i15;
            this.f32998g = i16;
            this.f32999h = f10;
            this.f33000i = z10;
            this.f33001j = z11;
            this.f33002k = i17;
            this.f33003l = i18;
            this.f33004m = i19;
            this.f33005n = z12;
        }
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static void b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = i10 + 1;
            if (i12 < position) {
                int i13 = byteBuffer.get(i10) & ForkServer.ERROR;
                if (i11 == 3) {
                    if (i13 == 1 && (byteBuffer.get(i12) & 31) == 7) {
                        ByteBuffer duplicate = byteBuffer.duplicate();
                        duplicate.position(i10 - 3);
                        duplicate.limit(position);
                        byteBuffer.position(0);
                        byteBuffer.put(duplicate);
                        return;
                    }
                } else if (i13 == 0) {
                    i11++;
                }
                if (i13 != 0) {
                    i11 = 0;
                }
                i10 = i12;
            } else {
                byteBuffer.clear();
                return;
            }
        }
    }

    public static int c(byte[] bArr, int i10, int i11, boolean[] zArr) {
        boolean z10;
        boolean z11;
        boolean z12;
        int i12 = i11 - i10;
        boolean z13 = false;
        if (i12 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        if (i12 == 0) {
            return i11;
        }
        if (zArr[0]) {
            a(zArr);
            return i10 - 3;
        } else if (i12 > 1 && zArr[1] && bArr[i10] == 1) {
            a(zArr);
            return i10 - 2;
        } else if (i12 > 2 && zArr[2] && bArr[i10] == 0 && bArr[i10 + 1] == 1) {
            a(zArr);
            return i10 - 1;
        } else {
            int i13 = i11 - 1;
            int i14 = i10 + 2;
            while (i14 < i13) {
                byte b10 = bArr[i14];
                if ((b10 & 254) == 0) {
                    int i15 = i14 - 2;
                    if (bArr[i15] == 0 && bArr[i14 - 1] == 0 && b10 == 1) {
                        a(zArr);
                        return i15;
                    }
                    i14 -= 2;
                }
                i14 += 3;
            }
            if (i12 <= 2 ? i12 != 2 ? !zArr[1] || bArr[i13] != 1 : !zArr[2] || bArr[i11 - 2] != 0 || bArr[i13] != 1 : bArr[i11 - 3] != 0 || bArr[i11 - 2] != 0 || bArr[i13] != 1) {
                z11 = false;
            } else {
                z11 = true;
            }
            zArr[0] = z11;
            if (i12 <= 1 ? !(!zArr[2] || bArr[i13] != 0) : !(bArr[i11 - 2] != 0 || bArr[i13] != 0)) {
                z12 = true;
            } else {
                z12 = false;
            }
            zArr[1] = z12;
            if (bArr[i13] == 0) {
                z13 = true;
            }
            zArr[2] = z13;
            return i11;
        }
    }

    private static int d(byte[] bArr, int i10, int i11) {
        while (i10 < i11 - 2) {
            if (bArr[i10] == 0 && bArr[i10 + 1] == 0 && bArr[i10 + 2] == 3) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static int e(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 126) >> 1;
    }

    public static int f(byte[] bArr, int i10) {
        return bArr[i10 + 3] & 31;
    }

    public static boolean g(String str, byte b10) {
        if ("video/avc".equals(str) && (b10 & 31) == 6) {
            return true;
        }
        if ("video/hevc".equals(str) && ((b10 & 126) >> 1) == 39) {
            return true;
        }
        return false;
    }

    public static a h(byte[] bArr, int i10, int i11) {
        return i(bArr, i10 + 2, i11);
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static y4.w.a i(byte[] r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: y4.w.i(byte[], int, int):y4.w$a");
    }

    public static b j(byte[] bArr, int i10, int i11) {
        return k(bArr, i10 + 1, i11);
    }

    public static b k(byte[] bArr, int i10, int i11) {
        f0 f0Var = new f0(bArr, i10, i11);
        int h10 = f0Var.h();
        int h11 = f0Var.h();
        f0Var.k();
        return new b(h10, h11, f0Var.d());
    }

    public static c l(byte[] bArr, int i10, int i11) {
        return m(bArr, i10 + 1, i11);
    }

    public static c m(byte[] bArr, int i10, int i11) {
        int h10;
        boolean z10;
        int i12;
        int i13;
        int i14;
        boolean z11;
        boolean z12;
        int i15;
        float f10;
        int i16;
        int i17;
        f0 f0Var = new f0(bArr, i10, i11);
        int e10 = f0Var.e(8);
        int e11 = f0Var.e(8);
        int e12 = f0Var.e(8);
        int h11 = f0Var.h();
        int i18 = 1;
        if (e10 != 100 && e10 != 110 && e10 != 122 && e10 != 244 && e10 != 44 && e10 != 83 && e10 != 86 && e10 != 118 && e10 != 128 && e10 != 138) {
            h10 = 1;
            z10 = false;
        } else {
            h10 = f0Var.h();
            if (h10 == 3) {
                z10 = f0Var.d();
            } else {
                z10 = false;
            }
            f0Var.h();
            f0Var.h();
            f0Var.k();
            if (f0Var.d()) {
                if (h10 != 3) {
                    i12 = 8;
                } else {
                    i12 = 12;
                }
                for (int i19 = 0; i19 < i12; i19++) {
                    if (f0Var.d()) {
                        if (i19 < 6) {
                            i13 = 16;
                        } else {
                            i13 = 64;
                        }
                        o(f0Var, i13);
                    }
                }
            }
        }
        int h12 = f0Var.h() + 4;
        int h13 = f0Var.h();
        if (h13 == 0) {
            i14 = h10;
            z11 = z10;
            i15 = f0Var.h() + 4;
            z12 = false;
        } else {
            if (h13 == 1) {
                boolean d10 = f0Var.d();
                f0Var.g();
                f0Var.g();
                z11 = z10;
                long h14 = f0Var.h();
                i14 = h10;
                for (int i20 = 0; i20 < h14; i20++) {
                    f0Var.h();
                }
                z12 = d10;
            } else {
                i14 = h10;
                z11 = z10;
                z12 = false;
            }
            i15 = 0;
        }
        int h15 = f0Var.h();
        f0Var.k();
        int h16 = f0Var.h() + 1;
        boolean d11 = f0Var.d();
        int h17 = (2 - (d11 ? 1 : 0)) * (f0Var.h() + 1);
        if (!d11) {
            f0Var.k();
        }
        f0Var.k();
        int i21 = h16 * 16;
        int i22 = h17 * 16;
        if (f0Var.d()) {
            int h18 = f0Var.h();
            int h19 = f0Var.h();
            int h20 = f0Var.h();
            int h21 = f0Var.h();
            if (i14 == 0) {
                i17 = 2 - (d11 ? 1 : 0);
            } else {
                int i23 = i14;
                if (i23 == 3) {
                    i16 = 1;
                } else {
                    i16 = 2;
                }
                if (i23 == 1) {
                    i18 = 2;
                }
                int i24 = (2 - (d11 ? 1 : 0)) * i18;
                i18 = i16;
                i17 = i24;
            }
            i21 -= (h18 + h19) * i18;
            i22 -= (h20 + h21) * i17;
        }
        int i25 = i21;
        int i26 = i22;
        float f11 = 1.0f;
        if (f0Var.d() && f0Var.d()) {
            int e13 = f0Var.e(8);
            if (e13 == 255) {
                int e14 = f0Var.e(16);
                int e15 = f0Var.e(16);
                if (e14 != 0 && e15 != 0) {
                    f11 = e14 / e15;
                }
            } else {
                float[] fArr = f32973b;
                if (e13 < fArr.length) {
                    f10 = fArr[e13];
                    return new c(e10, e11, e12, h11, h15, i25, i26, f10, z11, d11, h12, h13, i15, z12);
                }
                r.i("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + e13);
            }
        }
        f10 = f11;
        return new c(e10, e11, e12, h11, h15, i25, i26, f10, z11, d11, h12, h13, i15, z12);
    }

    private static void n(f0 f0Var) {
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = 0;
            while (i11 < 6) {
                int i12 = 1;
                if (!f0Var.d()) {
                    f0Var.h();
                } else {
                    int min = Math.min(64, 1 << ((i10 << 1) + 4));
                    if (i10 > 1) {
                        f0Var.g();
                    }
                    for (int i13 = 0; i13 < min; i13++) {
                        f0Var.g();
                    }
                }
                if (i10 == 3) {
                    i12 = 3;
                }
                i11 += i12;
            }
        }
    }

    private static void o(f0 f0Var, int i10) {
        int i11 = 8;
        int i12 = 8;
        for (int i13 = 0; i13 < i10; i13++) {
            if (i11 != 0) {
                i11 = ((f0Var.g() + i12) + 256) % 256;
            }
            if (i11 != 0) {
                i12 = i11;
            }
        }
    }

    private static void p(f0 f0Var) {
        Object[] objArr;
        int h10 = f0Var.h();
        int[] iArr = new int[0];
        int[] iArr2 = new int[0];
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < h10; i12++) {
            if (i12 != 0 && f0Var.d()) {
                objArr = 1;
            } else {
                objArr = null;
            }
            if (objArr != null) {
                int i13 = i10 + i11;
                int h11 = (1 - ((f0Var.d() ? 1 : 0) * 2)) * (f0Var.h() + 1);
                int i14 = i13 + 1;
                boolean[] zArr = new boolean[i14];
                for (int i15 = 0; i15 <= i13; i15++) {
                    if (!f0Var.d()) {
                        zArr[i15] = f0Var.d();
                    } else {
                        zArr[i15] = true;
                    }
                }
                int[] iArr3 = new int[i14];
                int[] iArr4 = new int[i14];
                int i16 = 0;
                for (int i17 = i11 - 1; i17 >= 0; i17--) {
                    int i18 = iArr2[i17] + h11;
                    if (i18 < 0 && zArr[i10 + i17]) {
                        iArr3[i16] = i18;
                        i16++;
                    }
                }
                if (h11 < 0 && zArr[i13]) {
                    iArr3[i16] = h11;
                    i16++;
                }
                for (int i19 = 0; i19 < i10; i19++) {
                    int i20 = iArr[i19] + h11;
                    if (i20 < 0 && zArr[i19]) {
                        iArr3[i16] = i20;
                        i16++;
                    }
                }
                int[] copyOf = Arrays.copyOf(iArr3, i16);
                int i21 = 0;
                for (int i22 = i10 - 1; i22 >= 0; i22--) {
                    int i23 = iArr[i22] + h11;
                    if (i23 > 0 && zArr[i22]) {
                        iArr4[i21] = i23;
                        i21++;
                    }
                }
                if (h11 > 0 && zArr[i13]) {
                    iArr4[i21] = h11;
                    i21++;
                }
                for (int i24 = 0; i24 < i11; i24++) {
                    int i25 = iArr2[i24] + h11;
                    if (i25 > 0 && zArr[i10 + i24]) {
                        iArr4[i21] = i25;
                        i21++;
                    }
                }
                iArr2 = Arrays.copyOf(iArr4, i21);
                iArr = copyOf;
                i10 = i16;
                i11 = i21;
            } else {
                int h12 = f0Var.h();
                int h13 = f0Var.h();
                int[] iArr5 = new int[h12];
                for (int i26 = 0; i26 < h12; i26++) {
                    iArr5[i26] = f0Var.h() + 1;
                    f0Var.k();
                }
                int[] iArr6 = new int[h13];
                for (int i27 = 0; i27 < h13; i27++) {
                    iArr6[i27] = f0Var.h() + 1;
                    f0Var.k();
                }
                i10 = h12;
                iArr = iArr5;
                i11 = h13;
                iArr2 = iArr6;
            }
        }
    }

    public static int q(byte[] bArr, int i10) {
        int i11;
        synchronized (f32974c) {
            int i12 = 0;
            int i13 = 0;
            while (i12 < i10) {
                try {
                    i12 = d(bArr, i12, i10);
                    if (i12 < i10) {
                        int[] iArr = f32975d;
                        if (iArr.length <= i13) {
                            f32975d = Arrays.copyOf(iArr, iArr.length * 2);
                        }
                        f32975d[i13] = i12;
                        i12 += 3;
                        i13++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            i11 = i10 - i13;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < i13; i16++) {
                int i17 = f32975d[i16] - i15;
                System.arraycopy(bArr, i15, bArr, i14, i17);
                int i18 = i14 + i17;
                int i19 = i18 + 1;
                bArr[i18] = 0;
                i14 = i19 + 1;
                bArr[i19] = 0;
                i15 += i17 + 3;
            }
            System.arraycopy(bArr, i15, bArr, i14, i11 - i14);
        }
        return i11;
    }
}
