package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import io.sentry.s5;
import java.io.Closeable;
/* loaded from: classes2.dex */
public final class CurrentActivityIntegration implements io.sentry.e1, Closeable, Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final Application f22064a;

    public CurrentActivityIntegration(Application application) {
        this.f22064a = (Application) io.sentry.util.q.c(application, "Application is required");
    }

    private void a(Activity activity) {
        if (y0.c().b() == activity) {
            y0.c().a();
        }
    }

    private void b(Activity activity) {
        y0.c().d(activity);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22064a.unregisterActivityLifecycleCallbacks(this);
        y0.c().a();
    }

    @Override // io.sentry.e1
    public void f(io.sentry.o0 o0Var, s5 s5Var) {
        this.f22064a.registerActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        b(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        b(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        b(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        a(activity);
    }
}
