package io.appmetrica.analytics.coreutils.internal;
/* loaded from: classes2.dex */
public final class ApiKeyUtils {
    public static final ApiKeyUtils INSTANCE = new ApiKeyUtils();

    private ApiKeyUtils() {
    }

    public static final String createPartialApiKey(String str) {
        if (str != null && str.length() == 36) {
            StringBuilder sb2 = new StringBuilder(str);
            sb2.replace(8, str.length() - 4, "-xxxx-xxxx-xxxx-xxxxxxxx");
            return sb2.toString();
        }
        return StringUtils.UNDEFINED;
    }
}
