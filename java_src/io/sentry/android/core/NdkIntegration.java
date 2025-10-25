package io.sentry.android.core;

import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.s5;
import java.io.Closeable;
/* loaded from: classes2.dex */
public final class NdkIntegration implements io.sentry.e1, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Class f22069a;

    /* renamed from: b  reason: collision with root package name */
    private SentryAndroidOptions f22070b;

    public NdkIntegration(Class cls) {
        this.f22069a = cls;
    }

    private void a(SentryAndroidOptions sentryAndroidOptions) {
        sentryAndroidOptions.setEnableNdk(false);
        sentryAndroidOptions.setEnableScopeSync(false);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Class cls;
        SentryAndroidOptions sentryAndroidOptions = this.f22070b;
        if (sentryAndroidOptions != null && sentryAndroidOptions.isEnableNdk() && (cls = this.f22069a) != null) {
            try {
                try {
                    cls.getMethod("close", new Class[0]).invoke(null, new Object[0]);
                    this.f22070b.getLogger().c(j5.DEBUG, "NdkIntegration removed.", new Object[0]);
                } catch (NoSuchMethodException e10) {
                    this.f22070b.getLogger().b(j5.ERROR, "Failed to invoke the SentryNdk.close method.", e10);
                }
                a(this.f22070b);
            }
        }
    }

    @Override // io.sentry.e1
    public final void f(io.sentry.o0 o0Var, s5 s5Var) {
        SentryAndroidOptions sentryAndroidOptions;
        io.sentry.util.q.c(o0Var, "Hub is required");
        if (s5Var instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) s5Var;
        } else {
            sentryAndroidOptions = null;
        }
        SentryAndroidOptions sentryAndroidOptions2 = (SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.f22070b = sentryAndroidOptions2;
        boolean isEnableNdk = sentryAndroidOptions2.isEnableNdk();
        ILogger logger = this.f22070b.getLogger();
        j5 j5Var = j5.DEBUG;
        logger.c(j5Var, "NdkIntegration enabled: %s", Boolean.valueOf(isEnableNdk));
        if (isEnableNdk && this.f22069a != null) {
            if (this.f22070b.getCacheDirPath() == null) {
                this.f22070b.getLogger().c(j5.ERROR, "No cache dir path is defined in options.", new Object[0]);
                a(this.f22070b);
                return;
            }
            try {
                this.f22069a.getMethod("init", SentryAndroidOptions.class).invoke(null, this.f22070b);
                this.f22070b.getLogger().c(j5Var, "NdkIntegration installed.", new Object[0]);
                io.sentry.util.k.a("Ndk");
                return;
            } catch (NoSuchMethodException e10) {
                a(this.f22070b);
                this.f22070b.getLogger().b(j5.ERROR, "Failed to invoke the SentryNdk.init method.", e10);
                return;
            } catch (Throwable th) {
                a(this.f22070b);
                this.f22070b.getLogger().b(j5.ERROR, "Failed to initialize SentryNdk.", th);
                return;
            }
        }
        a(this.f22070b);
    }
}
