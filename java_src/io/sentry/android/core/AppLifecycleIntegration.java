package io.sentry.android.core;

import androidx.lifecycle.ProcessLifecycleOwner;
import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.s5;
import java.io.Closeable;
/* loaded from: classes2.dex */
public final class AppLifecycleIntegration implements io.sentry.e1, Closeable {

    /* renamed from: a  reason: collision with root package name */
    volatile m1 f22060a;

    /* renamed from: b  reason: collision with root package name */
    private SentryAndroidOptions f22061b;

    /* renamed from: c  reason: collision with root package name */
    private final o1 f22062c;

    public AppLifecycleIntegration() {
        this(new o1());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void g(io.sentry.o0 o0Var) {
        SentryAndroidOptions sentryAndroidOptions = this.f22061b;
        if (sentryAndroidOptions == null) {
            return;
        }
        this.f22060a = new m1(o0Var, sentryAndroidOptions.getSessionTrackingIntervalMillis(), this.f22061b.isEnableAutoSessionTracking(), this.f22061b.isEnableAppLifecycleBreadcrumbs());
        try {
            ProcessLifecycleOwner.l().getLifecycle().a(this.f22060a);
            this.f22061b.getLogger().c(j5.DEBUG, "AppLifecycleIntegration installed.", new Object[0]);
            io.sentry.util.k.a("AppLifecycle");
        } catch (Throwable th) {
            this.f22060a = null;
            this.f22061b.getLogger().b(j5.ERROR, "AppLifecycleIntegration failed to get Lifecycle and could not be installed.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void e() {
        m1 m1Var = this.f22060a;
        if (m1Var != null) {
            ProcessLifecycleOwner.l().getLifecycle().c(m1Var);
            SentryAndroidOptions sentryAndroidOptions = this.f22061b;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().c(j5.DEBUG, "AppLifecycleIntegration removed.", new Object[0]);
            }
        }
        this.f22060a = null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f22060a == null) {
            return;
        }
        if (io.sentry.android.core.internal.util.c.b().a()) {
            e();
        } else {
            this.f22062c.b(new Runnable() { // from class: io.sentry.android.core.m0
                @Override // java.lang.Runnable
                public final void run() {
                    AppLifecycleIntegration.this.e();
                }
            });
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0076 -> B:20:0x008e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0083 -> B:20:0x008e). Please submit an issue!!! */
    @Override // io.sentry.e1
    public void f(final io.sentry.o0 o0Var, s5 s5Var) {
        SentryAndroidOptions sentryAndroidOptions;
        io.sentry.util.q.c(o0Var, "Hub is required");
        if (s5Var instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) s5Var;
        } else {
            sentryAndroidOptions = null;
        }
        SentryAndroidOptions sentryAndroidOptions2 = (SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.f22061b = sentryAndroidOptions2;
        ILogger logger = sentryAndroidOptions2.getLogger();
        j5 j5Var = j5.DEBUG;
        logger.c(j5Var, "enableSessionTracking enabled: %s", Boolean.valueOf(this.f22061b.isEnableAutoSessionTracking()));
        this.f22061b.getLogger().c(j5Var, "enableAppLifecycleBreadcrumbs enabled: %s", Boolean.valueOf(this.f22061b.isEnableAppLifecycleBreadcrumbs()));
        if (this.f22061b.isEnableAutoSessionTracking() || this.f22061b.isEnableAppLifecycleBreadcrumbs()) {
            try {
                ProcessLifecycleOwner.b bVar = ProcessLifecycleOwner.f2918i;
                if (io.sentry.android.core.internal.util.c.b().a()) {
                    g(o0Var);
                    s5Var = s5Var;
                } else {
                    this.f22062c.b(new Runnable() { // from class: io.sentry.android.core.n0
                        @Override // java.lang.Runnable
                        public final void run() {
                            AppLifecycleIntegration.this.g(o0Var);
                        }
                    });
                    s5Var = s5Var;
                }
            } catch (ClassNotFoundException e10) {
                ILogger logger2 = s5Var.getLogger();
                logger2.b(j5.INFO, "androidx.lifecycle is not available, AppLifecycleIntegration won't be installed", e10);
                s5Var = logger2;
            } catch (IllegalStateException e11) {
                ILogger logger3 = s5Var.getLogger();
                logger3.b(j5.ERROR, "AppLifecycleIntegration could not be installed", e11);
                s5Var = logger3;
            }
        }
    }

    AppLifecycleIntegration(o1 o1Var) {
        this.f22062c = o1Var;
    }
}
