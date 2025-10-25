package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationState;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationStateObserver;
import io.appmetrica.analytics.coreutils.internal.toggle.SimpleThreadSafeToggle;
/* loaded from: classes2.dex */
public final class bo extends SimpleThreadSafeToggle implements ApplicationStateObserver {
    public bo() {
        super(false, "[VisibleAppStateOnlyTrackingStatusToggle]");
        synchronized (this) {
            a(C1665za.j().d().registerStickyObserver(this));
            xc.t tVar = xc.t.f32733a;
        }
    }

    public final void a(ApplicationState applicationState) {
        boolean z10;
        if (applicationState == ApplicationState.VISIBLE) {
            z10 = true;
        } else {
            z10 = false;
        }
        updateState(z10);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationStateObserver
    public final synchronized void onApplicationStateChanged(ApplicationState applicationState) {
        a(applicationState);
    }
}
