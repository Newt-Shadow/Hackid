package androidx.datastore.preferences.protobuf;

import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: f  reason: collision with root package name */
    private static volatile int f2149f = 100;

    /* renamed from: a  reason: collision with root package name */
    int f2150a;

    /* renamed from: b  reason: collision with root package name */
    int f2151b;

    /* renamed from: c  reason: collision with root package name */
    int f2152c;

    /* renamed from: d  reason: collision with root package name */
    i f2153d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2154e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b extends h {

        /* renamed from: g  reason: collision with root package name */
        private final byte[] f2155g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f2156h;

        /* renamed from: i  reason: collision with root package name */
        private int f2157i;

        /* renamed from: j  reason: collision with root package name */
        private int f2158j;

        /* renamed from: k  reason: collision with root package name */
        private int f2159k;

        /* renamed from: l  reason: collision with root package name */
        private int f2160l;

        /* renamed from: m  reason: collision with root package name */
        private int f2161m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f2162n;

        /* renamed from: o  reason: collision with root package name */
        private int f2163o;

        private void O() {
            int i10 = this.f2157i + this.f2158j;
            this.f2157i = i10;
            int i11 = i10 - this.f2160l;
            int i12 = this.f2163o;
            if (i11 > i12) {
                int i13 = i11 - i12;
                this.f2158j = i13;
                this.f2157i = i10 - i13;
                return;
            }
            this.f2158j = 0;
        }

        private void Q() {
            if (this.f2157i - this.f2159k >= 10) {
                R();
            } else {
                S();
            }
        }

        private void R() {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.f2155g;
                int i11 = this.f2159k;
                this.f2159k = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw z.f();
        }

        private void S() {
            for (int i10 = 0; i10 < 10; i10++) {
                if (H() >= 0) {
                    return;
                }
            }
            throw z.f();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public String A() {
            int L = L();
            if (L > 0) {
                int i10 = this.f2157i;
                int i11 = this.f2159k;
                if (L <= i10 - i11) {
                    String str = new String(this.f2155g, i11, L, y.f2388b);
                    this.f2159k += L;
                    return str;
                }
            }
            if (L == 0) {
                return "";
            }
            if (L < 0) {
                throw z.g();
            }
            throw z.m();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public String B() {
            int L = L();
            if (L > 0) {
                int i10 = this.f2157i;
                int i11 = this.f2159k;
                if (L <= i10 - i11) {
                    String a10 = p1.a(this.f2155g, i11, L);
                    this.f2159k += L;
                    return a10;
                }
            }
            if (L == 0) {
                return "";
            }
            if (L <= 0) {
                throw z.g();
            }
            throw z.m();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int C() {
            if (f()) {
                this.f2161m = 0;
                return 0;
            }
            int L = L();
            this.f2161m = L;
            if (q1.a(L) != 0) {
                return this.f2161m;
            }
            throw z.c();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int D() {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public long E() {
            return M();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public boolean F(int i10) {
            int b10 = q1.b(i10);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 != 4) {
                                if (b10 == 5) {
                                    P(4);
                                    return true;
                                }
                                throw z.e();
                            }
                            return false;
                        }
                        G();
                        a(q1.c(q1.a(i10), 4));
                        return true;
                    }
                    P(L());
                    return true;
                }
                P(8);
                return true;
            }
            Q();
            return true;
        }

        public byte H() {
            int i10 = this.f2159k;
            if (i10 != this.f2157i) {
                byte[] bArr = this.f2155g;
                this.f2159k = i10 + 1;
                return bArr[i10];
            }
            throw z.m();
        }

        public byte[] I(int i10) {
            if (i10 > 0) {
                int i11 = this.f2157i;
                int i12 = this.f2159k;
                if (i10 <= i11 - i12) {
                    int i13 = i10 + i12;
                    this.f2159k = i13;
                    return Arrays.copyOfRange(this.f2155g, i12, i13);
                }
            }
            if (i10 <= 0) {
                if (i10 == 0) {
                    return y.f2390d;
                }
                throw z.g();
            }
            throw z.m();
        }

        public int J() {
            int i10 = this.f2159k;
            if (this.f2157i - i10 >= 4) {
                byte[] bArr = this.f2155g;
                this.f2159k = i10 + 4;
                return ((bArr[i10 + 3] & ForkServer.ERROR) << 24) | (bArr[i10] & ForkServer.ERROR) | ((bArr[i10 + 1] & ForkServer.ERROR) << 8) | ((bArr[i10 + 2] & ForkServer.ERROR) << 16);
            }
            throw z.m();
        }

        public long K() {
            int i10 = this.f2159k;
            if (this.f2157i - i10 >= 8) {
                byte[] bArr = this.f2155g;
                this.f2159k = i10 + 8;
                return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
            }
            throw z.m();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
            if (r2[r3] < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int L() {
            /*
                r5 = this;
                int r0 = r5.f2159k
                int r1 = r5.f2157i
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f2155g
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.f2159k = r3
                return r0
            L12:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r3
                goto L70
            L31:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r2 = r2[r3]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.N()
                int r0 = (int) r0
                return r0
            L70:
                r5.f2159k = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.h.b.L():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
            if (r2[r0] < 0) goto L42;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long M() {
            /*
                Method dump skipped, instructions count: 192
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.h.b.M():long");
        }

        long N() {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte H = H();
                j10 |= (H & Byte.MAX_VALUE) << i10;
                if ((H & 128) == 0) {
                    return j10;
                }
            }
            throw z.f();
        }

        public void P(int i10) {
            if (i10 >= 0) {
                int i11 = this.f2157i;
                int i12 = this.f2159k;
                if (i10 <= i11 - i12) {
                    this.f2159k = i12 + i10;
                    return;
                }
            }
            if (i10 < 0) {
                throw z.g();
            }
            throw z.m();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public void a(int i10) {
            if (this.f2161m == i10) {
                return;
            }
            throw z.b();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int e() {
            return this.f2159k - this.f2160l;
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public boolean f() {
            if (this.f2159k == this.f2157i) {
                return true;
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public void l(int i10) {
            this.f2163o = i10;
            O();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int m(int i10) {
            if (i10 >= 0) {
                int e10 = i10 + e();
                if (e10 >= 0) {
                    int i11 = this.f2163o;
                    if (e10 <= i11) {
                        this.f2163o = e10;
                        O();
                        return i11;
                    }
                    throw z.m();
                }
                throw z.h();
            }
            throw z.g();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public boolean n() {
            if (M() != 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public g o() {
            g n10;
            int L = L();
            if (L > 0) {
                int i10 = this.f2157i;
                int i11 = this.f2159k;
                if (L <= i10 - i11) {
                    if (this.f2156h && this.f2162n) {
                        n10 = g.G(this.f2155g, i11, L);
                    } else {
                        n10 = g.n(this.f2155g, i11, L);
                    }
                    this.f2159k += L;
                    return n10;
                }
            }
            if (L == 0) {
                return g.f2136b;
            }
            return g.F(I(L));
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public double p() {
            return Double.longBitsToDouble(K());
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int q() {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int r() {
            return J();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public long s() {
            return K();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public float t() {
            return Float.intBitsToFloat(J());
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int u() {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public long v() {
            return M();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int w() {
            return J();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public long x() {
            return K();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int y() {
            return h.c(L());
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public long z() {
            return h.d(M());
        }

        private b(byte[] bArr, int i10, int i11, boolean z10) {
            super();
            this.f2163o = Integer.MAX_VALUE;
            this.f2155g = bArr;
            this.f2157i = i11 + i10;
            this.f2159k = i10;
            this.f2160l = i10;
            this.f2156h = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c extends h {

        /* renamed from: g  reason: collision with root package name */
        private final InputStream f2164g;

        /* renamed from: h  reason: collision with root package name */
        private final byte[] f2165h;

        /* renamed from: i  reason: collision with root package name */
        private int f2166i;

        /* renamed from: j  reason: collision with root package name */
        private int f2167j;

        /* renamed from: k  reason: collision with root package name */
        private int f2168k;

        /* renamed from: l  reason: collision with root package name */
        private int f2169l;

        /* renamed from: m  reason: collision with root package name */
        private int f2170m;

        /* renamed from: n  reason: collision with root package name */
        private int f2171n;

        private static int H(InputStream inputStream) {
            try {
                return inputStream.available();
            } catch (z e10) {
                e10.j();
                throw e10;
            }
        }

        private static int I(InputStream inputStream, byte[] bArr, int i10, int i11) {
            try {
                return inputStream.read(bArr, i10, i11);
            } catch (z e10) {
                e10.j();
                throw e10;
            }
        }

        private g J(int i10) {
            byte[] M = M(i10);
            if (M != null) {
                return g.m(M);
            }
            int i11 = this.f2168k;
            int i12 = this.f2166i;
            int i13 = i12 - i11;
            this.f2170m += i12;
            this.f2168k = 0;
            this.f2166i = 0;
            List<byte[]> N = N(i10 - i13);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.f2165h, i11, bArr, 0, i13);
            for (byte[] bArr2 : N) {
                System.arraycopy(bArr2, 0, bArr, i13, bArr2.length);
                i13 += bArr2.length;
            }
            return g.F(bArr);
        }

        private byte[] L(int i10, boolean z10) {
            byte[] M = M(i10);
            if (M != null) {
                if (z10) {
                    return (byte[]) M.clone();
                }
                return M;
            }
            int i11 = this.f2168k;
            int i12 = this.f2166i;
            int i13 = i12 - i11;
            this.f2170m += i12;
            this.f2168k = 0;
            this.f2166i = 0;
            List<byte[]> N = N(i10 - i13);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.f2165h, i11, bArr, 0, i13);
            for (byte[] bArr2 : N) {
                System.arraycopy(bArr2, 0, bArr, i13, bArr2.length);
                i13 += bArr2.length;
            }
            return bArr;
        }

        private byte[] M(int i10) {
            if (i10 == 0) {
                return y.f2390d;
            }
            if (i10 >= 0) {
                int i11 = this.f2170m;
                int i12 = this.f2168k;
                int i13 = i11 + i12 + i10;
                if (i13 - this.f2152c <= 0) {
                    int i14 = this.f2171n;
                    if (i13 <= i14) {
                        int i15 = this.f2166i - i12;
                        int i16 = i10 - i15;
                        if (i16 >= 4096 && i16 > H(this.f2164g)) {
                            return null;
                        }
                        byte[] bArr = new byte[i10];
                        System.arraycopy(this.f2165h, this.f2168k, bArr, 0, i15);
                        this.f2170m += this.f2166i;
                        this.f2168k = 0;
                        this.f2166i = 0;
                        while (i15 < i10) {
                            int I = I(this.f2164g, bArr, i15, i10 - i15);
                            if (I != -1) {
                                this.f2170m += I;
                                i15 += I;
                            } else {
                                throw z.m();
                            }
                        }
                        return bArr;
                    }
                    W((i14 - i11) - i12);
                    throw z.m();
                }
                throw z.l();
            }
            throw z.g();
        }

        private List N(int i10) {
            ArrayList arrayList = new ArrayList();
            while (i10 > 0) {
                int min = Math.min(i10, (int) Base64Utils.IO_BUFFER_SIZE);
                byte[] bArr = new byte[min];
                int i11 = 0;
                while (i11 < min) {
                    int read = this.f2164g.read(bArr, i11, min - i11);
                    if (read != -1) {
                        this.f2170m += read;
                        i11 += read;
                    } else {
                        throw z.m();
                    }
                }
                i10 -= min;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        private void T() {
            int i10 = this.f2166i + this.f2167j;
            this.f2166i = i10;
            int i11 = this.f2170m + i10;
            int i12 = this.f2171n;
            if (i11 > i12) {
                int i13 = i11 - i12;
                this.f2167j = i13;
                this.f2166i = i10 - i13;
                return;
            }
            this.f2167j = 0;
        }

        private void U(int i10) {
            if (!b0(i10)) {
                if (i10 > (this.f2152c - this.f2170m) - this.f2168k) {
                    throw z.l();
                }
                throw z.m();
            }
        }

        private static long V(InputStream inputStream, long j10) {
            try {
                return inputStream.skip(j10);
            } catch (z e10) {
                e10.j();
                throw e10;
            }
        }

        private void X(int i10) {
            if (i10 >= 0) {
                int i11 = this.f2170m;
                int i12 = this.f2168k;
                int i13 = i11 + i12 + i10;
                int i14 = this.f2171n;
                if (i13 <= i14) {
                    this.f2170m = i11 + i12;
                    int i15 = this.f2166i - i12;
                    this.f2166i = 0;
                    this.f2168k = 0;
                    while (i15 < i10) {
                        try {
                            long j10 = i10 - i15;
                            long V = V(this.f2164g, j10);
                            int i16 = (V > 0L ? 1 : (V == 0L ? 0 : -1));
                            if (i16 >= 0 && V <= j10) {
                                if (i16 == 0) {
                                    break;
                                }
                                i15 += (int) V;
                            } else {
                                throw new IllegalStateException(this.f2164g.getClass() + "#skip returned invalid result: " + V + "\nThe InputStream implementation is buggy.");
                            }
                        } finally {
                            this.f2170m += i15;
                            T();
                        }
                    }
                    if (i15 < i10) {
                        int i17 = this.f2166i;
                        int i18 = i17 - this.f2168k;
                        this.f2168k = i17;
                        U(1);
                        while (true) {
                            int i19 = i10 - i18;
                            int i20 = this.f2166i;
                            if (i19 > i20) {
                                i18 += i20;
                                this.f2168k = i20;
                                U(1);
                            } else {
                                this.f2168k = i19;
                                return;
                            }
                        }
                    }
                } else {
                    W((i14 - i11) - i12);
                    throw z.m();
                }
            } else {
                throw z.g();
            }
        }

        private void Y() {
            if (this.f2166i - this.f2168k >= 10) {
                Z();
            } else {
                a0();
            }
        }

        private void Z() {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.f2165h;
                int i11 = this.f2168k;
                this.f2168k = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw z.f();
        }

        private void a0() {
            for (int i10 = 0; i10 < 10; i10++) {
                if (K() >= 0) {
                    return;
                }
            }
            throw z.f();
        }

        private boolean b0(int i10) {
            int i11 = this.f2168k;
            int i12 = i11 + i10;
            int i13 = this.f2166i;
            if (i12 > i13) {
                int i14 = this.f2152c;
                int i15 = this.f2170m;
                if (i10 > (i14 - i15) - i11 || i15 + i11 + i10 > this.f2171n) {
                    return false;
                }
                if (i11 > 0) {
                    if (i13 > i11) {
                        byte[] bArr = this.f2165h;
                        System.arraycopy(bArr, i11, bArr, 0, i13 - i11);
                    }
                    this.f2170m += i11;
                    this.f2166i -= i11;
                    this.f2168k = 0;
                }
                InputStream inputStream = this.f2164g;
                byte[] bArr2 = this.f2165h;
                int i16 = this.f2166i;
                int I = I(inputStream, bArr2, i16, Math.min(bArr2.length - i16, (this.f2152c - this.f2170m) - i16));
                if (I != 0 && I >= -1 && I <= this.f2165h.length) {
                    if (I <= 0) {
                        return false;
                    }
                    this.f2166i += I;
                    T();
                    if (this.f2166i >= i10) {
                        return true;
                    }
                    return b0(i10);
                }
                throw new IllegalStateException(this.f2164g.getClass() + "#read(byte[]) returned invalid result: " + I + "\nThe InputStream implementation is buggy.");
            }
            throw new IllegalStateException("refillBuffer() called when " + i10 + " bytes were already available in buffer");
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public String A() {
            int Q = Q();
            if (Q > 0) {
                int i10 = this.f2166i;
                int i11 = this.f2168k;
                if (Q <= i10 - i11) {
                    String str = new String(this.f2165h, i11, Q, y.f2388b);
                    this.f2168k += Q;
                    return str;
                }
            }
            if (Q == 0) {
                return "";
            }
            if (Q >= 0) {
                if (Q <= this.f2166i) {
                    U(Q);
                    String str2 = new String(this.f2165h, this.f2168k, Q, y.f2388b);
                    this.f2168k += Q;
                    return str2;
                }
                return new String(L(Q, false), y.f2388b);
            }
            throw z.g();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public String B() {
            byte[] L;
            int Q = Q();
            int i10 = this.f2168k;
            int i11 = this.f2166i;
            if (Q <= i11 - i10 && Q > 0) {
                L = this.f2165h;
                this.f2168k = i10 + Q;
            } else if (Q == 0) {
                return "";
            } else {
                if (Q >= 0) {
                    i10 = 0;
                    if (Q <= i11) {
                        U(Q);
                        L = this.f2165h;
                        this.f2168k = Q + 0;
                    } else {
                        L = L(Q, false);
                    }
                } else {
                    throw z.g();
                }
            }
            return p1.a(L, i10, Q);
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int C() {
            if (f()) {
                this.f2169l = 0;
                return 0;
            }
            int Q = Q();
            this.f2169l = Q;
            if (q1.a(Q) != 0) {
                return this.f2169l;
            }
            throw z.c();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int D() {
            return Q();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public long E() {
            return R();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public boolean F(int i10) {
            int b10 = q1.b(i10);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 != 4) {
                                if (b10 == 5) {
                                    W(4);
                                    return true;
                                }
                                throw z.e();
                            }
                            return false;
                        }
                        G();
                        a(q1.c(q1.a(i10), 4));
                        return true;
                    }
                    W(Q());
                    return true;
                }
                W(8);
                return true;
            }
            Y();
            return true;
        }

        public byte K() {
            if (this.f2168k == this.f2166i) {
                U(1);
            }
            byte[] bArr = this.f2165h;
            int i10 = this.f2168k;
            this.f2168k = i10 + 1;
            return bArr[i10];
        }

        public int O() {
            int i10 = this.f2168k;
            if (this.f2166i - i10 < 4) {
                U(4);
                i10 = this.f2168k;
            }
            byte[] bArr = this.f2165h;
            this.f2168k = i10 + 4;
            return ((bArr[i10 + 3] & ForkServer.ERROR) << 24) | (bArr[i10] & ForkServer.ERROR) | ((bArr[i10 + 1] & ForkServer.ERROR) << 8) | ((bArr[i10 + 2] & ForkServer.ERROR) << 16);
        }

        public long P() {
            int i10 = this.f2168k;
            if (this.f2166i - i10 < 8) {
                U(8);
                i10 = this.f2168k;
            }
            byte[] bArr = this.f2165h;
            this.f2168k = i10 + 8;
            return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
            if (r2[r3] < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int Q() {
            /*
                r5 = this;
                int r0 = r5.f2168k
                int r1 = r5.f2166i
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f2165h
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.f2168k = r3
                return r0
            L12:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r3
                goto L70
            L31:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r2 = r2[r3]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.S()
                int r0 = (int) r0
                return r0
            L70:
                r5.f2168k = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.h.c.Q():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
            if (r2[r0] < 0) goto L42;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long R() {
            /*
                Method dump skipped, instructions count: 192
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.h.c.R():long");
        }

        long S() {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte K = K();
                j10 |= (K & Byte.MAX_VALUE) << i10;
                if ((K & 128) == 0) {
                    return j10;
                }
            }
            throw z.f();
        }

        public void W(int i10) {
            int i11 = this.f2166i;
            int i12 = this.f2168k;
            if (i10 <= i11 - i12 && i10 >= 0) {
                this.f2168k = i12 + i10;
            } else {
                X(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public void a(int i10) {
            if (this.f2169l == i10) {
                return;
            }
            throw z.b();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int e() {
            return this.f2170m + this.f2168k;
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public boolean f() {
            if (this.f2168k == this.f2166i && !b0(1)) {
                return true;
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public void l(int i10) {
            this.f2171n = i10;
            T();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int m(int i10) {
            if (i10 >= 0) {
                int i11 = i10 + this.f2170m + this.f2168k;
                if (i11 >= 0) {
                    int i12 = this.f2171n;
                    if (i11 <= i12) {
                        this.f2171n = i11;
                        T();
                        return i12;
                    }
                    throw z.m();
                }
                throw z.h();
            }
            throw z.g();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public boolean n() {
            if (R() != 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public g o() {
            int Q = Q();
            int i10 = this.f2166i;
            int i11 = this.f2168k;
            if (Q <= i10 - i11 && Q > 0) {
                g n10 = g.n(this.f2165h, i11, Q);
                this.f2168k += Q;
                return n10;
            } else if (Q == 0) {
                return g.f2136b;
            } else {
                if (Q >= 0) {
                    return J(Q);
                }
                throw z.g();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public double p() {
            return Double.longBitsToDouble(P());
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int q() {
            return Q();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int r() {
            return O();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public long s() {
            return P();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public float t() {
            return Float.intBitsToFloat(O());
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int u() {
            return Q();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public long v() {
            return R();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int w() {
            return O();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public long x() {
            return P();
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int y() {
            return h.c(Q());
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public long z() {
            return h.d(R());
        }

        private c(InputStream inputStream, int i10) {
            super();
            this.f2171n = Integer.MAX_VALUE;
            y.b(inputStream, "input");
            this.f2164g = inputStream;
            this.f2165h = new byte[i10];
            this.f2166i = 0;
            this.f2168k = 0;
            this.f2170m = 0;
        }
    }

    public static int c(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public static long d(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static h g(InputStream inputStream) {
        return h(inputStream, Base64Utils.IO_BUFFER_SIZE);
    }

    public static h h(InputStream inputStream, int i10) {
        if (i10 > 0) {
            if (inputStream == null) {
                return i(y.f2390d);
            }
            return new c(inputStream, i10);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    public static h i(byte[] bArr) {
        return j(bArr, 0, bArr.length);
    }

    public static h j(byte[] bArr, int i10, int i11) {
        return k(bArr, i10, i11, false);
    }

    static h k(byte[] bArr, int i10, int i11, boolean z10) {
        b bVar = new b(bArr, i10, i11, z10);
        try {
            bVar.m(i11);
            return bVar;
        } catch (z e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public abstract String A();

    public abstract String B();

    public abstract int C();

    public abstract int D();

    public abstract long E();

    public abstract boolean F(int i10);

    public void G() {
        int C;
        do {
            C = C();
            if (C == 0) {
                return;
            }
            b();
            this.f2150a++;
            this.f2150a--;
        } while (F(C));
    }

    public abstract void a(int i10);

    public void b() {
        if (this.f2150a < this.f2151b) {
            return;
        }
        throw z.i();
    }

    public abstract int e();

    public abstract boolean f();

    public abstract void l(int i10);

    public abstract int m(int i10);

    public abstract boolean n();

    public abstract g o();

    public abstract double p();

    public abstract int q();

    public abstract int r();

    public abstract long s();

    public abstract float t();

    public abstract int u();

    public abstract long v();

    public abstract int w();

    public abstract long x();

    public abstract int y();

    public abstract long z();

    private h() {
        this.f2151b = f2149f;
        this.f2152c = Integer.MAX_VALUE;
        this.f2154e = false;
    }
}
