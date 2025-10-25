package io.sentry.android.core;

import io.sentry.g3;
import io.sentry.j3;
import io.sentry.j5;
import io.sentry.l0;
import io.sentry.s5;
import java.io.Closeable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class SendCachedEnvelopeIntegration implements io.sentry.e1, l0.b, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final j3 f22096a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.util.m f22097b;

    /* renamed from: d  reason: collision with root package name */
    private io.sentry.l0 f22099d;

    /* renamed from: e  reason: collision with root package name */
    private io.sentry.o0 f22100e;

    /* renamed from: f  reason: collision with root package name */
    private SentryAndroidOptions f22101f;

    /* renamed from: g  reason: collision with root package name */
    private g3 f22102g;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f22098c = new AtomicBoolean(false);

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f22103h = new AtomicBoolean(false);

    /* renamed from: i  reason: collision with root package name */
    private final AtomicBoolean f22104i = new AtomicBoolean(false);

    public SendCachedEnvelopeIntegration(j3 j3Var, io.sentry.util.m mVar) {
        this.f22096a = (j3) io.sentry.util.q.c(j3Var, "SendFireAndForgetFactory is required");
        this.f22097b = mVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(SentryAndroidOptions sentryAndroidOptions, io.sentry.o0 o0Var) {
        try {
            if (this.f22104i.get()) {
                sentryAndroidOptions.getLogger().c(j5.INFO, "SendCachedEnvelopeIntegration, not trying to send after closing.", new Object[0]);
                return;
            }
            if (!this.f22103h.getAndSet(true)) {
                io.sentry.l0 connectionStatusProvider = sentryAndroidOptions.getConnectionStatusProvider();
                this.f22099d = connectionStatusProvider;
                connectionStatusProvider.c(this);
                this.f22102g = this.f22096a.d(o0Var, sentryAndroidOptions);
            }
            io.sentry.l0 l0Var = this.f22099d;
            if (l0Var != null && l0Var.b() == l0.a.DISCONNECTED) {
                sentryAndroidOptions.getLogger().c(j5.INFO, "SendCachedEnvelopeIntegration, no connection.", new Object[0]);
                return;
            }
            io.sentry.transport.z l10 = o0Var.l();
            if (l10 != null && l10.j(io.sentry.i.All)) {
                sentryAndroidOptions.getLogger().c(j5.INFO, "SendCachedEnvelopeIntegration, rate limiting active.", new Object[0]);
                return;
            }
            g3 g3Var = this.f22102g;
            if (g3Var == null) {
                sentryAndroidOptions.getLogger().c(j5.ERROR, "SendCachedEnvelopeIntegration factory is null.", new Object[0]);
            } else {
                g3Var.a();
            }
        } catch (Throwable th) {
            sentryAndroidOptions.getLogger().b(j5.ERROR, "Failed trying to send cached events.", th);
        }
    }

    private synchronized void e(final io.sentry.o0 o0Var, final SentryAndroidOptions sentryAndroidOptions) {
        try {
            try {
                Future submit = sentryAndroidOptions.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.core.v1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendCachedEnvelopeIntegration.this.b(sentryAndroidOptions, o0Var);
                    }
                });
                if (((Boolean) this.f22097b.a()).booleanValue() && this.f22098c.compareAndSet(false, true)) {
                    sentryAndroidOptions.getLogger().c(j5.DEBUG, "Startup Crash marker exists, blocking flush.", new Object[0]);
                    try {
                        submit.get(sentryAndroidOptions.getStartupCrashFlushTimeoutMillis(), TimeUnit.MILLISECONDS);
                    } catch (TimeoutException unused) {
                        sentryAndroidOptions.getLogger().c(j5.DEBUG, "Synchronous send timed out, continuing in the background.", new Object[0]);
                    }
                }
                sentryAndroidOptions.getLogger().c(j5.DEBUG, "SendCachedEnvelopeIntegration installed.", new Object[0]);
            } catch (RejectedExecutionException e10) {
                sentryAndroidOptions.getLogger().b(j5.ERROR, "Failed to call the executor. Cached events will not be sent. Did you call Sentry.close()?", e10);
            }
        }
    }

    @Override // io.sentry.l0.b
    public void c(l0.a aVar) {
        SentryAndroidOptions sentryAndroidOptions;
        io.sentry.o0 o0Var = this.f22100e;
        if (o0Var != null && (sentryAndroidOptions = this.f22101f) != null) {
            e(o0Var, sentryAndroidOptions);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22104i.set(true);
        io.sentry.l0 l0Var = this.f22099d;
        if (l0Var != null) {
            l0Var.d(this);
        }
    }

    @Override // io.sentry.e1
    public void f(io.sentry.o0 o0Var, s5 s5Var) {
        SentryAndroidOptions sentryAndroidOptions;
        this.f22100e = (io.sentry.o0) io.sentry.util.q.c(o0Var, "Hub is required");
        if (s5Var instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) s5Var;
        } else {
            sentryAndroidOptions = null;
        }
        this.f22101f = (SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        if (!this.f22096a.e(s5Var.getCacheDirPath(), s5Var.getLogger())) {
            s5Var.getLogger().c(j5.ERROR, "No cache dir path is defined in options.", new Object[0]);
            return;
        }
        io.sentry.util.k.a("SendCachedEnvelope");
        e(o0Var, this.f22101f);
    }
}
