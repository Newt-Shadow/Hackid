package d3;

import b3.e3;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f14414a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f14415b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f14416a;

        /* renamed from: b  reason: collision with root package name */
        public final int f14417b;

        /* renamed from: c  reason: collision with root package name */
        public final String f14418c;

        private b(int i10, int i11, String str) {
            this.f14416a = i10;
            this.f14417b = i11;
            this.f14418c = str;
        }
    }

    public static byte[] a(int i10, int i11) {
        int i12 = 0;
        int i13 = -1;
        int i14 = 0;
        while (true) {
            int[] iArr = f14414a;
            if (i14 >= iArr.length) {
                break;
            }
            if (i10 == iArr[i14]) {
                i13 = i14;
            }
            i14++;
        }
        int i15 = -1;
        while (true) {
            int[] iArr2 = f14415b;
            if (i12 >= iArr2.length) {
                break;
            }
            if (i11 == iArr2[i12]) {
                i15 = i12;
            }
            i12++;
        }
        if (i10 != -1 && i15 != -1) {
            return b(2, i13, i15);
        }
        throw new IllegalArgumentException("Invalid sample rate or number of channels: " + i10 + ", " + i11);
    }

    public static byte[] b(int i10, int i11, int i12) {
        return new byte[]{(byte) (((i10 << 3) & 248) | ((i11 >> 1) & 7)), (byte) (((i11 << 7) & 128) | ((i12 << 3) & 120))};
    }

    private static int c(y4.d0 d0Var) {
        int h10 = d0Var.h(5);
        if (h10 == 31) {
            return d0Var.h(6) + 32;
        }
        return h10;
    }

    private static int d(y4.d0 d0Var) {
        int h10 = d0Var.h(4);
        if (h10 == 15) {
            if (d0Var.b() >= 24) {
                return d0Var.h(24);
            }
            throw e3.a("AAC header insufficient data", null);
        } else if (h10 < 13) {
            return f14414a[h10];
        } else {
            throw e3.a("AAC header wrong Sampling Frequency Index", null);
        }
    }

    public static b e(y4.d0 d0Var, boolean z10) {
        int c10 = c(d0Var);
        int d10 = d(d0Var);
        int h10 = d0Var.h(4);
        String str = "mp4a.40." + c10;
        if (c10 == 5 || c10 == 29) {
            d10 = d(d0Var);
            c10 = c(d0Var);
            if (c10 == 22) {
                h10 = d0Var.h(4);
            }
        }
        if (z10) {
            if (c10 != 1 && c10 != 2 && c10 != 3 && c10 != 4 && c10 != 6 && c10 != 7 && c10 != 17) {
                switch (c10) {
                    case C1415p9.C /* 19 */:
                    case 20:
                    case 21:
                    case Build.API_LEVELS.API_22 /* 22 */:
                    case Build.API_LEVELS.API_23 /* 23 */:
                        break;
                    default:
                        throw e3.d("Unsupported audio object type: " + c10);
                }
            }
            g(d0Var, c10, h10);
            switch (c10) {
                case 17:
                case C1415p9.C /* 19 */:
                case 20:
                case 21:
                case Build.API_LEVELS.API_22 /* 22 */:
                case Build.API_LEVELS.API_23 /* 23 */:
                    int h11 = d0Var.h(2);
                    if (h11 == 2 || h11 == 3) {
                        throw e3.d("Unsupported epConfig: " + h11);
                    }
            }
        }
        int i10 = f14415b[h10];
        if (i10 != -1) {
            return new b(d10, i10, str);
        }
        throw e3.a(null, null);
    }

    public static b f(byte[] bArr) {
        return e(new y4.d0(bArr), false);
    }

    private static void g(y4.d0 d0Var, int i10, int i11) {
        if (d0Var.g()) {
            y4.r.i("AacUtil", "Unexpected frameLengthFlag = 1");
        }
        if (d0Var.g()) {
            d0Var.r(14);
        }
        boolean g10 = d0Var.g();
        if (i11 != 0) {
            if (i10 == 6 || i10 == 20) {
                d0Var.r(3);
            }
            if (g10) {
                if (i10 == 22) {
                    d0Var.r(16);
                }
                if (i10 == 17 || i10 == 19 || i10 == 20 || i10 == 23) {
                    d0Var.r(3);
                }
                d0Var.r(1);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException();
    }
}
