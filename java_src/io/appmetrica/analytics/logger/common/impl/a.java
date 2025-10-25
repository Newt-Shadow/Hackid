package io.appmetrica.analytics.logger.common.impl;

import android.util.Log;
import java.util.Arrays;
import java.util.Locale;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes2.dex */
public final class a {
    public static String a(String str, String str2, Object... objArr) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(StringUtils.SPACE);
        if (str2 == null) {
            str2 = "";
        } else if (objArr != null && objArr.length != 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (Throwable th) {
                str2 = "Attention!!! Invalid log format. See exception details above. Message: " + str2 + "; arguments: " + Arrays.toString(objArr);
                Log.e("[LogMessageConstructor]", str2, th);
            }
        }
        sb2.append(String.format(Locale.US, "[%d-%s] %s", Long.valueOf(Thread.currentThread().getId()), Thread.currentThread().getName(), str2));
        return sb2.toString();
    }
}
