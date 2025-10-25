package io.sentry.android.core;

import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.q2;
import io.sentry.s5;
import java.io.Closeable;
/* loaded from: classes2.dex */
public abstract class EnvelopeFileObserverIntegration implements io.sentry.e1, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private d1 f22065a;

    /* renamed from: b  reason: collision with root package name */
    private ILogger f22066b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22067c = false;

    /* renamed from: d  reason: collision with root package name */
    private final Object f22068d = new Object();

    /* loaded from: classes2.dex */
    private static final class OutboxEnvelopeFileObserverIntegration extends EnvelopeFileObserverIntegration {
        private OutboxEnvelopeFileObserverIntegration() {
        }

        @Override // io.sentry.android.core.EnvelopeFileObserverIntegration
        protected String c(s5 s5Var) {
            return s5Var.getOutboxPath();
        }
    }

    public static EnvelopeFileObserverIntegration b() {
        return new OutboxEnvelopeFileObserverIntegration();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(io.sentry.o0 o0Var, s5 s5Var, String str) {
        synchronized (this.f22068d) {
            if (!this.f22067c) {
                g(o0Var, s5Var, str);
            }
        }
    }

    private void g(io.sentry.o0 o0Var, s5 s5Var, String str) {
        d1 d1Var = new d1(str, new q2(o0Var, s5Var.getEnvelopeReader(), s5Var.getSerializer(), s5Var.getLogger(), s5Var.getFlushTimeoutMillis(), s5Var.getMaxQueueSize()), s5Var.getLogger(), s5Var.getFlushTimeoutMillis());
        this.f22065a = d1Var;
        try {
            d1Var.startWatching();
            s5Var.getLogger().c(j5.DEBUG, "EnvelopeFileObserverIntegration installed.", new Object[0]);
        } catch (Throwable th) {
            s5Var.getLogger().b(j5.ERROR, "Failed to initialize EnvelopeFileObserverIntegration.", th);
        }
    }

    abstract String c(s5 s5Var);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f22068d) {
            this.f22067c = true;
        }
        d1 d1Var = this.f22065a;
        if (d1Var != null) {
            d1Var.stopWatching();
            ILogger iLogger = this.f22066b;
            if (iLogger != null) {
                iLogger.c(j5.DEBUG, "EnvelopeFileObserverIntegration removed.", new Object[0]);
            }
        }
    }

    @Override // io.sentry.e1
    public final void f(final io.sentry.o0 o0Var, final s5 s5Var) {
        io.sentry.util.q.c(o0Var, "Hub is required");
        io.sentry.util.q.c(s5Var, "SentryOptions is required");
        this.f22066b = s5Var.getLogger();
        final String c10 = c(s5Var);
        if (c10 == null) {
            this.f22066b.c(j5.WARNING, "Null given as a path to EnvelopeFileObserverIntegration. Nothing will be registered.", new Object[0]);
            return;
        }
        this.f22066b.c(j5.DEBUG, "Registering EnvelopeFileObserverIntegration for path: %s", c10);
        try {
            s5Var.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.core.e1
                @Override // java.lang.Runnable
                public final void run() {
                    EnvelopeFileObserverIntegration.this.e(o0Var, s5Var, c10);
                }
            });
        } catch (Throwable th) {
            this.f22066b.b(j5.DEBUG, "Failed to start EnvelopeFileObserverIntegration on executor thread.", th);
        }
    }
}
