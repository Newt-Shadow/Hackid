package io.sentry.android.core;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.protocol.e;
import io.sentry.s5;
import java.io.Closeable;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class AppComponentsBreadcrumbsIntegration implements io.sentry.e1, Closeable, ComponentCallbacks2 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22057a;

    /* renamed from: b  reason: collision with root package name */
    private io.sentry.o0 f22058b;

    /* renamed from: c  reason: collision with root package name */
    private SentryAndroidOptions f22059c;

    public AppComponentsBreadcrumbsIntegration(Context context) {
        this.f22057a = (Context) io.sentry.util.q.c(x0.h(context), "Context is required");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void j(long j10, Configuration configuration) {
        String str;
        if (this.f22058b != null) {
            e.b a10 = io.sentry.android.core.internal.util.h.a(this.f22057a.getResources().getConfiguration().orientation);
            if (a10 != null) {
                str = a10.name().toLowerCase(Locale.ROOT);
            } else {
                str = StringUtils.UNDEFINED;
            }
            io.sentry.e eVar = new io.sentry.e(j10);
            eVar.r("navigation");
            eVar.n("device.orientation");
            eVar.o("position", str);
            eVar.p(j5.INFO);
            io.sentry.c0 c0Var = new io.sentry.c0();
            c0Var.k("android:configuration", configuration);
            this.f22058b.p(eVar, c0Var);
        }
    }

    private void g(long j10, Integer num) {
        if (this.f22058b != null) {
            io.sentry.e eVar = new io.sentry.e(j10);
            if (num != null) {
                if (num.intValue() < 40) {
                    return;
                }
                eVar.o(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL, num);
            }
            eVar.r("system");
            eVar.n("device.event");
            eVar.q("Low memory");
            eVar.o("action", "LOW_MEMORY");
            eVar.p(j5.WARNING);
            this.f22058b.t(eVar);
        }
    }

    private void h(Runnable runnable) {
        SentryAndroidOptions sentryAndroidOptions = this.f22059c;
        if (sentryAndroidOptions != null) {
            try {
                sentryAndroidOptions.getExecutorService().submit(runnable);
            } catch (Throwable th) {
                this.f22059c.getLogger().a(j5.ERROR, th, "Failed to submit app components breadcrumb task", new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(long j10) {
        g(j10, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(long j10, int i10) {
        g(j10, Integer.valueOf(i10));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.f22057a.unregisterComponentCallbacks(this);
        } catch (Throwable th) {
            SentryAndroidOptions sentryAndroidOptions = this.f22059c;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().a(j5.DEBUG, th, "It was not possible to unregisterComponentCallbacks", new Object[0]);
            }
        }
        SentryAndroidOptions sentryAndroidOptions2 = this.f22059c;
        if (sentryAndroidOptions2 != null) {
            sentryAndroidOptions2.getLogger().c(j5.DEBUG, "AppComponentsBreadcrumbsIntegration removed.", new Object[0]);
        }
    }

    @Override // io.sentry.e1
    public void f(io.sentry.o0 o0Var, s5 s5Var) {
        SentryAndroidOptions sentryAndroidOptions;
        this.f22058b = (io.sentry.o0) io.sentry.util.q.c(o0Var, "Hub is required");
        if (s5Var instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) s5Var;
        } else {
            sentryAndroidOptions = null;
        }
        SentryAndroidOptions sentryAndroidOptions2 = (SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.f22059c = sentryAndroidOptions2;
        ILogger logger = sentryAndroidOptions2.getLogger();
        j5 j5Var = j5.DEBUG;
        logger.c(j5Var, "AppComponentsBreadcrumbsIntegration enabled: %s", Boolean.valueOf(this.f22059c.isEnableAppComponentBreadcrumbs()));
        if (this.f22059c.isEnableAppComponentBreadcrumbs()) {
            try {
                this.f22057a.registerComponentCallbacks(this);
                s5Var.getLogger().c(j5Var, "AppComponentsBreadcrumbsIntegration installed.", new Object[0]);
                io.sentry.util.k.a("AppComponentsBreadcrumbs");
            } catch (Throwable th) {
                this.f22059c.setEnableAppComponentBreadcrumbs(false);
                s5Var.getLogger().a(j5.INFO, th, "ComponentCallbacks2 is not available.", new Object[0]);
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(final Configuration configuration) {
        final long currentTimeMillis = System.currentTimeMillis();
        h(new Runnable() { // from class: io.sentry.android.core.l0
            @Override // java.lang.Runnable
            public final void run() {
                AppComponentsBreadcrumbsIntegration.this.j(currentTimeMillis, configuration);
            }
        });
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        final long currentTimeMillis = System.currentTimeMillis();
        h(new Runnable() { // from class: io.sentry.android.core.j0
            @Override // java.lang.Runnable
            public final void run() {
                AppComponentsBreadcrumbsIntegration.this.k(currentTimeMillis);
            }
        });
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(final int i10) {
        final long currentTimeMillis = System.currentTimeMillis();
        h(new Runnable() { // from class: io.sentry.android.core.k0
            @Override // java.lang.Runnable
            public final void run() {
                AppComponentsBreadcrumbsIntegration.this.q(currentTimeMillis, i10);
            }
        });
    }
}
