package io.appmetrica.analytics.screenshot.impl;

import android.app.Activity;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;
/* loaded from: classes2.dex */
public final class c0 implements ActivityLifecycleListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d0 f21413a;

    public c0(d0 d0Var) {
        this.f21413a = d0Var;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
    public final void onEvent(Activity activity, ActivityEvent activityEvent) {
        int i10 = b0.f21411a[activityEvent.ordinal()];
        try {
            if (i10 != 1) {
                if (i10 == 2) {
                    this.f21413a.f21421d = true;
                }
            }
            C1691m c1691m = this.f21413a.f21422e;
            if (c1691m != null && c1691m.f21445a) {
                this.f21413a.f21421d = false;
                d0 d0Var = this.f21413a;
                d0Var.f21420c.postDelayed(d0Var.f21423f, 0L);
            }
        } catch (Throwable unused) {
        }
    }
}
