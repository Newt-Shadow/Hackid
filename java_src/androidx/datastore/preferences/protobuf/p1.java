package androidx.datastore.preferences.protobuf;

import java.nio.charset.Charset;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class p1 {

    /* renamed from: a  reason: collision with root package name */
    private static final b f2260a;

    /* loaded from: classes.dex */
    private static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static void h(byte b10, byte b11, byte b12, byte b13, char[] cArr, int i10) {
            if (!m(b11) && (((b10 << 28) + (b11 + 112)) >> 30) == 0 && !m(b12) && !m(b13)) {
                int r10 = ((b10 & 7) << 18) | (r(b11) << 12) | (r(b12) << 6) | r(b13);
                cArr[i10] = l(r10);
                cArr[i10 + 1] = q(r10);
                return;
            }
            throw z.d();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void i(byte b10, char[] cArr, int i10) {
            cArr[i10] = (char) b10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void j(byte b10, byte b11, byte b12, char[] cArr, int i10) {
            if (!m(b11) && ((b10 != -32 || b11 >= -96) && ((b10 != -19 || b11 < -96) && !m(b12)))) {
                cArr[i10] = (char) (((b10 & 15) << 12) | (r(b11) << 6) | r(b12));
                return;
            }
            throw z.d();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void k(byte b10, byte b11, char[] cArr, int i10) {
            if (b10 >= -62 && !m(b11)) {
                cArr[i10] = (char) (((b10 & 31) << 6) | r(b11));
                return;
            }
            throw z.d();
        }

        private static char l(int i10) {
            return (char) ((i10 >>> 10) + 55232);
        }

        private static boolean m(byte b10) {
            return b10 > -65;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean n(byte b10) {
            return b10 >= 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean o(byte b10) {
            return b10 < -16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean p(byte b10) {
            return b10 < -32;
        }

        private static char q(int i10) {
            return (char) ((i10 & 1023) + 56320);
        }

        private static int r(byte b10) {
            return b10 & 63;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class b {
        b() {
        }

        abstract String a(byte[] bArr, int i10, int i11);

        abstract int b(String str, byte[] bArr, int i10, int i11);
    }

    /* loaded from: classes.dex */
    static final class c extends b {
        c() {
        }

        @Override // androidx.datastore.preferences.protobuf.p1.b
        String a(byte[] bArr, int i10, int i11) {
            if ((i10 | i11 | ((bArr.length - i10) - i11)) >= 0) {
                int i12 = i10 + i11;
                char[] cArr = new char[i11];
                int i13 = 0;
                while (i10 < i12) {
                    byte b10 = bArr[i10];
                    if (!a.n(b10)) {
                        break;
                    }
                    i10++;
                    a.i(b10, cArr, i13);
                    i13++;
                }
                int i14 = i13;
                while (i10 < i12) {
                    int i15 = i10 + 1;
                    byte b11 = bArr[i10];
                    if (a.n(b11)) {
                        int i16 = i14 + 1;
                        a.i(b11, cArr, i14);
                        while (i15 < i12) {
                            byte b12 = bArr[i15];
                            if (!a.n(b12)) {
                                break;
                            }
                            i15++;
                            a.i(b12, cArr, i16);
                            i16++;
                        }
                        i10 = i15;
                        i14 = i16;
                    } else if (a.p(b11)) {
                        if (i15 < i12) {
                            a.k(b11, bArr[i15], cArr, i14);
                            i10 = i15 + 1;
                            i14++;
                        } else {
                            throw z.d();
                        }
                    } else if (a.o(b11)) {
                        if (i15 < i12 - 1) {
                            int i17 = i15 + 1;
                            a.j(b11, bArr[i15], bArr[i17], cArr, i14);
                            i10 = i17 + 1;
                            i14++;
                        } else {
                            throw z.d();
                        }
                    } else if (i15 < i12 - 2) {
                        int i18 = i15 + 1;
                        byte b13 = bArr[i15];
                        int i19 = i18 + 1;
                        a.h(b11, b13, bArr[i18], bArr[i19], cArr, i14);
                        i10 = i19 + 1;
                        i14 = i14 + 1 + 1;
                    } else {
                        throw z.d();
                    }
                }
                return new String(cArr, 0, i14);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
            return r10 + r0;
         */
        @Override // androidx.datastore.preferences.protobuf.p1.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int b(java.lang.String r8, byte[] r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 254
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.p1.c.b(java.lang.String, byte[], int, int):int");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class d extends IllegalArgumentException {
        d(int i10, int i11) {
            super("Unpaired surrogate at index " + i10 + " of " + i11);
        }
    }

    /* loaded from: classes.dex */
    static final class e extends b {
        e() {
        }

        static boolean c() {
            if (o1.B() && o1.C()) {
                return true;
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.p1.b
        String a(byte[] bArr, int i10, int i11) {
            Charset charset = y.f2388b;
            String str = new String(bArr, i10, i11, charset);
            if (str.indexOf(65533) < 0) {
                return str;
            }
            if (Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i10, i11 + i10))) {
                return str;
            }
            throw z.d();
        }

        @Override // androidx.datastore.preferences.protobuf.p1.b
        int b(String str, byte[] bArr, int i10, int i11) {
            char c10;
            long j10;
            long j11;
            long j12;
            char c11;
            int i12;
            char charAt;
            long j13 = i10;
            long j14 = i11 + j13;
            int length = str.length();
            if (length <= i11 && bArr.length - i11 >= i10) {
                int i13 = 0;
                while (true) {
                    c10 = 128;
                    j10 = 1;
                    if (i13 >= length || (charAt = str.charAt(i13)) >= 128) {
                        break;
                    }
                    o1.H(bArr, j13, (byte) charAt);
                    i13++;
                    j13 = 1 + j13;
                }
                if (i13 == length) {
                    return (int) j13;
                }
                while (i13 < length) {
                    char charAt2 = str.charAt(i13);
                    if (charAt2 < c10 && j13 < j14) {
                        long j15 = j13 + j10;
                        o1.H(bArr, j13, (byte) charAt2);
                        j12 = j10;
                        j11 = j15;
                        c11 = c10;
                    } else if (charAt2 < 2048 && j13 <= j14 - 2) {
                        long j16 = j13 + j10;
                        o1.H(bArr, j13, (byte) ((charAt2 >>> 6) | 960));
                        long j17 = j16 + j10;
                        o1.H(bArr, j16, (byte) ((charAt2 & '?') | 128));
                        long j18 = j10;
                        c11 = 128;
                        j11 = j17;
                        j12 = j18;
                    } else if ((charAt2 < 55296 || 57343 < charAt2) && j13 <= j14 - 3) {
                        long j19 = j13 + j10;
                        o1.H(bArr, j13, (byte) ((charAt2 >>> '\f') | 480));
                        long j20 = j19 + j10;
                        o1.H(bArr, j19, (byte) (((charAt2 >>> 6) & 63) | 128));
                        o1.H(bArr, j20, (byte) ((charAt2 & '?') | 128));
                        j11 = j20 + 1;
                        j12 = 1;
                        c11 = 128;
                    } else if (j13 <= j14 - 4) {
                        int i14 = i13 + 1;
                        if (i14 != length) {
                            char charAt3 = str.charAt(i14);
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                long j21 = j13 + 1;
                                o1.H(bArr, j13, (byte) ((codePoint >>> 18) | 240));
                                long j22 = j21 + 1;
                                c11 = 128;
                                o1.H(bArr, j21, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j23 = j22 + 1;
                                o1.H(bArr, j22, (byte) (((codePoint >>> 6) & 63) | 128));
                                j12 = 1;
                                j11 = j23 + 1;
                                o1.H(bArr, j23, (byte) ((codePoint & 63) | 128));
                                i13 = i14;
                            } else {
                                i13 = i14;
                            }
                        }
                        throw new d(i13 - 1, length);
                    } else if (55296 <= charAt2 && charAt2 <= 57343 && ((i12 = i13 + 1) == length || !Character.isSurrogatePair(charAt2, str.charAt(i12)))) {
                        throw new d(i13, length);
                    } else {
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + j13);
                    }
                    i13++;
                    c10 = c11;
                    long j24 = j12;
                    j13 = j11;
                    j10 = j24;
                }
                return (int) j13;
            }
            throw new ArrayIndexOutOfBoundsException("Failed writing " + str.charAt(length - 1) + " at index " + (i10 + i11));
        }
    }

    static {
        b cVar;
        if (e.c() && !androidx.datastore.preferences.protobuf.d.c()) {
            cVar = new e();
        } else {
            cVar = new c();
        }
        f2260a = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(byte[] bArr, int i10, int i11) {
        return f2260a.a(bArr, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(String str, byte[] bArr, int i10, int i11) {
        return f2260a.b(str, bArr, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length && str.charAt(i10) < 128) {
            i10++;
        }
        int i11 = length;
        while (true) {
            if (i10 < length) {
                char charAt = str.charAt(i10);
                if (charAt < 2048) {
                    i11 += (127 - charAt) >>> 31;
                    i10++;
                } else {
                    i11 += d(str, i10);
                    break;
                }
            } else {
                break;
            }
        }
        if (i11 >= length) {
            return i11;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i11 + 4294967296L));
    }

    private static int d(String str, int i10) {
        int length = str.length();
        int i11 = 0;
        while (i10 < length) {
            char charAt = str.charAt(i10);
            if (charAt < 2048) {
                i11 += (127 - charAt) >>> 31;
            } else {
                i11 += 2;
                if (55296 <= charAt && charAt <= 57343) {
                    if (Character.codePointAt(str, i10) >= 65536) {
                        i10++;
                    } else {
                        throw new d(i10, length);
                    }
                }
            }
            i10++;
        }
        return i11;
    }
}
