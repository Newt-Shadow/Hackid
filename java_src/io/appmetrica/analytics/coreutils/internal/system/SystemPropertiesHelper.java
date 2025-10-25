package io.appmetrica.analytics.coreutils.internal.system;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes2.dex */
public final class SystemPropertiesHelper {
    public static final SystemPropertiesHelper INSTANCE = new SystemPropertiesHelper();

    private SystemPropertiesHelper() {
    }

    @SuppressLint({"PrivateApi"})
    public static final String readSystemProperty(String str) {
        String str2;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties", true, Context.class.getClassLoader());
            Object invoke = cls.getMethod("get", String.class).invoke(cls, str);
            if (invoke instanceof String) {
                str2 = (String) invoke;
            } else {
                str2 = null;
            }
            if (str2 == null) {
                return "";
            }
            return str2;
        } catch (Exception unused) {
            return "";
        }
    }
}
