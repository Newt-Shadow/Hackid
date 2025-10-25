package q7;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
class h0 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private final a f28448a;

    /* renamed from: b  reason: collision with root package name */
    private final y7.j f28449b;

    /* renamed from: c  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f28450c;

    /* renamed from: d  reason: collision with root package name */
    private final n7.a f28451d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f28452e = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    interface a {
        void a(y7.j jVar, Thread thread, Throwable th);
    }

    public h0(a aVar, y7.j jVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, n7.a aVar2) {
        this.f28448a = aVar;
        this.f28449b = jVar;
        this.f28450c = uncaughtExceptionHandler;
        this.f28451d = aVar2;
    }

    private boolean b(Thread thread, Throwable th) {
        if (thread == null) {
            n7.g.f().d("Crashlytics will not record uncaught exception; null thread");
            return false;
        } else if (th == null) {
            n7.g.f().d("Crashlytics will not record uncaught exception; null throwable");
            return false;
        } else if (this.f28451d.b()) {
            n7.g.f().b("Crashlytics will not record uncaught exception; native crash exists for session.");
            return false;
        } else {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.f28452e.get();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
        if (r7.f28450c == null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
        n7.g.f().b("Completed exception processing. Invoking default exception handler.");
        r7.f28450c.uncaughtException(r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
        n7.g.f().b("Completed exception processing, but no default exception handler.");
        java.lang.System.exit(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004e, code lost:
        r7.f28452e.set(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (r7.f28450c != null) goto L13;
     */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void uncaughtException(java.lang.Thread r8, java.lang.Throwable r9) {
        /*
            r7 = this;
            java.lang.String r0 = "Completed exception processing. Invoking default exception handler."
            java.lang.String r1 = "Completed exception processing, but no default exception handler."
            java.util.concurrent.atomic.AtomicBoolean r2 = r7.f28452e
            r3 = 1
            r2.set(r3)
            r2 = 0
            boolean r4 = r7.b(r8, r9)     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            if (r4 == 0) goto L19
            q7.h0$a r4 = r7.f28448a     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            y7.j r5 = r7.f28449b     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            r4.a(r5, r8, r9)     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            goto L22
        L19:
            n7.g r4 = n7.g.f()     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            java.lang.String r5 = "Uncaught exception will not be recorded by Crashlytics."
            r4.b(r5)     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
        L22:
            java.lang.Thread$UncaughtExceptionHandler r4 = r7.f28450c
            if (r4 == 0) goto L44
            goto L37
        L27:
            r4 = move-exception
            goto L54
        L29:
            r4 = move-exception
            n7.g r5 = n7.g.f()     // Catch: java.lang.Throwable -> L27
            java.lang.String r6 = "An error occurred in the uncaught exception handler"
            r5.e(r6, r4)     // Catch: java.lang.Throwable -> L27
            java.lang.Thread$UncaughtExceptionHandler r4 = r7.f28450c
            if (r4 == 0) goto L44
        L37:
            n7.g r1 = n7.g.f()
            r1.b(r0)
            java.lang.Thread$UncaughtExceptionHandler r0 = r7.f28450c
            r0.uncaughtException(r8, r9)
            goto L4e
        L44:
            n7.g r8 = n7.g.f()
            r8.b(r1)
            java.lang.System.exit(r3)
        L4e:
            java.util.concurrent.atomic.AtomicBoolean r8 = r7.f28452e
            r8.set(r2)
            return
        L54:
            java.lang.Thread$UncaughtExceptionHandler r5 = r7.f28450c
            if (r5 == 0) goto L65
            n7.g r1 = n7.g.f()
            r1.b(r0)
            java.lang.Thread$UncaughtExceptionHandler r0 = r7.f28450c
            r0.uncaughtException(r8, r9)
            goto L6f
        L65:
            n7.g r8 = n7.g.f()
            r8.b(r1)
            java.lang.System.exit(r3)
        L6f:
            java.util.concurrent.atomic.AtomicBoolean r8 = r7.f28452e
            r8.set(r2)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: q7.h0.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
    }
}
