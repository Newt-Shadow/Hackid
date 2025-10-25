package io.sentry.util;

import io.sentry.ILogger;
import io.sentry.j5;
/* loaded from: classes2.dex */
public abstract class n {
    public static void a(Class cls, Object obj, ILogger iLogger) {
        String str;
        j5 j5Var = j5.DEBUG;
        Object[] objArr = new Object[2];
        if (obj != null) {
            str = obj.getClass().getCanonicalName();
        } else {
            str = "Hint";
        }
        objArr[0] = str;
        objArr[1] = cls.getCanonicalName();
        iLogger.c(j5Var, "%s is not %s", objArr);
    }
}
