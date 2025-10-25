package io.appmetrica.analytics.coreutils.internal;

import android.annotation.SuppressLint;
import android.os.Build;
/* loaded from: classes2.dex */
public final class AndroidUtils {
    public static final AndroidUtils INSTANCE = new AndroidUtils();

    private AndroidUtils() {
    }

    @SuppressLint({"AnnotateVersionCheck"})
    public static final boolean isApiAchieved(int i10) {
        if (Build.VERSION.SDK_INT >= i10) {
            return true;
        }
        return false;
    }
}
