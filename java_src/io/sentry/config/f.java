package io.sentry.config;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public interface f {
    Map a(String str);

    String b(String str);

    default Boolean c(String str) {
        String b10 = b(str);
        if (b10 != null) {
            return Boolean.valueOf(b10);
        }
        return null;
    }

    default Long d(String str) {
        String b10 = b(str);
        if (b10 != null) {
            try {
                return Long.valueOf(b10);
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    default Double e(String str) {
        String b10 = b(str);
        if (b10 != null) {
            try {
                return Double.valueOf(b10);
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    default String f(String str, String str2) {
        String b10 = b(str);
        if (b10 != null) {
            return b10;
        }
        return str2;
    }

    default List g(String str) {
        String b10 = b(str);
        if (b10 != null) {
            return Arrays.asList(b10.split(StringUtils.COMMA));
        }
        return Collections.emptyList();
    }
}
