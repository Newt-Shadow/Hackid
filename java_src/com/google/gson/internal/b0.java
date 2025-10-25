package com.google.gson.internal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes.dex */
public abstract class b0 {
    private static String a(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return "M/d/yy";
                    }
                    throw new IllegalArgumentException("Unknown DateFormat style: " + i10);
                }
                return "MMM d, yyyy";
            }
            return "MMMM d, yyyy";
        }
        return "EEEE, MMMM d, yyyy";
    }

    private static String b(int i10) {
        if (i10 != 0 && i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return "h:mm a";
                }
                throw new IllegalArgumentException("Unknown DateFormat style: " + i10);
            }
            return "h:mm:ss a";
        }
        return "h:mm:ss a z";
    }

    public static DateFormat c(int i10, int i11) {
        return new SimpleDateFormat(a(i10) + StringUtils.SPACE + b(i11), Locale.US);
    }
}
