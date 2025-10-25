package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.monitor.BillingMonitor;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationState;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationStateObserver;
/* renamed from: io.appmetrica.analytics.impl.i3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1235i3 implements ApplicationStateObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1259j3 f19774a;

    public C1235i3(C1259j3 c1259j3) {
        this.f19774a = c1259j3;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationStateObserver
    public final void onApplicationStateChanged(ApplicationState applicationState) {
        C1259j3 c1259j3 = this.f19774a;
        c1259j3.getClass();
        if (applicationState == ApplicationState.VISIBLE) {
            try {
                BillingMonitor billingMonitor = c1259j3.f19828a;
                if (billingMonitor != null) {
                    billingMonitor.onSessionResumed();
                }
            } catch (Throwable unused) {
            }
        }
    }
}
