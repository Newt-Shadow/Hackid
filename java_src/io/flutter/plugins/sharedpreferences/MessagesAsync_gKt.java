package io.flutter.plugins.sharedpreferences;

import android.util.Log;
import java.util.List;
/* loaded from: classes2.dex */
public final class MessagesAsync_gKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Object> wrapError(Throwable th) {
        List<Object> k10;
        List<Object> k11;
        if (th instanceof SharedPreferencesError) {
            SharedPreferencesError sharedPreferencesError = (SharedPreferencesError) th;
            k11 = yc.o.k(sharedPreferencesError.getCode(), sharedPreferencesError.getMessage(), sharedPreferencesError.getDetails());
            return k11;
        }
        String simpleName = th.getClass().getSimpleName();
        String th2 = th.toString();
        Throwable cause = th.getCause();
        String stackTraceString = Log.getStackTraceString(th);
        k10 = yc.o.k(simpleName, th2, "Cause: " + cause + ", Stacktrace: " + stackTraceString);
        return k10;
    }

    private static final List<Object> wrapResult(Object obj) {
        List<Object> b10;
        b10 = yc.n.b(obj);
        return b10;
    }
}
