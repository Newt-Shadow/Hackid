package com.google.crypto.tink.shaded.protobuf;

import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: f  reason: collision with root package name */
    private static volatile int f8457f = 100;

    /* renamed from: a  reason: collision with root package name */
    int f8458a;

    /* renamed from: b  reason: collision with root package name */
    int f8459b;

    /* renamed from: c  reason: collision with root package name */
    int f8460c;

    /* renamed from: d  reason: collision with root package name */
    j f8461d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f8462e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b extends i {

        /* renamed from: g  reason: collision with root package name */
        private final byte[] f8463g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f8464h;

        /* renamed from: i  reason: collision with root package name */
        private int f8465i;

        /* renamed from: j  reason: collision with root package name */
        private int f8466j;

        /* renamed from: k  reason: collision with root package name */
        private int f8467k;

        /* renamed from: l  reason: collision with root package name */
        private int f8468l;

        /* renamed from: m  reason: collision with root package name */
        private int f8469m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f8470n;

        /* renamed from: o  reason: collision with root package name */
        private int f8471o;

        private void M() {
            int i10 = this.f8465i + this.f8466j;
            this.f8465i = i10;
            int i11 = i10 - this.f8468l;
            int i12 = this.f8471o;
            if (i11 > i12) {
                int i13 = i11 - i12;
                this.f8466j = i13;
                this.f8465i = i10 - i13;
                return;
            }
            this.f8466j = 0;
        }

        private void P() {
            if (this.f8465i - this.f8467k >= 10) {
                Q();
            } else {
                R();
            }
        }

        private void Q() {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.f8463g;
                int i11 = this.f8467k;
                this.f8467k = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw a0.f();
        }

        private void R() {
            for (int i10 = 0; i10 < 10; i10++) {
                if (F() >= 0) {
                    return;
                }
            }
            throw a0.f();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public String A() {
            int J = J();
            if (J > 0) {
                int i10 = this.f8465i;
                int i11 = this.f8467k;
                if (J <= i10 - i11) {
                    String e10 = o1.e(this.f8463g, i11, J);
                    this.f8467k += J;
                    return e10;
                }
            }
            if (J == 0) {
                return "";
            }
            if (J <= 0) {
                throw a0.g();
            }
            throw a0.m();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int B() {
            if (e()) {
                this.f8469m = 0;
                return 0;
            }
            int J = J();
            this.f8469m = J;
            if (p1.a(J) != 0) {
                return this.f8469m;
            }
            throw a0.c();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int C() {
            return J();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public long D() {
            return K();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public boolean E(int i10) {
            int b10 = p1.b(i10);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 != 4) {
                                if (b10 == 5) {
                                    O(4);
                                    return true;
                                }
                                throw a0.e();
                            }
                            return false;
                        }
                        N();
                        a(p1.c(p1.a(i10), 4));
                        return true;
                    }
                    O(J());
                    return true;
                }
                O(8);
                return true;
            }
            P();
            return true;
        }

        public byte F() {
            int i10 = this.f8467k;
            if (i10 != this.f8465i) {
                byte[] bArr = this.f8463g;
                this.f8467k = i10 + 1;
                return bArr[i10];
            }
            throw a0.m();
        }

        public byte[] G(int i10) {
            if (i10 > 0) {
                int i11 = this.f8465i;
                int i12 = this.f8467k;
                if (i10 <= i11 - i12) {
                    int i13 = i10 + i12;
                    this.f8467k = i13;
                    return Arrays.copyOfRange(this.f8463g, i12, i13);
                }
            }
            if (i10 <= 0) {
                if (i10 == 0) {
                    return z.f8669d;
                }
                throw a0.g();
            }
            throw a0.m();
        }

        public int H() {
            int i10 = this.f8467k;
            if (this.f8465i - i10 >= 4) {
                byte[] bArr = this.f8463g;
                this.f8467k = i10 + 4;
                return ((bArr[i10 + 3] & ForkServer.ERROR) << 24) | (bArr[i10] & ForkServer.ERROR) | ((bArr[i10 + 1] & ForkServer.ERROR) << 8) | ((bArr[i10 + 2] & ForkServer.ERROR) << 16);
            }
            throw a0.m();
        }

        public long I() {
            int i10 = this.f8467k;
            if (this.f8465i - i10 >= 8) {
                byte[] bArr = this.f8463g;
                this.f8467k = i10 + 8;
                return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
            }
            throw a0.m();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
            if (r2[r3] < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int J() {
            /*
                r5 = this;
                int r0 = r5.f8467k
                int r1 = r5.f8465i
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f8463g
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.f8467k = r3
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
                long r0 = r5.L()
                int r0 = (int) r0
                return r0
            L70:
                r5.f8467k = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.i.b.J():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
            if (r2[r0] < 0) goto L42;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long K() {
            /*
                Method dump skipped, instructions count: 192
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.i.b.K():long");
        }

        long L() {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte F = F();
                j10 |= (F & Byte.MAX_VALUE) << i10;
                if ((F & 128) == 0) {
                    return j10;
                }
            }
            throw a0.f();
        }

        public void N() {
            int B;
            do {
                B = B();
                if (B == 0) {
                    return;
                }
            } while (E(B));
        }

        public void O(int i10) {
            if (i10 >= 0) {
                int i11 = this.f8465i;
                int i12 = this.f8467k;
                if (i10 <= i11 - i12) {
                    this.f8467k = i12 + i10;
                    return;
                }
            }
            if (i10 < 0) {
                throw a0.g();
            }
            throw a0.m();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public void a(int i10) {
            if (this.f8469m == i10) {
                return;
            }
            throw a0.b();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int d() {
            return this.f8467k - this.f8468l;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public boolean e() {
            if (this.f8467k == this.f8465i) {
                return true;
            }
            return false;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public void k(int i10) {
            this.f8471o = i10;
            M();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int l(int i10) {
            if (i10 >= 0) {
                int d10 = i10 + d();
                if (d10 >= 0) {
                    int i11 = this.f8471o;
                    if (d10 <= i11) {
                        this.f8471o = d10;
                        M();
                        return i11;
                    }
                    throw a0.m();
                }
                throw a0.h();
            }
            throw a0.g();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public boolean m() {
            if (K() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public h n() {
            h n10;
            int J = J();
            if (J > 0) {
                int i10 = this.f8465i;
                int i11 = this.f8467k;
                if (J <= i10 - i11) {
                    if (this.f8464h && this.f8470n) {
                        n10 = h.N(this.f8463g, i11, J);
                    } else {
                        n10 = h.n(this.f8463g, i11, J);
                    }
                    this.f8467k += J;
                    return n10;
                }
            }
            if (J == 0) {
                return h.f8444b;
            }
            return h.M(G(J));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public double o() {
            return Double.longBitsToDouble(I());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int p() {
            return J();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int q() {
            return H();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public long r() {
            return I();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public float s() {
            return Float.intBitsToFloat(H());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int t() {
            return J();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public long u() {
            return K();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int v() {
            return H();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public long w() {
            return I();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int x() {
            return i.b(J());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public long y() {
            return i.c(K());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public String z() {
            int J = J();
            if (J > 0) {
                int i10 = this.f8465i;
                int i11 = this.f8467k;
                if (J <= i10 - i11) {
                    String str = new String(this.f8463g, i11, J, z.f8667b);
                    this.f8467k += J;
                    return str;
                }
            }
            if (J == 0) {
                return "";
            }
            if (J < 0) {
                throw a0.g();
            }
            throw a0.m();
        }

        private b(byte[] bArr, int i10, int i11, boolean z10) {
            super();
            this.f8471o = Integer.MAX_VALUE;
            this.f8463g = bArr;
            this.f8465i = i11 + i10;
            this.f8467k = i10;
            this.f8468l = i10;
            this.f8464h = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c extends i {

        /* renamed from: g  reason: collision with root package name */
        private final InputStream f8472g;

        /* renamed from: h  reason: collision with root package name */
        private final byte[] f8473h;

        /* renamed from: i  reason: collision with root package name */
        private int f8474i;

        /* renamed from: j  reason: collision with root package name */
        private int f8475j;

        /* renamed from: k  reason: collision with root package name */
        private int f8476k;

        /* renamed from: l  reason: collision with root package name */
        private int f8477l;

        /* renamed from: m  reason: collision with root package name */
        private int f8478m;

        /* renamed from: n  reason: collision with root package name */
        private int f8479n;

        private static int F(InputStream inputStream) {
            try {
                return inputStream.available();
            } catch (a0 e10) {
                e10.j();
                throw e10;
            }
        }

        private static int G(InputStream inputStream, byte[] bArr, int i10, int i11) {
            try {
                return inputStream.read(bArr, i10, i11);
            } catch (a0 e10) {
                e10.j();
                throw e10;
            }
        }

        private h H(int i10) {
            byte[] K = K(i10);
            if (K != null) {
                return h.m(K);
            }
            int i11 = this.f8476k;
            int i12 = this.f8474i;
            int i13 = i12 - i11;
            this.f8478m += i12;
            this.f8476k = 0;
            this.f8474i = 0;
            List<byte[]> L = L(i10 - i13);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.f8473h, i11, bArr, 0, i13);
            for (byte[] bArr2 : L) {
                System.arraycopy(bArr2, 0, bArr, i13, bArr2.length);
                i13 += bArr2.length;
            }
            return h.M(bArr);
        }

        private byte[] J(int i10, boolean z10) {
            byte[] K = K(i10);
            if (K != null) {
                if (z10) {
                    return (byte[]) K.clone();
                }
                return K;
            }
            int i11 = this.f8476k;
            int i12 = this.f8474i;
            int i13 = i12 - i11;
            this.f8478m += i12;
            this.f8476k = 0;
            this.f8474i = 0;
            List<byte[]> L = L(i10 - i13);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.f8473h, i11, bArr, 0, i13);
            for (byte[] bArr2 : L) {
                System.arraycopy(bArr2, 0, bArr, i13, bArr2.length);
                i13 += bArr2.length;
            }
            return bArr;
        }

        private byte[] K(int i10) {
            if (i10 == 0) {
                return z.f8669d;
            }
            if (i10 >= 0) {
                int i11 = this.f8478m;
                int i12 = this.f8476k;
                int i13 = i11 + i12 + i10;
                if (i13 - this.f8460c <= 0) {
                    int i14 = this.f8479n;
                    if (i13 <= i14) {
                        int i15 = this.f8474i - i12;
                        int i16 = i10 - i15;
                        if (i16 >= 4096 && i16 > F(this.f8472g)) {
                            return null;
                        }
                        byte[] bArr = new byte[i10];
                        System.arraycopy(this.f8473h, this.f8476k, bArr, 0, i15);
                        this.f8478m += this.f8474i;
                        this.f8476k = 0;
                        this.f8474i = 0;
                        while (i15 < i10) {
                            int G = G(this.f8472g, bArr, i15, i10 - i15);
                            if (G != -1) {
                                this.f8478m += G;
                                i15 += G;
                            } else {
                                throw a0.m();
                            }
                        }
                        return bArr;
                    }
                    V((i14 - i11) - i12);
                    throw a0.m();
                }
                throw a0.l();
            }
            throw a0.g();
        }

        private List L(int i10) {
            ArrayList arrayList = new ArrayList();
            while (i10 > 0) {
                int min = Math.min(i10, (int) Base64Utils.IO_BUFFER_SIZE);
                byte[] bArr = new byte[min];
                int i11 = 0;
                while (i11 < min) {
                    int read = this.f8472g.read(bArr, i11, min - i11);
                    if (read != -1) {
                        this.f8478m += read;
                        i11 += read;
                    } else {
                        throw a0.m();
                    }
                }
                i10 -= min;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        private void R() {
            int i10 = this.f8474i + this.f8475j;
            this.f8474i = i10;
            int i11 = this.f8478m + i10;
            int i12 = this.f8479n;
            if (i11 > i12) {
                int i13 = i11 - i12;
                this.f8475j = i13;
                this.f8474i = i10 - i13;
                return;
            }
            this.f8475j = 0;
        }

        private void S(int i10) {
            if (!a0(i10)) {
                if (i10 > (this.f8460c - this.f8478m) - this.f8476k) {
                    throw a0.l();
                }
                throw a0.m();
            }
        }

        private static long T(InputStream inputStream, long j10) {
            try {
                return inputStream.skip(j10);
            } catch (a0 e10) {
                e10.j();
                throw e10;
            }
        }

        private void W(int i10) {
            if (i10 >= 0) {
                int i11 = this.f8478m;
                int i12 = this.f8476k;
                int i13 = i11 + i12 + i10;
                int i14 = this.f8479n;
                if (i13 <= i14) {
                    this.f8478m = i11 + i12;
                    int i15 = this.f8474i - i12;
                    this.f8474i = 0;
                    this.f8476k = 0;
                    while (i15 < i10) {
                        try {
                            long j10 = i10 - i15;
                            long T = T(this.f8472g, j10);
                            int i16 = (T > 0L ? 1 : (T == 0L ? 0 : -1));
                            if (i16 >= 0 && T <= j10) {
                                if (i16 == 0) {
                                    break;
                                }
                                i15 += (int) T;
                            } else {
                                throw new IllegalStateException(this.f8472g.getClass() + "#skip returned invalid result: " + T + "\nThe InputStream implementation is buggy.");
                            }
                        } finally {
                            this.f8478m += i15;
                            R();
                        }
                    }
                    if (i15 < i10) {
                        int i17 = this.f8474i;
                        int i18 = i17 - this.f8476k;
                        this.f8476k = i17;
                        S(1);
                        while (true) {
                            int i19 = i10 - i18;
                            int i20 = this.f8474i;
                            if (i19 > i20) {
                                i18 += i20;
                                this.f8476k = i20;
                                S(1);
                            } else {
                                this.f8476k = i19;
                                return;
                            }
                        }
                    }
                } else {
                    V((i14 - i11) - i12);
                    throw a0.m();
                }
            } else {
                throw a0.g();
            }
        }

        private void X() {
            if (this.f8474i - this.f8476k >= 10) {
                Y();
            } else {
                Z();
            }
        }

        private void Y() {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.f8473h;
                int i11 = this.f8476k;
                this.f8476k = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw a0.f();
        }

        private void Z() {
            for (int i10 = 0; i10 < 10; i10++) {
                if (I() >= 0) {
                    return;
                }
            }
            throw a0.f();
        }

        private boolean a0(int i10) {
            int i11 = this.f8476k;
            int i12 = i11 + i10;
            int i13 = this.f8474i;
            if (i12 > i13) {
                int i14 = this.f8460c;
                int i15 = this.f8478m;
                if (i10 > (i14 - i15) - i11 || i15 + i11 + i10 > this.f8479n) {
                    return false;
                }
                if (i11 > 0) {
                    if (i13 > i11) {
                        byte[] bArr = this.f8473h;
                        System.arraycopy(bArr, i11, bArr, 0, i13 - i11);
                    }
                    this.f8478m += i11;
                    this.f8474i -= i11;
                    this.f8476k = 0;
                }
                InputStream inputStream = this.f8472g;
                byte[] bArr2 = this.f8473h;
                int i16 = this.f8474i;
                int G = G(inputStream, bArr2, i16, Math.min(bArr2.length - i16, (this.f8460c - this.f8478m) - i16));
                if (G != 0 && G >= -1 && G <= this.f8473h.length) {
                    if (G <= 0) {
                        return false;
                    }
                    this.f8474i += G;
                    R();
                    if (this.f8474i >= i10) {
                        return true;
                    }
                    return a0(i10);
                }
                throw new IllegalStateException(this.f8472g.getClass() + "#read(byte[]) returned invalid result: " + G + "\nThe InputStream implementation is buggy.");
            }
            throw new IllegalStateException("refillBuffer() called when " + i10 + " bytes were already available in buffer");
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public String A() {
            byte[] J;
            int O = O();
            int i10 = this.f8476k;
            int i11 = this.f8474i;
            if (O <= i11 - i10 && O > 0) {
                J = this.f8473h;
                this.f8476k = i10 + O;
            } else if (O == 0) {
                return "";
            } else {
                i10 = 0;
                if (O <= i11) {
                    S(O);
                    J = this.f8473h;
                    this.f8476k = O + 0;
                } else {
                    J = J(O, false);
                }
            }
            return o1.e(J, i10, O);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int B() {
            if (e()) {
                this.f8477l = 0;
                return 0;
            }
            int O = O();
            this.f8477l = O;
            if (p1.a(O) != 0) {
                return this.f8477l;
            }
            throw a0.c();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int C() {
            return O();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public long D() {
            return P();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public boolean E(int i10) {
            int b10 = p1.b(i10);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 != 4) {
                                if (b10 == 5) {
                                    V(4);
                                    return true;
                                }
                                throw a0.e();
                            }
                            return false;
                        }
                        U();
                        a(p1.c(p1.a(i10), 4));
                        return true;
                    }
                    V(O());
                    return true;
                }
                V(8);
                return true;
            }
            X();
            return true;
        }

        public byte I() {
            if (this.f8476k == this.f8474i) {
                S(1);
            }
            byte[] bArr = this.f8473h;
            int i10 = this.f8476k;
            this.f8476k = i10 + 1;
            return bArr[i10];
        }

        public int M() {
            int i10 = this.f8476k;
            if (this.f8474i - i10 < 4) {
                S(4);
                i10 = this.f8476k;
            }
            byte[] bArr = this.f8473h;
            this.f8476k = i10 + 4;
            return ((bArr[i10 + 3] & ForkServer.ERROR) << 24) | (bArr[i10] & ForkServer.ERROR) | ((bArr[i10 + 1] & ForkServer.ERROR) << 8) | ((bArr[i10 + 2] & ForkServer.ERROR) << 16);
        }

        public long N() {
            int i10 = this.f8476k;
            if (this.f8474i - i10 < 8) {
                S(8);
                i10 = this.f8476k;
            }
            byte[] bArr = this.f8473h;
            this.f8476k = i10 + 8;
            return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
            if (r2[r3] < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int O() {
            /*
                r5 = this;
                int r0 = r5.f8476k
                int r1 = r5.f8474i
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f8473h
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.f8476k = r3
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
                long r0 = r5.Q()
                int r0 = (int) r0
                return r0
            L70:
                r5.f8476k = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.i.c.O():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
            if (r2[r0] < 0) goto L42;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long P() {
            /*
                Method dump skipped, instructions count: 192
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.i.c.P():long");
        }

        long Q() {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte I = I();
                j10 |= (I & Byte.MAX_VALUE) << i10;
                if ((I & 128) == 0) {
                    return j10;
                }
            }
            throw a0.f();
        }

        public void U() {
            int B;
            do {
                B = B();
                if (B == 0) {
                    return;
                }
            } while (E(B));
        }

        public void V(int i10) {
            int i11 = this.f8474i;
            int i12 = this.f8476k;
            if (i10 <= i11 - i12 && i10 >= 0) {
                this.f8476k = i12 + i10;
            } else {
                W(i10);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public void a(int i10) {
            if (this.f8477l == i10) {
                return;
            }
            throw a0.b();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int d() {
            return this.f8478m + this.f8476k;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public boolean e() {
            if (this.f8476k == this.f8474i && !a0(1)) {
                return true;
            }
            return false;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public void k(int i10) {
            this.f8479n = i10;
            R();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int l(int i10) {
            if (i10 >= 0) {
                int i11 = i10 + this.f8478m + this.f8476k;
                int i12 = this.f8479n;
                if (i11 <= i12) {
                    this.f8479n = i11;
                    R();
                    return i12;
                }
                throw a0.m();
            }
            throw a0.g();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public boolean m() {
            if (P() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public h n() {
            int O = O();
            int i10 = this.f8474i;
            int i11 = this.f8476k;
            if (O <= i10 - i11 && O > 0) {
                h n10 = h.n(this.f8473h, i11, O);
                this.f8476k += O;
                return n10;
            } else if (O == 0) {
                return h.f8444b;
            } else {
                return H(O);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public double o() {
            return Double.longBitsToDouble(N());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int p() {
            return O();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int q() {
            return M();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public long r() {
            return N();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public float s() {
            return Float.intBitsToFloat(M());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int t() {
            return O();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public long u() {
            return P();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int v() {
            return M();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public long w() {
            return N();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int x() {
            return i.b(O());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public long y() {
            return i.c(P());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public String z() {
            int O = O();
            if (O > 0) {
                int i10 = this.f8474i;
                int i11 = this.f8476k;
                if (O <= i10 - i11) {
                    String str = new String(this.f8473h, i11, O, z.f8667b);
                    this.f8476k += O;
                    return str;
                }
            }
            if (O == 0) {
                return "";
            }
            if (O <= this.f8474i) {
                S(O);
                String str2 = new String(this.f8473h, this.f8476k, O, z.f8667b);
                this.f8476k += O;
                return str2;
            }
            return new String(J(O, false), z.f8667b);
        }

        private c(InputStream inputStream, int i10) {
            super();
            this.f8479n = Integer.MAX_VALUE;
            z.b(inputStream, "input");
            this.f8472g = inputStream;
            this.f8473h = new byte[i10];
            this.f8474i = 0;
            this.f8476k = 0;
            this.f8478m = 0;
        }
    }

    public static int b(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public static long c(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static i f(InputStream inputStream) {
        return g(inputStream, Base64Utils.IO_BUFFER_SIZE);
    }

    public static i g(InputStream inputStream, int i10) {
        if (i10 > 0) {
            if (inputStream == null) {
                return h(z.f8669d);
            }
            return new c(inputStream, i10);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    public static i h(byte[] bArr) {
        return i(bArr, 0, bArr.length);
    }

    public static i i(byte[] bArr, int i10, int i11) {
        return j(bArr, i10, i11, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i j(byte[] bArr, int i10, int i11, boolean z10) {
        b bVar = new b(bArr, i10, i11, z10);
        try {
            bVar.l(i11);
            return bVar;
        } catch (a0 e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public abstract String A();

    public abstract int B();

    public abstract int C();

    public abstract long D();

    public abstract boolean E(int i10);

    public abstract void a(int i10);

    public abstract int d();

    public abstract boolean e();

    public abstract void k(int i10);

    public abstract int l(int i10);

    public abstract boolean m();

    public abstract h n();

    public abstract double o();

    public abstract int p();

    public abstract int q();

    public abstract long r();

    public abstract float s();

    public abstract int t();

    public abstract long u();

    public abstract int v();

    public abstract long w();

    public abstract int x();

    public abstract long y();

    public abstract String z();

    private i() {
        this.f8459b = f8457f;
        this.f8460c = Integer.MAX_VALUE;
        this.f8462e = false;
    }
}
