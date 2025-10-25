package io.sentry.android.core;

import android.content.Context;
import io.sentry.ILogger;
import io.sentry.android.core.c;
import io.sentry.j5;
import io.sentry.s5;
import io.sentry.z4;
import java.io.Closeable;
/* loaded from: classes2.dex */
public final class AnrIntegration implements io.sentry.e1, Closeable {

    /* renamed from: e  reason: collision with root package name */
    private static c f22036e;

    /* renamed from: f  reason: collision with root package name */
    private static final Object f22037f = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final Context f22038a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22039b = false;

    /* renamed from: c  reason: collision with root package name */
    private final Object f22040c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private s5 f22041d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a implements io.sentry.hints.a, io.sentry.hints.q {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f22042a;

        a(boolean z10) {
            this.f22042a = z10;
        }

        @Override // io.sentry.hints.a
        public Long c() {
            return null;
        }

        @Override // io.sentry.hints.a
        public boolean d() {
            return true;
        }

        @Override // io.sentry.hints.a
        public String g() {
            if (this.f22042a) {
                return "anr_background";
            }
            return "anr_foreground";
        }
    }

    public AnrIntegration(Context context) {
        this.f22038a = x0.h(context);
    }

    private Throwable c(boolean z10, SentryAndroidOptions sentryAndroidOptions, ApplicationNotResponding applicationNotResponding) {
        String str = "ANR for at least " + sentryAndroidOptions.getAnrTimeoutIntervalMillis() + " ms.";
        if (z10) {
            str = "Background " + str;
        }
        ApplicationNotResponding applicationNotResponding2 = new ApplicationNotResponding(str, applicationNotResponding.a());
        io.sentry.protocol.i iVar = new io.sentry.protocol.i();
        iVar.j("ANR");
        return new io.sentry.exception.a(iVar, applicationNotResponding2, applicationNotResponding2.a(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(io.sentry.o0 o0Var, SentryAndroidOptions sentryAndroidOptions) {
        synchronized (this.f22040c) {
            if (!this.f22039b) {
                k(o0Var, sentryAndroidOptions);
            }
        }
    }

    private void h(final io.sentry.o0 o0Var, final SentryAndroidOptions sentryAndroidOptions) {
        sentryAndroidOptions.getLogger().c(j5.DEBUG, "AnrIntegration enabled: %s", Boolean.valueOf(sentryAndroidOptions.isAnrEnabled()));
        if (sentryAndroidOptions.isAnrEnabled()) {
            io.sentry.util.k.a("Anr");
            try {
                sentryAndroidOptions.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.core.f0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnrIntegration.this.e(o0Var, sentryAndroidOptions);
                    }
                });
            } catch (Throwable th) {
                sentryAndroidOptions.getLogger().b(j5.DEBUG, "Failed to start AnrIntegration on executor thread.", th);
            }
        }
    }

    private void k(final io.sentry.o0 o0Var, final SentryAndroidOptions sentryAndroidOptions) {
        synchronized (f22037f) {
            if (f22036e == null) {
                ILogger logger = sentryAndroidOptions.getLogger();
                j5 j5Var = j5.DEBUG;
                logger.c(j5Var, "ANR timeout in milliseconds: %d", Long.valueOf(sentryAndroidOptions.getAnrTimeoutIntervalMillis()));
                c cVar = new c(sentryAndroidOptions.getAnrTimeoutIntervalMillis(), sentryAndroidOptions.isAnrReportInDebug(), new c.a() { // from class: io.sentry.android.core.g0
                    @Override // io.sentry.android.core.c.a
                    public final void a(ApplicationNotResponding applicationNotResponding) {
                        AnrIntegration.this.g(o0Var, sentryAndroidOptions, applicationNotResponding);
                    }
                }, sentryAndroidOptions.getLogger(), this.f22038a);
                f22036e = cVar;
                cVar.start();
                sentryAndroidOptions.getLogger().c(j5Var, "AnrIntegration installed.", new Object[0]);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f22040c) {
            this.f22039b = true;
        }
        synchronized (f22037f) {
            c cVar = f22036e;
            if (cVar != null) {
                cVar.interrupt();
                f22036e = null;
                s5 s5Var = this.f22041d;
                if (s5Var != null) {
                    s5Var.getLogger().c(j5.DEBUG, "AnrIntegration removed.", new Object[0]);
                }
            }
        }
    }

    @Override // io.sentry.e1
    public final void f(io.sentry.o0 o0Var, s5 s5Var) {
        this.f22041d = (s5) io.sentry.util.q.c(s5Var, "SentryOptions is required");
        h(o0Var, (SentryAndroidOptions) s5Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void g(io.sentry.o0 o0Var, SentryAndroidOptions sentryAndroidOptions, ApplicationNotResponding applicationNotResponding) {
        sentryAndroidOptions.getLogger().c(j5.INFO, "ANR triggered with message: %s", applicationNotResponding.getMessage());
        boolean equals = Boolean.TRUE.equals(o0.a().b());
        z4 z4Var = new z4(c(equals, sentryAndroidOptions, applicationNotResponding));
        z4Var.B0(j5.ERROR);
        o0Var.D(z4Var, io.sentry.util.j.e(new a(equals)));
    }
}
