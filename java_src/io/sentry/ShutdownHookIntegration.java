package io.sentry;

import java.io.Closeable;
/* loaded from: classes2.dex */
public final class ShutdownHookIntegration implements e1, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Runtime f21964a;

    /* renamed from: b  reason: collision with root package name */
    private Thread f21965b;

    public ShutdownHookIntegration(Runtime runtime) {
        this.f21964a = (Runtime) io.sentry.util.q.c(runtime, "Runtime is required");
    }

    private void e(Runnable runnable) {
        try {
            runnable.run();
        } catch (IllegalStateException e10) {
            String message = e10.getMessage();
            if (message != null && (message.equals("Shutdown in progress") || message.equals("VM already shutting down"))) {
                return;
            }
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        this.f21964a.removeShutdownHook(this.f21965b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(o0 o0Var, s5 s5Var) {
        o0Var.o(s5Var.getFlushTimeoutMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(s5 s5Var) {
        this.f21964a.addShutdownHook(this.f21965b);
        s5Var.getLogger().c(j5.DEBUG, "ShutdownHookIntegration installed.", new Object[0]);
        io.sentry.util.k.a("ShutdownHook");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f21965b != null) {
            e(new Runnable() { // from class: io.sentry.g6
                @Override // java.lang.Runnable
                public final void run() {
                    ShutdownHookIntegration.this.g();
                }
            });
        }
    }

    @Override // io.sentry.e1
    public void f(final o0 o0Var, final s5 s5Var) {
        io.sentry.util.q.c(o0Var, "Hub is required");
        io.sentry.util.q.c(s5Var, "SentryOptions is required");
        if (s5Var.isEnableShutdownHook()) {
            this.f21965b = new Thread(new Runnable() { // from class: io.sentry.h6
                @Override // java.lang.Runnable
                public final void run() {
                    ShutdownHookIntegration.h(o0.this, s5Var);
                }
            });
            e(new Runnable() { // from class: io.sentry.i6
                @Override // java.lang.Runnable
                public final void run() {
                    ShutdownHookIntegration.this.j(s5Var);
                }
            });
            return;
        }
        s5Var.getLogger().c(j5.INFO, "enableShutdownHook is disabled.", new Object[0]);
    }

    public ShutdownHookIntegration() {
        this(Runtime.getRuntime());
    }
}
