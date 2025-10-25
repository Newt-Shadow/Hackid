package lb;

import java.io.File;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public abstract class e0 {
    public static final void a(File file, eb.d config) {
        kotlin.jvm.internal.m.e(file, "<this>");
        kotlin.jvm.internal.m.e(config, "config");
        try {
            file.delete();
        } catch (Throwable th) {
            i o10 = config.o();
            o10.a("Error deleting the file " + file.getName() + ": " + th + '.');
        }
    }

    public static final void b(Executor executor, Runnable run) {
        kotlin.jvm.internal.m.e(executor, "<this>");
        kotlin.jvm.internal.m.e(run, "run");
        try {
            executor.execute(run);
        } catch (Throwable unused) {
        }
    }

    public static final boolean c(File file, eb.d config) {
        kotlin.jvm.internal.m.e(file, "<this>");
        kotlin.jvm.internal.m.e(config, "config");
        try {
            return file.exists();
        } catch (Throwable th) {
            i o10 = config.o();
            o10.a("Error deleting the file " + file.getName() + ": " + th + '.');
            return false;
        }
    }

    public static final void d(Thread thread) {
        kotlin.jvm.internal.m.e(thread, "<this>");
        try {
            thread.interrupt();
        } catch (Throwable unused) {
        }
    }

    private static final boolean e(Throwable th) {
        return th instanceof SocketTimeoutException;
    }

    public static final boolean f(Throwable th) {
        kotlin.jvm.internal.m.e(th, "<this>");
        if (!e(th) && !h(th) && !g(th)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0013, code lost:
        if (r0 == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final boolean g(java.lang.Throwable r3) {
        /*
            boolean r0 = r3 instanceof java.io.IOException
            r1 = 0
            if (r0 == 0) goto L15
            java.lang.String r0 = r3.getMessage()
            if (r0 == 0) goto L12
            java.lang.String r2 = "Canceled"
            boolean r0 = r0.contentEquals(r2)
            goto L13
        L12:
            r0 = r1
        L13:
            if (r0 != 0) goto L19
        L15:
            boolean r3 = r3 instanceof java.io.InterruptedIOException
            if (r3 == 0) goto L1a
        L19:
            r1 = 1
        L1a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: lb.e0.g(java.lang.Throwable):boolean");
    }

    private static final boolean h(Throwable th) {
        return th instanceof UnknownHostException;
    }
}
