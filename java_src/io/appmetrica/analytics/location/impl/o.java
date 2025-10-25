package io.appmetrica.analytics.location.impl;

import io.appmetrica.analytics.locationapi.internal.LocationReceiverProvider;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProviderFactory;
/* loaded from: classes2.dex */
public final class o implements LocationReceiverProviderFactory {

    /* renamed from: a  reason: collision with root package name */
    public final q f21130a;

    public o(q qVar) {
        this.f21130a = qVar;
    }

    public final q a() {
        return this.f21130a;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationReceiverProviderFactory
    public final LocationReceiverProvider getPassiveLocationReceiverProvider() {
        return this.f21130a;
    }
}
