package io.appmetrica.analytics.coreutils.internal.network;

import android.os.Build;
import io.appmetrica.analytics.coreutils.internal.StringExtensionsKt;
import rd.y;
/* loaded from: classes2.dex */
public final class UserAgent {
    public static final UserAgent INSTANCE = new UserAgent();

    private UserAgent() {
    }

    public static final String getFor(String str, String str2, String str3) {
        boolean H;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append('/');
        sb2.append(str2);
        sb2.append('.');
        sb2.append(str3);
        sb2.append(" (");
        INSTANCE.getClass();
        String str4 = Build.MODEL;
        String str5 = Build.MANUFACTURER;
        H = y.H(str4, str5, false, 2, null);
        if (!H) {
            str4 = str5 + ' ' + str4;
        }
        sb2.append(StringExtensionsKt.replaceFirstCharWithTitleCase(str4));
        sb2.append("; Android ");
        sb2.append(Build.VERSION.RELEASE);
        sb2.append(')');
        return sb2.toString();
    }
}
