package com.google.protobuf.nano.ym;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class InternalNano {
    public static final Object LAZY_INIT_LOCK = new Object();

    private InternalNano() {
    }

    public static byte[] bytesDefaultValue(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalStateException("Java VM does not support a standard character set.", e10);
        }
    }

    public static byte[] copyFromUtf8(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("UTF-8 not supported?");
        }
    }

    public static boolean equals(double[] dArr, double[] dArr2) {
        return (dArr == null || dArr.length == 0) ? dArr2 == null || dArr2.length == 0 : Arrays.equals(dArr, dArr2);
    }

    public static int hashCode(double[] dArr) {
        if (dArr == null || dArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(dArr);
    }

    public static String stringDefaultValue(String str) {
        try {
            return new String(str.getBytes("ISO-8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalStateException("Java VM does not support a standard character set.", e10);
        }
    }

    public static boolean equals(float[] fArr, float[] fArr2) {
        return (fArr == null || fArr.length == 0) ? fArr2 == null || fArr2.length == 0 : Arrays.equals(fArr, fArr2);
    }

    public static int hashCode(float[] fArr) {
        if (fArr == null || fArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(fArr);
    }

    public static boolean equals(int[] iArr, int[] iArr2) {
        return (iArr == null || iArr.length == 0) ? iArr2 == null || iArr2.length == 0 : Arrays.equals(iArr, iArr2);
    }

    public static int hashCode(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(iArr);
    }

    public static boolean equals(long[] jArr, long[] jArr2) {
        return (jArr == null || jArr.length == 0) ? jArr2 == null || jArr2.length == 0 : Arrays.equals(jArr, jArr2);
    }

    public static int hashCode(long[] jArr) {
        if (jArr == null || jArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(jArr);
    }

    public static boolean equals(Object[] objArr, Object[] objArr2) {
        int length;
        int i10;
        int length2 = objArr == null ? 0 : objArr.length;
        if (objArr2 == null) {
            length = 0;
            i10 = 0;
        } else {
            length = objArr2.length;
            i10 = 0;
        }
        int i11 = i10;
        while (true) {
            if (i10 >= length2 || objArr[i10] != null) {
                while (i11 < length && objArr2[i11] == null) {
                    i11++;
                }
                boolean z10 = i10 >= length2;
                boolean z11 = i11 >= length;
                if (z10 && z11) {
                    return true;
                }
                if (z10 != z11 || !objArr[i10].equals(objArr2[i11])) {
                    return false;
                }
                i10++;
                i11++;
            } else {
                i10++;
            }
        }
    }

    public static int hashCode(Object[] objArr) {
        int length;
        int i10;
        if (objArr == null) {
            length = 0;
            i10 = 0;
        } else {
            length = objArr.length;
            i10 = 0;
        }
        for (int i11 = 0; i11 < length; i11++) {
            Object obj = objArr[i11];
            if (obj != null) {
                i10 = (i10 * 31) + obj.hashCode();
            }
        }
        return i10;
    }

    public static boolean equals(boolean[] zArr, boolean[] zArr2) {
        return (zArr == null || zArr.length == 0) ? zArr2 == null || zArr2.length == 0 : Arrays.equals(zArr, zArr2);
    }

    public static int hashCode(boolean[] zArr) {
        if (zArr == null || zArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(zArr);
    }

    public static boolean equals(byte[][] bArr, byte[][] bArr2) {
        int length;
        int i10;
        int length2 = bArr == null ? 0 : bArr.length;
        if (bArr2 == null) {
            length = 0;
            i10 = 0;
        } else {
            length = bArr2.length;
            i10 = 0;
        }
        int i11 = i10;
        while (true) {
            if (i10 >= length2 || bArr[i10] != null) {
                while (i11 < length && bArr2[i11] == null) {
                    i11++;
                }
                boolean z10 = i10 >= length2;
                boolean z11 = i11 >= length;
                if (z10 && z11) {
                    return true;
                }
                if (z10 != z11 || !Arrays.equals(bArr[i10], bArr2[i11])) {
                    return false;
                }
                i10++;
                i11++;
            } else {
                i10++;
            }
        }
    }

    public static int hashCode(byte[][] bArr) {
        int length;
        int i10;
        if (bArr == null) {
            length = 0;
            i10 = 0;
        } else {
            length = bArr.length;
            i10 = 0;
        }
        for (int i11 = 0; i11 < length; i11++) {
            byte[] bArr2 = bArr[i11];
            if (bArr2 != null) {
                i10 = (i10 * 31) + Arrays.hashCode(bArr2);
            }
        }
        return i10;
    }
}
