package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.locationapi.internal.LocationReceiverProvider;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProviderFactory;
/* renamed from: io.appmetrica.analytics.impl.hc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1219hc implements LocationReceiverProviderFactory {

    /* renamed from: a  reason: collision with root package name */
    public final C1244ic f19733a = new C1244ic();

    @Override // io.appmetrica.analytics.locationapi.internal.LocationReceiverProviderFactory
    public final LocationReceiverProvider getPassiveLocationReceiverProvider() {
        return this.f19733a;
    }
}
