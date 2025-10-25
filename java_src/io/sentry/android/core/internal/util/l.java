package io.sentry.android.core.internal.util;

import android.content.Context;
import android.os.Process;
/* loaded from: classes2.dex */
public abstract class l {
    public static boolean a(Context context, String str) {
        io.sentry.util.q.c(context, "The application context is required.");
        if (context.checkPermission(str, Process.myPid(), Process.myUid()) == 0) {
            return true;
        }
        return false;
    }
}
