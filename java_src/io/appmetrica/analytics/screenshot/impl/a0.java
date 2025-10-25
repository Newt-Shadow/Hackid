package io.appmetrica.analytics.screenshot.impl;

import android.app.ActivityManager;
import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import io.appmetrica.analytics.screenshot.impl.a0;
import io.appmetrica.analytics.screenshot.impl.d0;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class a0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d0 f21409a;

    public a0(d0 d0Var) {
        this.f21409a = d0Var;
    }

    public static final Boolean a(d0 d0Var, a0 a0Var, C1691m c1691m, ActivityManager activityManager) {
        Object obj;
        List<ActivityManager.RunningServiceInfo> runningServices = activityManager.getRunningServices(200);
        if (runningServices == null) {
            runningServices = yc.o.h();
        }
        for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
        }
        Iterator<T> it = runningServices.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (kotlin.jvm.internal.m.a(((ActivityManager.RunningServiceInfo) obj).process, "com.android.systemui:screenshot")) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        if (((ActivityManager.RunningServiceInfo) obj) != null) {
            ((C1699v) d0Var.f21419b).a("ServiceScreenshotCaptor");
        }
        return Boolean.valueOf(d0Var.f21420c.postDelayed(a0Var, TimeUnit.SECONDS.toMillis(c1691m.f21446b)));
    }

    @Override // java.lang.Runnable
    public final void run() {
        final C1691m c1691m = this.f21409a.f21422e;
        if (!this.f21409a.f21421d && c1691m != null && c1691m.f21445a) {
            Context context = this.f21409a.f21418a.getContext();
            final d0 d0Var = this.f21409a;
            SystemServiceUtils.accessSystemServiceByNameSafely(context, "activity", "running service screenshot captor", "ActivityManager", new FunctionWithThrowable() { // from class: tc.b
                @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
                public final Object apply(Object obj) {
                    return a0.a(d0.this, this, c1691m, (ActivityManager) obj);
                }
            });
        }
    }
}
