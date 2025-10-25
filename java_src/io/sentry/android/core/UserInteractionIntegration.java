package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.view.Window;
import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.s5;
import java.io.Closeable;
/* loaded from: classes2.dex */
public final class UserInteractionIntegration implements io.sentry.e1, Closeable, Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final Application f22118a;

    /* renamed from: b  reason: collision with root package name */
    private io.sentry.o0 f22119b;

    /* renamed from: c  reason: collision with root package name */
    private SentryAndroidOptions f22120c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f22121d;

    public UserInteractionIntegration(Application application, n1 n1Var) {
        this.f22118a = (Application) io.sentry.util.q.c(application, "Application is required");
        this.f22121d = n1Var.b("androidx.core.view.GestureDetectorCompat", this.f22120c);
    }

    private void a(Activity activity) {
        Window window = activity.getWindow();
        if (window == null) {
            SentryAndroidOptions sentryAndroidOptions = this.f22120c;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().c(j5.INFO, "Window was null in startTracking", new Object[0]);
            }
        } else if (this.f22119b != null && this.f22120c != null) {
            Window.Callback callback = window.getCallback();
            if (callback == null) {
                callback = new io.sentry.android.core.internal.gestures.b();
            }
            if (callback instanceof io.sentry.android.core.internal.gestures.h) {
                return;
            }
            window.setCallback(new io.sentry.android.core.internal.gestures.h(callback, activity, new io.sentry.android.core.internal.gestures.g(activity, this.f22119b, this.f22120c), this.f22120c));
        }
    }

    private void b(Activity activity) {
        Window window = activity.getWindow();
        if (window == null) {
            SentryAndroidOptions sentryAndroidOptions = this.f22120c;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().c(j5.INFO, "Window was null in stopTracking", new Object[0]);
                return;
            }
            return;
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof io.sentry.android.core.internal.gestures.h) {
            io.sentry.android.core.internal.gestures.h hVar = (io.sentry.android.core.internal.gestures.h) callback;
            hVar.c();
            if (hVar.a() instanceof io.sentry.android.core.internal.gestures.b) {
                window.setCallback(null);
            } else {
                window.setCallback(hVar.a());
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22118a.unregisterActivityLifecycleCallbacks(this);
        SentryAndroidOptions sentryAndroidOptions = this.f22120c;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(j5.DEBUG, "UserInteractionIntegration removed.", new Object[0]);
        }
    }

    @Override // io.sentry.e1
    public void f(io.sentry.o0 o0Var, s5 s5Var) {
        SentryAndroidOptions sentryAndroidOptions;
        boolean z10;
        if (s5Var instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) s5Var;
        } else {
            sentryAndroidOptions = null;
        }
        this.f22120c = (SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.f22119b = (io.sentry.o0) io.sentry.util.q.c(o0Var, "Hub is required");
        if (!this.f22120c.isEnableUserInteractionBreadcrumbs() && !this.f22120c.isEnableUserInteractionTracing()) {
            z10 = false;
        } else {
            z10 = true;
        }
        ILogger logger = this.f22120c.getLogger();
        j5 j5Var = j5.DEBUG;
        logger.c(j5Var, "UserInteractionIntegration enabled: %s", Boolean.valueOf(z10));
        if (z10) {
            if (this.f22121d) {
                this.f22118a.registerActivityLifecycleCallbacks(this);
                this.f22120c.getLogger().c(j5Var, "UserInteractionIntegration installed.", new Object[0]);
                io.sentry.util.k.a("UserInteraction");
                return;
            }
            s5Var.getLogger().c(j5.INFO, "androidx.core is not available, UserInteractionIntegration won't be installed", new Object[0]);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        b(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
