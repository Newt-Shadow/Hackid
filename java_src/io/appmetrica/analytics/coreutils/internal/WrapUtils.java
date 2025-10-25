package io.appmetrica.analytics.coreutils.internal;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class WrapUtils {
    public static double getFiniteDoubleOrDefault(double d10, double d11) {
        if (!Double.isFinite(d10)) {
            return d11;
        }
        return d10;
    }

    public static long getMillisOrDefault(Long l10, TimeUnit timeUnit, long j10) {
        if (l10 != null) {
            return timeUnit.toMillis(l10.longValue());
        }
        return j10;
    }

    public static <T> T getOrDefault(T t10, T t11) {
        return t10 == null ? t11 : t10;
    }

    public static String getOrDefaultIfEmpty(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return str;
    }

    public static <T> T getOrDefaultNullable(T t10, T t11) {
        return t10 == null ? t11 : t10;
    }

    public static String getOrDefaultNullableIfEmpty(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return str;
    }

    public static <T> String wrapToTag(T t10) {
        if (t10 == null) {
            return "<null>";
        }
        if (t10.toString().isEmpty()) {
            return "<empty>";
        }
        return t10.toString();
    }
}
