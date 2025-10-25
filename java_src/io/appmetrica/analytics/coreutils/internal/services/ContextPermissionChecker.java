package io.appmetrica.analytics.coreutils.internal.services;

import android.content.Context;
/* loaded from: classes2.dex */
public final class ContextPermissionChecker {
    public static final ContextPermissionChecker INSTANCE = new ContextPermissionChecker();

    private ContextPermissionChecker() {
    }

    public static final boolean hasPermission(Context context, String str) {
        if (context.checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        return false;
    }
}
