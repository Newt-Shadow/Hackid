package io.appmetrica.analytics.impl;

import android.app.Activity;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;
/* loaded from: classes2.dex */
public final class S5 implements ActivityLifecycleListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ T5 f18922a;

    public S5(T5 t52) {
        this.f18922a = t52;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
    public final void onEvent(Activity activity, ActivityEvent activityEvent) {
        int i10 = R5.f18877a[activityEvent.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                this.f18922a.f18957b.pauseSession();
                return;
            }
            return;
        }
        this.f18922a.f18957b.resumeSession();
    }
}
