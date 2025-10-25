package io.sentry;

import java.io.File;
/* loaded from: classes2.dex */
public interface j3 {
    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ void c(ILogger iLogger, String str, p pVar, File file) {
        j5 j5Var = j5.DEBUG;
        iLogger.c(j5Var, "Started processing cached files from %s", str);
        pVar.e(file);
        iLogger.c(j5Var, "Finished processing cached files from %s", str);
    }

    default g3 a(final p pVar, final String str, final ILogger iLogger) {
        final File file = new File(str);
        return new g3() { // from class: io.sentry.i3
            @Override // io.sentry.g3
            public final void a() {
                j3.c(ILogger.this, str, pVar, file);
            }
        };
    }

    g3 d(o0 o0Var, s5 s5Var);

    default boolean e(String str, ILogger iLogger) {
        if (str != null && !str.isEmpty()) {
            return true;
        }
        iLogger.c(j5.INFO, "No cached dir path is defined in options.", new Object[0]);
        return false;
    }
}
