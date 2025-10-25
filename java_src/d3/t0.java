package d3;
/* loaded from: classes.dex */
public abstract class t0 {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f14592a = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f14593b = {44100, 48000, 32000};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f14594c = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f14595d = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f14596e = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f14597f = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f14598g = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f14599a;

        /* renamed from: b  reason: collision with root package name */
        public String f14600b;

        /* renamed from: c  reason: collision with root package name */
        public int f14601c;

        /* renamed from: d  reason: collision with root package name */
        public int f14602d;

        /* renamed from: e  reason: collision with root package name */
        public int f14603e;

        /* renamed from: f  reason: collision with root package name */
        public int f14604f;

        /* renamed from: g  reason: collision with root package name */
        public int f14605g;

        public boolean a(int i10) {
            int i11;
            int i12;
            int i13;
            int i14;
            int i15;
            int i16;
            if (!t0.l(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0 || (i13 = (i10 >>> 12) & 15) == 0 || i13 == 15 || (i14 = (i10 >>> 10) & 3) == 3) {
                return false;
            }
            this.f14599a = i11;
            this.f14600b = t0.f14592a[3 - i12];
            int i17 = t0.f14593b[i14];
            this.f14602d = i17;
            int i18 = 2;
            if (i11 == 2) {
                this.f14602d = i17 / 2;
            } else if (i11 == 0) {
                this.f14602d = i17 / 4;
            }
            int i19 = (i10 >>> 9) & 1;
            this.f14605g = t0.k(i11, i12);
            if (i12 == 3) {
                if (i11 == 3) {
                    i16 = t0.f14594c[i13 - 1];
                } else {
                    i16 = t0.f14595d[i13 - 1];
                }
                this.f14604f = i16;
                this.f14601c = (((i16 * 12) / this.f14602d) + i19) * 4;
            } else {
                int i20 = 144;
                if (i11 == 3) {
                    if (i12 == 2) {
                        i15 = t0.f14596e[i13 - 1];
                    } else {
                        i15 = t0.f14597f[i13 - 1];
                    }
                    this.f14604f = i15;
                    this.f14601c = ((i15 * 144) / this.f14602d) + i19;
                } else {
                    int i21 = t0.f14598g[i13 - 1];
                    this.f14604f = i21;
                    if (i12 == 1) {
                        i20 = 72;
                    }
                    this.f14601c = ((i20 * i21) / this.f14602d) + i19;
                }
            }
            if (((i10 >> 6) & 3) == 3) {
                i18 = 1;
            }
            this.f14603e = i18;
            return true;
        }
    }

    public static int j(int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        if (!l(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0 || (i13 = (i10 >>> 12) & 15) == 0 || i13 == 15 || (i14 = (i10 >>> 10) & 3) == 3) {
            return -1;
        }
        int i17 = f14593b[i14];
        if (i11 == 2) {
            i17 /= 2;
        } else if (i11 == 0) {
            i17 /= 4;
        }
        int i18 = (i10 >>> 9) & 1;
        if (i12 == 3) {
            if (i11 == 3) {
                i16 = f14594c[i13 - 1];
            } else {
                i16 = f14595d[i13 - 1];
            }
            return (((i16 * 12) / i17) + i18) * 4;
        }
        if (i11 == 3) {
            if (i12 == 2) {
                i15 = f14596e[i13 - 1];
            } else {
                i15 = f14597f[i13 - 1];
            }
        } else {
            i15 = f14598g[i13 - 1];
        }
        int i19 = 144;
        if (i11 == 3) {
            return ((i15 * 144) / i17) + i18;
        }
        if (i12 == 1) {
            i19 = 72;
        }
        return ((i19 * i15) / i17) + i18;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(int i10, int i11) {
        if (i11 != 1) {
            if (i11 == 2) {
                return 1152;
            }
            if (i11 == 3) {
                return 384;
            }
            throw new IllegalArgumentException();
        } else if (i10 == 3) {
            return 1152;
        } else {
            return 576;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(int i10) {
        return (i10 & (-2097152)) == -2097152;
    }

    public static int m(int i10) {
        int i11;
        int i12;
        if (!l(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0) {
            return -1;
        }
        int i13 = (i10 >>> 12) & 15;
        int i14 = (i10 >>> 10) & 3;
        if (i13 == 0 || i13 == 15 || i14 == 3) {
            return -1;
        }
        return k(i11, i12);
    }
}
