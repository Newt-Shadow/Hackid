package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.BuildConfig;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
/* renamed from: io.appmetrica.analytics.impl.ej  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1151ej {
    public static void a(String str, Object... objArr) {
        ImportantLogger.INSTANCE.info("AppMetrica-Attribution", String.format(str, objArr), new Object[0]);
    }

    public static String a() {
        StringBuilder sb2 = new StringBuilder(BuildConfig.SDK_BUILD_FLAVOR);
        if (!TextUtils.isEmpty(BuildConfig.SDK_DEPENDENCY)) {
            sb2.append("_binary");
        }
        if (!TextUtils.isEmpty("")) {
            sb2.append("_");
        }
        return sb2.toString();
    }
}
