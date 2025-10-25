package io.appmetrica.analytics.coreutils.internal.services;

import io.appmetrica.analytics.coreutils.impl.l;
import xc.d;
import xc.f;
/* loaded from: classes2.dex */
public final class UtilityServiceProvider {

    /* renamed from: a  reason: collision with root package name */
    private final d f17753a;

    /* renamed from: b  reason: collision with root package name */
    private final WaitForActivationDelayBarrier f17754b;

    public UtilityServiceProvider() {
        d a10;
        a10 = f.a(new l(this));
        this.f17753a = a10;
        this.f17754b = new WaitForActivationDelayBarrier();
    }

    public final WaitForActivationDelayBarrier getActivationBarrier() {
        return this.f17754b;
    }

    public final FirstExecutionConditionServiceImpl getFirstExecutionService() {
        return (FirstExecutionConditionServiceImpl) this.f17753a.getValue();
    }

    public final void initAsync() {
        this.f17754b.activate();
    }

    public final void updateConfiguration(UtilityServiceConfiguration utilityServiceConfiguration) {
        getFirstExecutionService().updateConfig(utilityServiceConfiguration);
    }
}
