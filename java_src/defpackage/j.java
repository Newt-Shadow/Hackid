package defpackage;

import android.util.Log;
import java.util.List;
import yc.o;
/* renamed from: j  reason: default package */
/* loaded from: classes.dex */
public abstract class j {
    /* JADX INFO: Access modifiers changed from: private */
    public static final List b(Throwable th) {
        List k10;
        String simpleName = th.getClass().getSimpleName();
        String th2 = th.toString();
        Throwable cause = th.getCause();
        String stackTraceString = Log.getStackTraceString(th);
        k10 = o.k(simpleName, th2, "Cause: " + cause + ", Stacktrace: " + stackTraceString);
        return k10;
    }
}
