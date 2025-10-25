package com.google.android.gms.internal.measurement;

import org.apache.tika.fork.ForkServer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class z9 {

    /* renamed from: a  reason: collision with root package name */
    private static volatile int f6916a = 100;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f6917b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i10, y9 y9Var) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 >= 0) {
            y9Var.f6894a = b10;
            return i11;
        }
        return b(b10, bArr, i11, y9Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i10, byte[] bArr, int i11, y9 y9Var) {
        byte b10 = bArr[i11];
        int i12 = i11 + 1;
        int i13 = i10 & 127;
        if (b10 >= 0) {
            y9Var.f6894a = i13 | (b10 << 7);
            return i12;
        }
        int i14 = i13 | ((b10 & Byte.MAX_VALUE) << 7);
        int i15 = i12 + 1;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            y9Var.f6894a = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & Byte.MAX_VALUE) << 14);
        int i17 = i15 + 1;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            y9Var.f6894a = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & Byte.MAX_VALUE) << 21);
        int i19 = i17 + 1;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            y9Var.f6894a = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] < 0) {
                i19 = i21;
            } else {
                y9Var.f6894a = i20;
                return i21;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(byte[] bArr, int i10, y9 y9Var) {
        long j10 = bArr[i10];
        int i11 = i10 + 1;
        if (j10 >= 0) {
            y9Var.f6895b = j10;
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
        y9Var.f6895b = j11;
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(byte[] bArr, int i10) {
        int i11 = bArr[i10] & ForkServer.ERROR;
        int i12 = bArr[i10 + 1] & ForkServer.ERROR;
        int i13 = bArr[i10 + 2] & ForkServer.ERROR;
        return ((bArr[i10 + 3] & ForkServer.ERROR) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long e(byte[] bArr, int i10) {
        return (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48) | ((bArr[i10 + 7] & 255) << 56);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(byte[] bArr, int i10, y9 y9Var) {
        int a10 = a(bArr, i10, y9Var);
        int i11 = y9Var.f6894a;
        if (i11 >= 0) {
            if (i11 == 0) {
                y9Var.f6896c = "";
                return a10;
            }
            int i12 = od.f6618a;
            int length = bArr.length;
            if ((((length - a10) - i11) | a10 | i11) >= 0) {
                int i13 = a10 + i11;
                char[] cArr = new char[i11];
                int i14 = 0;
                while (a10 < i13) {
                    byte b10 = bArr[a10];
                    if (!md.a(b10)) {
                        break;
                    }
                    a10++;
                    cArr[i14] = (char) b10;
                    i14++;
                }
                int i15 = i14;
                while (a10 < i13) {
                    int i16 = a10 + 1;
                    byte b11 = bArr[a10];
                    if (md.a(b11)) {
                        int i17 = i15 + 1;
                        cArr[i15] = (char) b11;
                        a10 = i16;
                        while (true) {
                            i15 = i17;
                            if (a10 < i13) {
                                byte b12 = bArr[a10];
                                if (md.a(b12)) {
                                    a10++;
                                    i17 = i15 + 1;
                                    cArr[i15] = (char) b12;
                                }
                            }
                        }
                    } else if (b11 < -32) {
                        if (i16 < i13) {
                            md.b(b11, bArr[i16], cArr, i15);
                            i15++;
                            a10 = i16 + 1;
                        } else {
                            throw new qb("Protocol message had invalid UTF-8.");
                        }
                    } else if (b11 < -16) {
                        if (i16 < i13 - 1) {
                            int i18 = i16 + 1;
                            md.c(b11, bArr[i16], bArr[i18], cArr, i15);
                            i15++;
                            a10 = i18 + 1;
                        } else {
                            throw new qb("Protocol message had invalid UTF-8.");
                        }
                    } else if (i16 < i13 - 2) {
                        int i19 = i16 + 1;
                        byte b13 = bArr[i16];
                        int i20 = i19 + 1;
                        md.d(b11, b13, bArr[i19], bArr[i20], cArr, i15);
                        i15 += 2;
                        a10 = i20 + 1;
                    } else {
                        throw new qb("Protocol message had invalid UTF-8.");
                    }
                }
                y9Var.f6896c = new String(cArr, 0, i15);
                return i13;
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(a10), Integer.valueOf(i11)));
        }
        throw new qb("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(byte[] bArr, int i10, y9 y9Var) {
        int a10 = a(bArr, i10, y9Var);
        int i11 = y9Var.f6894a;
        if (i11 >= 0) {
            if (i11 <= bArr.length - a10) {
                if (i11 == 0) {
                    y9Var.f6896c = ka.f6472b;
                    return a10;
                }
                y9Var.f6896c = ka.o(bArr, a10, i11);
                return a10 + i11;
            }
            throw new qb("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new qb("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(tc tcVar, byte[] bArr, int i10, int i11, y9 y9Var) {
        Object zza = tcVar.zza();
        int j10 = j(zza, tcVar, bArr, i10, i11, y9Var);
        tcVar.e(zza);
        y9Var.f6896c = zza;
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(tc tcVar, byte[] bArr, int i10, int i11, int i12, y9 y9Var) {
        Object zza = tcVar.zza();
        int k10 = k(zza, tcVar, bArr, i10, i11, i12, y9Var);
        tcVar.e(zza);
        y9Var.f6896c = zza;
        return k10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(Object obj, tc tcVar, byte[] bArr, int i10, int i11, y9 y9Var) {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = b(i13, bArr, i12, y9Var);
            i13 = y9Var.f6894a;
        }
        int i14 = i12;
        if (i13 >= 0 && i13 <= i11 - i14) {
            int i15 = y9Var.f6898e + 1;
            y9Var.f6898e = i15;
            q(i15);
            int i16 = i13 + i14;
            tcVar.f(obj, bArr, i14, i16, y9Var);
            y9Var.f6898e--;
            y9Var.f6896c = obj;
            return i16;
        }
        throw new qb("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(Object obj, tc tcVar, byte[] bArr, int i10, int i11, int i12, y9 y9Var) {
        lc lcVar = (lc) tcVar;
        int i13 = y9Var.f6898e + 1;
        y9Var.f6898e = i13;
        q(i13);
        int z10 = lcVar.z(obj, bArr, i10, i11, i12, y9Var);
        y9Var.f6898e--;
        y9Var.f6896c = obj;
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(int i10, byte[] bArr, int i11, int i12, nb nbVar, y9 y9Var) {
        ib ibVar = (ib) nbVar;
        int a10 = a(bArr, i11, y9Var);
        ibVar.x(y9Var.f6894a);
        while (a10 < i12) {
            int a11 = a(bArr, a10, y9Var);
            if (i10 != y9Var.f6894a) {
                break;
            }
            a10 = a(bArr, a11, y9Var);
            ibVar.x(y9Var.f6894a);
        }
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m(byte[] bArr, int i10, nb nbVar, y9 y9Var) {
        ib ibVar = (ib) nbVar;
        int a10 = a(bArr, i10, y9Var);
        int i11 = y9Var.f6894a + a10;
        while (a10 < i11) {
            a10 = a(bArr, a10, y9Var);
            ibVar.x(y9Var.f6894a);
        }
        if (a10 == i11) {
            return a10;
        }
        throw new qb("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(tc tcVar, int i10, byte[] bArr, int i11, int i12, nb nbVar, y9 y9Var) {
        int h10 = h(tcVar, bArr, i11, i12, y9Var);
        nbVar.add(y9Var.f6896c);
        while (h10 < i12) {
            int a10 = a(bArr, h10, y9Var);
            if (i10 != y9Var.f6894a) {
                break;
            }
            h10 = h(tcVar, bArr, a10, i12, y9Var);
            nbVar.add(y9Var.f6896c);
        }
        return h10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int o(int i10, byte[] bArr, int i11, int i12, fd fdVar, y9 y9Var) {
        if ((i10 >>> 3) != 0) {
            int i13 = i10 & 7;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            if (i13 == 5) {
                                fdVar.j(i10, Integer.valueOf(d(bArr, i11)));
                                return i11 + 4;
                            }
                            throw new qb("Protocol message contained an invalid tag (zero).");
                        }
                        int i14 = (i10 & (-8)) | 4;
                        fd b10 = fd.b();
                        int i15 = y9Var.f6898e + 1;
                        y9Var.f6898e = i15;
                        q(i15);
                        int i16 = 0;
                        while (true) {
                            if (i11 >= i12) {
                                break;
                            }
                            int a10 = a(bArr, i11, y9Var);
                            i16 = y9Var.f6894a;
                            if (i16 == i14) {
                                i11 = a10;
                                break;
                            }
                            i11 = o(i16, bArr, a10, i12, b10, y9Var);
                        }
                        y9Var.f6898e--;
                        if (i11 <= i12 && i16 == i14) {
                            fdVar.j(i10, b10);
                            return i11;
                        }
                        throw new qb("Failed to parse the message.");
                    }
                    int a11 = a(bArr, i11, y9Var);
                    int i17 = y9Var.f6894a;
                    if (i17 >= 0) {
                        if (i17 <= bArr.length - a11) {
                            if (i17 == 0) {
                                fdVar.j(i10, ka.f6472b);
                            } else {
                                fdVar.j(i10, ka.o(bArr, a11, i17));
                            }
                            return a11 + i17;
                        }
                        throw new qb("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                    }
                    throw new qb("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                }
                fdVar.j(i10, Long.valueOf(e(bArr, i11)));
                return i11 + 8;
            }
            int c10 = c(bArr, i11, y9Var);
            fdVar.j(i10, Long.valueOf(y9Var.f6895b));
            return c10;
        }
        throw new qb("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p(int i10, byte[] bArr, int i11, int i12, y9 y9Var) {
        if ((i10 >>> 3) != 0) {
            int i13 = i10 & 7;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            if (i13 == 5) {
                                return i11 + 4;
                            }
                            throw new qb("Protocol message contained an invalid tag (zero).");
                        }
                        int i14 = (i10 & (-8)) | 4;
                        int i15 = 0;
                        while (i11 < i12) {
                            i11 = a(bArr, i11, y9Var);
                            i15 = y9Var.f6894a;
                            if (i15 == i14) {
                                break;
                            }
                            i11 = p(i15, bArr, i11, i12, y9Var);
                        }
                        if (i11 <= i12 && i15 == i14) {
                            return i11;
                        }
                        throw new qb("Failed to parse the message.");
                    }
                    return a(bArr, i11, y9Var) + y9Var.f6894a;
                }
                return i11 + 8;
            }
            return c(bArr, i11, y9Var);
        }
        throw new qb("Protocol message contained an invalid tag (zero).");
    }

    private static void q(int i10) {
        if (i10 < f6916a) {
            return;
        }
        throw new qb("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }
}
