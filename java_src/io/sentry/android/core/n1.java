package io.sentry.android.core;

import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.s5;
/* loaded from: classes2.dex */
public final class n1 {
    public boolean a(String str, ILogger iLogger) {
        if (c(str, iLogger) != null) {
            return true;
        }
        return false;
    }

    public boolean b(String str, s5 s5Var) {
        ILogger iLogger;
        if (s5Var != null) {
            iLogger = s5Var.getLogger();
        } else {
            iLogger = null;
        }
        return a(str, iLogger);
    }

    public Class c(String str, ILogger iLogger) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            if (iLogger != null) {
                j5 j5Var = j5.DEBUG;
                iLogger.b(j5Var, "Class not available:" + str, e10);
                return null;
            }
            return null;
        } catch (UnsatisfiedLinkError e11) {
            if (iLogger != null) {
                j5 j5Var2 = j5.ERROR;
                iLogger.b(j5Var2, "Failed to load (UnsatisfiedLinkError) " + str, e11);
                return null;
            }
            return null;
        } catch (Throwable th) {
            if (iLogger != null) {
                j5 j5Var3 = j5.ERROR;
                iLogger.b(j5Var3, "Failed to initialize " + str, th);
                return null;
            }
            return null;
        }
    }
}
