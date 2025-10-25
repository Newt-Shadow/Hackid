package io.appmetrica.analytics.screenshot.impl;

import android.annotation.SuppressLint;
import android.app.Activity;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;
import java.util.concurrent.Executor;
/* renamed from: io.appmetrica.analytics.screenshot.impl.c  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1681c implements ActivityLifecycleListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1682d f21412a;

    public C1681c(C1682d c1682d) {
        this.f21412a = c1682d;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
    @SuppressLint({"MissingPermission", "NewApi"})
    public final void onEvent(Activity activity, ActivityEvent activityEvent) {
        Executor mainExecutor;
        int i10 = AbstractC1680b.f21410a[activityEvent.ordinal()];
        try {
            if (i10 != 1) {
                if (i10 == 2) {
                    activity.unregisterScreenCaptureCallback(C1682d.d(this.f21412a));
                }
            }
            C1687i c1687i = this.f21412a.f21416c;
            if (c1687i != null && c1687i.f21434a) {
                mainExecutor = this.f21412a.f21414a.getContext().getMainExecutor();
                activity.registerScreenCaptureCallback(mainExecutor, C1682d.d(this.f21412a));
            }
        } catch (Throwable unused) {
        }
    }
}
