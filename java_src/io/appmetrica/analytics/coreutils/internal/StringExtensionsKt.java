package io.appmetrica.analytics.coreutils.internal;

import java.util.Locale;
import rd.b;
/* loaded from: classes2.dex */
public final class StringExtensionsKt {
    public static final String replaceFirstCharWithTitleCase(String str) {
        return replaceFirstCharWithTitleCase(str, Locale.US);
    }

    public static final String replaceFirstCharWithTitleCase(String str, Locale locale) {
        if (str.length() > 0) {
            StringBuilder sb2 = new StringBuilder();
            char charAt = str.charAt(0);
            sb2.append((Object) (Character.isLowerCase(charAt) ? b.d(charAt, locale) : String.valueOf(charAt)));
            sb2.append(str.substring(1));
            return sb2.toString();
        }
        return str;
    }
}
