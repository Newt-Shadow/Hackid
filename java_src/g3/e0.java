package g3;

import android.util.Base64;
import b3.e3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import y4.q0;
/* loaded from: classes.dex */
public abstract class e0 {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f16180a;

        /* renamed from: b  reason: collision with root package name */
        public final int f16181b;

        /* renamed from: c  reason: collision with root package name */
        public final long[] f16182c;

        /* renamed from: d  reason: collision with root package name */
        public final int f16183d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f16184e;

        public a(int i10, int i11, long[] jArr, int i12, boolean z10) {
            this.f16180a = i10;
            this.f16181b = i11;
            this.f16182c = jArr;
            this.f16183d = i12;
            this.f16184e = z10;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f16185a;

        /* renamed from: b  reason: collision with root package name */
        public final String[] f16186b;

        /* renamed from: c  reason: collision with root package name */
        public final int f16187c;

        public b(String str, String[] strArr, int i10) {
            this.f16185a = str;
            this.f16186b = strArr;
            this.f16187c = i10;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f16188a;

        /* renamed from: b  reason: collision with root package name */
        public final int f16189b;

        /* renamed from: c  reason: collision with root package name */
        public final int f16190c;

        /* renamed from: d  reason: collision with root package name */
        public final int f16191d;

        public c(boolean z10, int i10, int i11, int i12) {
            this.f16188a = z10;
            this.f16189b = i10;
            this.f16190c = i11;
            this.f16191d = i12;
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f16192a;

        /* renamed from: b  reason: collision with root package name */
        public final int f16193b;

        /* renamed from: c  reason: collision with root package name */
        public final int f16194c;

        /* renamed from: d  reason: collision with root package name */
        public final int f16195d;

        /* renamed from: e  reason: collision with root package name */
        public final int f16196e;

        /* renamed from: f  reason: collision with root package name */
        public final int f16197f;

        /* renamed from: g  reason: collision with root package name */
        public final int f16198g;

        /* renamed from: h  reason: collision with root package name */
        public final int f16199h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f16200i;

        /* renamed from: j  reason: collision with root package name */
        public final byte[] f16201j;

        public d(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10, byte[] bArr) {
            this.f16192a = i10;
            this.f16193b = i11;
            this.f16194c = i12;
            this.f16195d = i13;
            this.f16196e = i14;
            this.f16197f = i15;
            this.f16198g = i16;
            this.f16199h = i17;
            this.f16200i = z10;
            this.f16201j = bArr;
        }
    }

    public static int a(int i10) {
        int i11 = 0;
        while (i10 > 0) {
            i11++;
            i10 >>>= 1;
        }
        return i11;
    }

    private static long b(long j10, long j11) {
        return (long) Math.floor(Math.pow(j10, 1.0d / j11));
    }

    public static t3.a c(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = (String) list.get(i10);
            String[] Q0 = q0.Q0(str, "=");
            if (Q0.length != 2) {
                y4.r.i("VorbisUtil", "Failed to parse Vorbis comment: " + str);
            } else if (Q0[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(w3.a.a(new y4.e0(Base64.decode(Q0[1], 0))));
                } catch (RuntimeException e10) {
                    y4.r.j("VorbisUtil", "Failed to parse vorbis picture", e10);
                }
            } else {
                arrayList.add(new b4.a(Q0[0], Q0[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new t3.a(arrayList);
    }

    private static a d(d0 d0Var) {
        if (d0Var.d(24) == 5653314) {
            int d10 = d0Var.d(16);
            int d11 = d0Var.d(24);
            long[] jArr = new long[d11];
            boolean c10 = d0Var.c();
            long j10 = 0;
            if (!c10) {
                boolean c11 = d0Var.c();
                for (int i10 = 0; i10 < d11; i10++) {
                    if (c11) {
                        if (d0Var.c()) {
                            jArr[i10] = d0Var.d(5) + 1;
                        } else {
                            jArr[i10] = 0;
                        }
                    } else {
                        jArr[i10] = d0Var.d(5) + 1;
                    }
                }
            } else {
                int d12 = d0Var.d(5) + 1;
                int i11 = 0;
                while (i11 < d11) {
                    int d13 = d0Var.d(a(d11 - i11));
                    for (int i12 = 0; i12 < d13 && i11 < d11; i12++) {
                        jArr[i11] = d12;
                        i11++;
                    }
                    d12++;
                }
            }
            int d14 = d0Var.d(4);
            if (d14 <= 2) {
                if (d14 == 1 || d14 == 2) {
                    d0Var.e(32);
                    d0Var.e(32);
                    int d15 = d0Var.d(4) + 1;
                    d0Var.e(1);
                    if (d14 == 1) {
                        if (d10 != 0) {
                            j10 = b(d11, d10);
                        }
                    } else {
                        j10 = d11 * d10;
                    }
                    d0Var.e((int) (j10 * d15));
                }
                return new a(d10, d11, jArr, d14, c10);
            }
            throw e3.a("lookup type greater than 2 not decodable: " + d14, null);
        }
        throw e3.a("expected code book to start with [0x56, 0x43, 0x42] at " + d0Var.b(), null);
    }

    private static void e(d0 d0Var) {
        int d10 = d0Var.d(6) + 1;
        for (int i10 = 0; i10 < d10; i10++) {
            int d11 = d0Var.d(16);
            if (d11 != 0) {
                if (d11 == 1) {
                    int d12 = d0Var.d(5);
                    int[] iArr = new int[d12];
                    int i11 = -1;
                    for (int i12 = 0; i12 < d12; i12++) {
                        int d13 = d0Var.d(4);
                        iArr[i12] = d13;
                        if (d13 > i11) {
                            i11 = d13;
                        }
                    }
                    int i13 = i11 + 1;
                    int[] iArr2 = new int[i13];
                    for (int i14 = 0; i14 < i13; i14++) {
                        iArr2[i14] = d0Var.d(3) + 1;
                        int d14 = d0Var.d(2);
                        if (d14 > 0) {
                            d0Var.e(8);
                        }
                        for (int i15 = 0; i15 < (1 << d14); i15++) {
                            d0Var.e(8);
                        }
                    }
                    d0Var.e(2);
                    int d15 = d0Var.d(4);
                    int i16 = 0;
                    int i17 = 0;
                    for (int i18 = 0; i18 < d12; i18++) {
                        i16 += iArr2[iArr[i18]];
                        while (i17 < i16) {
                            d0Var.e(d15);
                            i17++;
                        }
                    }
                } else {
                    throw e3.a("floor type greater than 1 not decodable: " + d11, null);
                }
            } else {
                d0Var.e(8);
                d0Var.e(16);
                d0Var.e(16);
                d0Var.e(6);
                d0Var.e(8);
                int d16 = d0Var.d(4) + 1;
                for (int i19 = 0; i19 < d16; i19++) {
                    d0Var.e(8);
                }
            }
        }
    }

    private static void f(int i10, d0 d0Var) {
        int i11;
        int d10 = d0Var.d(6) + 1;
        for (int i12 = 0; i12 < d10; i12++) {
            int d11 = d0Var.d(16);
            if (d11 != 0) {
                y4.r.c("VorbisUtil", "mapping type other than 0 not supported: " + d11);
            } else {
                if (d0Var.c()) {
                    i11 = d0Var.d(4) + 1;
                } else {
                    i11 = 1;
                }
                if (d0Var.c()) {
                    int d12 = d0Var.d(8) + 1;
                    for (int i13 = 0; i13 < d12; i13++) {
                        int i14 = i10 - 1;
                        d0Var.e(a(i14));
                        d0Var.e(a(i14));
                    }
                }
                if (d0Var.d(2) == 0) {
                    if (i11 > 1) {
                        for (int i15 = 0; i15 < i10; i15++) {
                            d0Var.e(4);
                        }
                    }
                    for (int i16 = 0; i16 < i11; i16++) {
                        d0Var.e(8);
                        d0Var.e(8);
                        d0Var.e(8);
                    }
                } else {
                    throw e3.a("to reserved bits must be zero after mapping coupling steps", null);
                }
            }
        }
    }

    private static c[] g(d0 d0Var) {
        int d10 = d0Var.d(6) + 1;
        c[] cVarArr = new c[d10];
        for (int i10 = 0; i10 < d10; i10++) {
            cVarArr[i10] = new c(d0Var.c(), d0Var.d(16), d0Var.d(16), d0Var.d(8));
        }
        return cVarArr;
    }

    private static void h(d0 d0Var) {
        int i10;
        int d10 = d0Var.d(6) + 1;
        for (int i11 = 0; i11 < d10; i11++) {
            if (d0Var.d(16) <= 2) {
                d0Var.e(24);
                d0Var.e(24);
                d0Var.e(24);
                int d11 = d0Var.d(6) + 1;
                d0Var.e(8);
                int[] iArr = new int[d11];
                for (int i12 = 0; i12 < d11; i12++) {
                    int d12 = d0Var.d(3);
                    if (d0Var.c()) {
                        i10 = d0Var.d(5);
                    } else {
                        i10 = 0;
                    }
                    iArr[i12] = (i10 * 8) + d12;
                }
                for (int i13 = 0; i13 < d11; i13++) {
                    for (int i14 = 0; i14 < 8; i14++) {
                        if ((iArr[i13] & (1 << i14)) != 0) {
                            d0Var.e(8);
                        }
                    }
                }
            } else {
                throw e3.a("residueType greater than 2 is not decodable", null);
            }
        }
    }

    public static b i(y4.e0 e0Var) {
        return j(e0Var, true, true);
    }

    public static b j(y4.e0 e0Var, boolean z10, boolean z11) {
        if (z10) {
            m(3, e0Var, false);
        }
        String D = e0Var.D((int) e0Var.w());
        int length = 11 + D.length();
        long w10 = e0Var.w();
        String[] strArr = new String[(int) w10];
        int i10 = length + 4;
        for (int i11 = 0; i11 < w10; i11++) {
            String D2 = e0Var.D((int) e0Var.w());
            strArr[i11] = D2;
            i10 = i10 + 4 + D2.length();
        }
        if (z11 && (e0Var.G() & 1) == 0) {
            throw e3.a("framing bit expected to be set", null);
        }
        return new b(D, strArr, i10 + 1);
    }

    public static d k(y4.e0 e0Var) {
        boolean z10 = true;
        m(1, e0Var, false);
        int x10 = e0Var.x();
        int G = e0Var.G();
        int x11 = e0Var.x();
        int t10 = e0Var.t();
        if (t10 <= 0) {
            t10 = -1;
        }
        int t11 = e0Var.t();
        if (t11 <= 0) {
            t11 = -1;
        }
        int t12 = e0Var.t();
        if (t12 <= 0) {
            t12 = -1;
        }
        int G2 = e0Var.G();
        int pow = (int) Math.pow(2.0d, G2 & 15);
        int pow2 = (int) Math.pow(2.0d, (G2 & 240) >> 4);
        if ((e0Var.G() & 1) <= 0) {
            z10 = false;
        }
        return new d(x10, G, x11, t10, t11, t12, pow, pow2, z10, Arrays.copyOf(e0Var.e(), e0Var.g()));
    }

    public static c[] l(y4.e0 e0Var, int i10) {
        m(5, e0Var, false);
        int G = e0Var.G() + 1;
        d0 d0Var = new d0(e0Var.e());
        d0Var.e(e0Var.f() * 8);
        for (int i11 = 0; i11 < G; i11++) {
            d(d0Var);
        }
        int d10 = d0Var.d(6) + 1;
        for (int i12 = 0; i12 < d10; i12++) {
            if (d0Var.d(16) != 0) {
                throw e3.a("placeholder of time domain transforms not zeroed out", null);
            }
        }
        e(d0Var);
        h(d0Var);
        f(i10, d0Var);
        c[] g10 = g(d0Var);
        if (d0Var.c()) {
            return g10;
        }
        throw e3.a("framing bit after modes not set as expected", null);
    }

    public static boolean m(int i10, y4.e0 e0Var, boolean z10) {
        if (e0Var.a() < 7) {
            if (z10) {
                return false;
            }
            throw e3.a("too short header: " + e0Var.a(), null);
        } else if (e0Var.G() != i10) {
            if (z10) {
                return false;
            }
            throw e3.a("expected header type " + Integer.toHexString(i10), null);
        } else if (e0Var.G() == 118 && e0Var.G() == 111 && e0Var.G() == 114 && e0Var.G() == 98 && e0Var.G() == 105 && e0Var.G() == 115) {
            return true;
        } else {
            if (z10) {
                return false;
            }
            throw e3.a("expected characters 'vorbis'", null);
        }
    }
}
