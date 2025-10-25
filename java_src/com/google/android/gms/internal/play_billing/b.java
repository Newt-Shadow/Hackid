package com.google.android.gms.internal.play_billing;

import com.arthenica.ffmpegkit.StreamInformation;
/* loaded from: classes.dex */
public abstract class b {
    public static int a(int i10, int i11, String str) {
        String a10;
        if (i10 >= 0 && i10 < i11) {
            return i10;
        }
        if (i10 >= 0) {
            if (i11 < 0) {
                throw new IllegalArgumentException("negative size: " + i11);
            }
            a10 = c.a("%s (%s) must be less than size (%s)", StreamInformation.KEY_INDEX, Integer.valueOf(i10), Integer.valueOf(i11));
        } else {
            a10 = c.a("%s (%s) must not be negative", StreamInformation.KEY_INDEX, Integer.valueOf(i10));
        }
        throw new IndexOutOfBoundsException(a10);
    }

    public static int b(int i10, int i11, String str) {
        if (i10 >= 0 && i10 <= i11) {
            return i10;
        }
        throw new IndexOutOfBoundsException(e(i10, i11, StreamInformation.KEY_INDEX));
    }

    public static Object c(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException((String) obj2);
    }

    public static void d(int i10, int i11, int i12) {
        String e10;
        if (i10 >= 0 && i11 >= i10 && i11 <= i12) {
            return;
        }
        if (i10 >= 0 && i10 <= i12) {
            if (i11 >= 0 && i11 <= i12) {
                e10 = c.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
            } else {
                e10 = e(i11, i12, "end index");
            }
        } else {
            e10 = e(i10, i12, "start index");
        }
        throw new IndexOutOfBoundsException(e10);
    }

    private static String e(int i10, int i11, String str) {
        if (i10 < 0) {
            return c.a("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return c.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IllegalArgumentException("negative size: " + i11);
    }
}
