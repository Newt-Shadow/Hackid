package com.google.android.gms.internal.auth;

import org.apache.tika.fork.ForkServer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class e1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i10, d1 d1Var) {
        int h10 = h(bArr, i10, d1Var);
        int i11 = d1Var.f5996a;
        if (i11 >= 0) {
            if (i11 <= bArr.length - h10) {
                if (i11 == 0) {
                    d1Var.f5998c = p1.f6140b;
                    return h10;
                }
                d1Var.f5998c = p1.s(bArr, h10, i11);
                return h10 + i11;
            }
            throw g2.f();
        }
        throw g2.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i10) {
        int i11 = bArr[i10] & ForkServer.ERROR;
        int i12 = bArr[i10 + 1] & ForkServer.ERROR;
        int i13 = bArr[i10 + 2] & ForkServer.ERROR;
        return ((bArr[i10 + 3] & ForkServer.ERROR) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(k3 k3Var, byte[] bArr, int i10, int i11, int i12, d1 d1Var) {
        Object g10 = k3Var.g();
        int l10 = l(g10, k3Var, bArr, i10, i11, i12, d1Var);
        k3Var.a(g10);
        d1Var.f5998c = g10;
        return l10;
    }

    static int d(k3 k3Var, byte[] bArr, int i10, int i11, d1 d1Var) {
        Object g10 = k3Var.g();
        int m10 = m(g10, k3Var, bArr, i10, i11, d1Var);
        k3Var.a(g10);
        d1Var.f5998c = g10;
        return m10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(k3 k3Var, int i10, byte[] bArr, int i11, int i12, d2 d2Var, d1 d1Var) {
        int d10 = d(k3Var, bArr, i11, i12, d1Var);
        d2Var.add(d1Var.f5998c);
        while (d10 < i12) {
            int h10 = h(bArr, d10, d1Var);
            if (i10 != d1Var.f5996a) {
                break;
            }
            d10 = d(k3Var, bArr, h10, i12, d1Var);
            d2Var.add(d1Var.f5998c);
        }
        return d10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(byte[] bArr, int i10, d2 d2Var, d1 d1Var) {
        android.support.v4.media.session.b.a(d2Var);
        int h10 = h(bArr, i10, d1Var);
        int i11 = d1Var.f5996a + h10;
        if (h10 >= i11) {
            if (h10 == i11) {
                return h10;
            }
            throw g2.f();
        }
        h(bArr, h10, d1Var);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(int i10, byte[] bArr, int i11, int i12, r3 r3Var, d1 d1Var) {
        if ((i10 >>> 3) != 0) {
            int i13 = i10 & 7;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            if (i13 == 5) {
                                r3Var.h(i10, Integer.valueOf(b(bArr, i11)));
                                return i11 + 4;
                            }
                            throw g2.a();
                        }
                        int i14 = (i10 & (-8)) | 4;
                        r3 d10 = r3.d();
                        int i15 = 0;
                        while (true) {
                            if (i11 >= i12) {
                                break;
                            }
                            int h10 = h(bArr, i11, d1Var);
                            int i16 = d1Var.f5996a;
                            i15 = i16;
                            if (i16 != i14) {
                                int g10 = g(i15, bArr, h10, i12, d10, d1Var);
                                i15 = i16;
                                i11 = g10;
                            } else {
                                i11 = h10;
                                break;
                            }
                        }
                        if (i11 <= i12 && i15 == i14) {
                            r3Var.h(i10, d10);
                            return i11;
                        }
                        throw g2.d();
                    }
                    int h11 = h(bArr, i11, d1Var);
                    int i17 = d1Var.f5996a;
                    if (i17 >= 0) {
                        if (i17 <= bArr.length - h11) {
                            if (i17 == 0) {
                                r3Var.h(i10, p1.f6140b);
                            } else {
                                r3Var.h(i10, p1.s(bArr, h11, i17));
                            }
                            return h11 + i17;
                        }
                        throw g2.f();
                    }
                    throw g2.c();
                }
                r3Var.h(i10, Long.valueOf(n(bArr, i11)));
                return i11 + 8;
            }
            int k10 = k(bArr, i11, d1Var);
            r3Var.h(i10, Long.valueOf(d1Var.f5997b));
            return k10;
        }
        throw g2.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(byte[] bArr, int i10, d1 d1Var) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 >= 0) {
            d1Var.f5996a = b10;
            return i11;
        }
        return i(b10, bArr, i11, d1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(int i10, byte[] bArr, int i11, d1 d1Var) {
        byte b10 = bArr[i11];
        int i12 = i11 + 1;
        int i13 = i10 & 127;
        if (b10 >= 0) {
            d1Var.f5996a = i13 | (b10 << 7);
            return i12;
        }
        int i14 = i13 | ((b10 & Byte.MAX_VALUE) << 7);
        int i15 = i12 + 1;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            d1Var.f5996a = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & Byte.MAX_VALUE) << 14);
        int i17 = i15 + 1;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            d1Var.f5996a = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & Byte.MAX_VALUE) << 21);
        int i19 = i17 + 1;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            d1Var.f5996a = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] < 0) {
                i19 = i21;
            } else {
                d1Var.f5996a = i20;
                return i21;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i10, byte[] bArr, int i11, int i12, d2 d2Var, d1 d1Var) {
        android.support.v4.media.session.b.a(d2Var);
        h(bArr, i11, d1Var);
        int i13 = d1Var.f5996a;
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(byte[] bArr, int i10, d1 d1Var) {
        long j10 = bArr[i10];
        int i11 = i10 + 1;
        if (j10 >= 0) {
            d1Var.f5997b = j10;
            return i11;
        }
        int i12 = i11 + 1;
        byte b10 = bArr[i11];
        long j11 = (j10 & 127) | ((b10 & Byte.MAX_VALUE) << 7);
        int i13 = 7;
        while (b10 < 0) {
            int i14 = i12 + 1;
            byte b11 = bArr[i12];
            i13 += 7;
            j11 |= (b11 & Byte.MAX_VALUE) << i13;
            i12 = i14;
            b10 = b11;
        }
        d1Var.f5997b = j11;
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(Object obj, k3 k3Var, byte[] bArr, int i10, int i11, int i12, d1 d1Var) {
        int q10 = ((c3) k3Var).q(obj, bArr, i10, i11, i12, d1Var);
        d1Var.f5998c = obj;
        return q10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m(Object obj, k3 k3Var, byte[] bArr, int i10, int i11, d1 d1Var) {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = i(i13, bArr, i12, d1Var);
            i13 = d1Var.f5996a;
        }
        int i14 = i12;
        if (i13 >= 0 && i13 <= i11 - i14) {
            int i15 = i13 + i14;
            k3Var.d(obj, bArr, i14, i15, d1Var);
            d1Var.f5998c = obj;
            return i15;
        }
        throw g2.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long n(byte[] bArr, int i10) {
        return (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48) | ((bArr[i10 + 7] & 255) << 56);
    }
}
