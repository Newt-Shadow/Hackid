package com.google.android.gms.internal.play_billing;

import org.apache.tika.fork.ForkServer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class s0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i10, r0 r0Var) {
        int h10 = h(bArr, i10, r0Var);
        int i11 = r0Var.f7102a;
        if (i11 >= 0) {
            if (i11 <= bArr.length - h10) {
                if (i11 == 0) {
                    r0Var.f7104c = e1.f6973b;
                    return h10;
                }
                r0Var.f7104c = e1.t(bArr, h10, i11);
                return h10 + i11;
            }
            throw l2.g();
        }
        throw l2.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i10) {
        int i11 = bArr[i10] & ForkServer.ERROR;
        int i12 = bArr[i10 + 1] & ForkServer.ERROR;
        int i13 = bArr[i10 + 2] & ForkServer.ERROR;
        return ((bArr[i10 + 3] & ForkServer.ERROR) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(q3 q3Var, byte[] bArr, int i10, int i11, int i12, r0 r0Var) {
        Object h10 = q3Var.h();
        int l10 = l(h10, q3Var, bArr, i10, i11, i12, r0Var);
        q3Var.a(h10);
        r0Var.f7104c = h10;
        return l10;
    }

    static int d(q3 q3Var, byte[] bArr, int i10, int i11, r0 r0Var) {
        Object h10 = q3Var.h();
        int m10 = m(h10, q3Var, bArr, i10, i11, r0Var);
        q3Var.a(h10);
        r0Var.f7104c = h10;
        return m10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(q3 q3Var, int i10, byte[] bArr, int i11, int i12, i2 i2Var, r0 r0Var) {
        int d10 = d(q3Var, bArr, i11, i12, r0Var);
        i2Var.add(r0Var.f7104c);
        while (d10 < i12) {
            int h10 = h(bArr, d10, r0Var);
            if (i10 != r0Var.f7102a) {
                break;
            }
            d10 = d(q3Var, bArr, h10, i12, r0Var);
            i2Var.add(r0Var.f7104c);
        }
        return d10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(byte[] bArr, int i10, i2 i2Var, r0 r0Var) {
        c2 c2Var = (c2) i2Var;
        int h10 = h(bArr, i10, r0Var);
        int i11 = r0Var.f7102a + h10;
        while (h10 < i11) {
            h10 = h(bArr, h10, r0Var);
            c2Var.x(r0Var.f7102a);
        }
        if (h10 == i11) {
            return h10;
        }
        throw l2.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(int i10, byte[] bArr, int i11, int i12, w3 w3Var, r0 r0Var) {
        if ((i10 >>> 3) != 0) {
            int i13 = i10 & 7;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            if (i13 == 5) {
                                w3Var.j(i10, Integer.valueOf(b(bArr, i11)));
                                return i11 + 4;
                            }
                            throw l2.b();
                        }
                        int i14 = (i10 & (-8)) | 4;
                        w3 f10 = w3.f();
                        int i15 = 0;
                        while (true) {
                            if (i11 >= i12) {
                                break;
                            }
                            int h10 = h(bArr, i11, r0Var);
                            int i16 = r0Var.f7102a;
                            i15 = i16;
                            if (i16 != i14) {
                                int g10 = g(i15, bArr, h10, i12, f10, r0Var);
                                i15 = i16;
                                i11 = g10;
                            } else {
                                i11 = h10;
                                break;
                            }
                        }
                        if (i11 <= i12 && i15 == i14) {
                            w3Var.j(i10, f10);
                            return i11;
                        }
                        throw l2.e();
                    }
                    int h11 = h(bArr, i11, r0Var);
                    int i17 = r0Var.f7102a;
                    if (i17 >= 0) {
                        if (i17 <= bArr.length - h11) {
                            if (i17 == 0) {
                                w3Var.j(i10, e1.f6973b);
                            } else {
                                w3Var.j(i10, e1.t(bArr, h11, i17));
                            }
                            return h11 + i17;
                        }
                        throw l2.g();
                    }
                    throw l2.d();
                }
                w3Var.j(i10, Long.valueOf(n(bArr, i11)));
                return i11 + 8;
            }
            int k10 = k(bArr, i11, r0Var);
            w3Var.j(i10, Long.valueOf(r0Var.f7103b));
            return k10;
        }
        throw l2.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(byte[] bArr, int i10, r0 r0Var) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 >= 0) {
            r0Var.f7102a = b10;
            return i11;
        }
        return i(b10, bArr, i11, r0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(int i10, byte[] bArr, int i11, r0 r0Var) {
        byte b10 = bArr[i11];
        int i12 = i11 + 1;
        int i13 = i10 & 127;
        if (b10 >= 0) {
            r0Var.f7102a = i13 | (b10 << 7);
            return i12;
        }
        int i14 = i13 | ((b10 & Byte.MAX_VALUE) << 7);
        int i15 = i12 + 1;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            r0Var.f7102a = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & Byte.MAX_VALUE) << 14);
        int i17 = i15 + 1;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            r0Var.f7102a = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & Byte.MAX_VALUE) << 21);
        int i19 = i17 + 1;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            r0Var.f7102a = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] < 0) {
                i19 = i21;
            } else {
                r0Var.f7102a = i20;
                return i21;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i10, byte[] bArr, int i11, int i12, i2 i2Var, r0 r0Var) {
        c2 c2Var = (c2) i2Var;
        int h10 = h(bArr, i11, r0Var);
        c2Var.x(r0Var.f7102a);
        while (h10 < i12) {
            int h11 = h(bArr, h10, r0Var);
            if (i10 != r0Var.f7102a) {
                break;
            }
            h10 = h(bArr, h11, r0Var);
            c2Var.x(r0Var.f7102a);
        }
        return h10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(byte[] bArr, int i10, r0 r0Var) {
        long j10 = bArr[i10];
        int i11 = i10 + 1;
        if (j10 >= 0) {
            r0Var.f7103b = j10;
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
        r0Var.f7103b = j11;
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(Object obj, q3 q3Var, byte[] bArr, int i10, int i11, int i12, r0 r0Var) {
        int y10 = ((i3) q3Var).y(obj, bArr, i10, i11, i12, r0Var);
        r0Var.f7104c = obj;
        return y10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m(Object obj, q3 q3Var, byte[] bArr, int i10, int i11, r0 r0Var) {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = i(i13, bArr, i12, r0Var);
            i13 = r0Var.f7102a;
        }
        int i14 = i12;
        if (i13 >= 0 && i13 <= i11 - i14) {
            int i15 = i13 + i14;
            q3Var.g(obj, bArr, i14, i15, r0Var);
            r0Var.f7104c = obj;
            return i15;
        }
        throw l2.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long n(byte[] bArr, int i10) {
        return (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48) | ((bArr[i10 + 7] & 255) << 56);
    }
}
