package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.s5;
import java.io.Closeable;
/* loaded from: classes2.dex */
public final class ActivityBreadcrumbsIntegration implements io.sentry.e1, Closeable, Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final Application f22015a;

    /* renamed from: b  reason: collision with root package name */
    private io.sentry.o0 f22016b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22017c;

    public ActivityBreadcrumbsIntegration(Application application) {
        this.f22015a = (Application) io.sentry.util.q.c(application, "Application is required");
    }

    private void a(Activity activity, String str) {
        if (this.f22016b == null) {
            return;
        }
        io.sentry.e eVar = new io.sentry.e();
        eVar.r("navigation");
        eVar.o("state", str);
        eVar.o("screen", b(activity));
        eVar.n("ui.lifecycle");
        eVar.p(j5.INFO);
        io.sentry.c0 c0Var = new io.sentry.c0();
        c0Var.k("android:activity", activity);
        this.f22016b.p(eVar, c0Var);
    }

    private String b(Activity activity) {
        return activity.getClass().getSimpleName();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f22017c) {
            this.f22015a.unregisterActivityLifecycleCallbacks(this);
            io.sentry.o0 o0Var = this.f22016b;
            if (o0Var != null) {
                o0Var.B().getLogger().c(j5.DEBUG, "ActivityBreadcrumbsIntegration removed.", new Object[0]);
            }
        }
    }

    @Override // io.sentry.e1
    public void f(io.sentry.o0 o0Var, s5 s5Var) {
        SentryAndroidOptions sentryAndroidOptions;
        if (s5Var instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) s5Var;
        } else {
            sentryAndroidOptions = null;
        }
        this.f22016b = (io.sentry.o0) io.sentry.util.q.c(o0Var, "Hub is required");
        this.f22017c = ((SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "SentryAndroidOptions is required")).isEnableActivityLifecycleBreadcrumbs();
        ILogger logger = s5Var.getLogger();
        j5 j5Var = j5.DEBUG;
        logger.c(j5Var, "ActivityBreadcrumbsIntegration enabled: %s", Boolean.valueOf(this.f22017c));
        if (this.f22017c) {
            this.f22015a.registerActivityLifecycleCallbacks(this);
            s5Var.getLogger().c(j5Var, "ActivityBreadcrumbIntegration installed.", new Object[0]);
            io.sentry.util.k.a("ActivityBreadcrumbs");
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityCreated(Activity activity, Bundle bundle) {
        a(activity, "created");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityDestroyed(Activity activity) {
        a(activity, "destroyed");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityPaused(Activity activity) {
        a(activity, "paused");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityResumed(Activity activity) {
        a(activity, "resumed");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(activity, "saveInstanceState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStarted(Activity activity) {
        a(activity, "started");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStopped(Activity activity) {
        a(activity, "stopped");
    }
}
