package io.appmetrica.analytics.location.impl;

import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProvider;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProviderFactory;
/* loaded from: classes2.dex */
public final class g implements LastKnownLocationExtractorProviderFactory {

    /* renamed from: a  reason: collision with root package name */
    public final LastKnownLocationExtractorProvider f21103a;

    /* renamed from: b  reason: collision with root package name */
    public final c f21104b = new c("location-module-gpl");

    /* renamed from: c  reason: collision with root package name */
    public final v f21105c = new v("network", new f(), "location-module-network");

    /* renamed from: d  reason: collision with root package name */
    public final v f21106d = new v("gps", new e(), "location-module-gps");

    public g(LastKnownLocationExtractorProvider lastKnownLocationExtractorProvider) {
        this.f21103a = lastKnownLocationExtractorProvider;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProviderFactory
    public final LastKnownLocationExtractorProvider getGplLastKnownLocationExtractorProvider() {
        return this.f21104b;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProviderFactory
    public final LastKnownLocationExtractorProvider getGpsLastKnownLocationExtractorProvider() {
        return this.f21106d;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProviderFactory
    public final LastKnownLocationExtractorProvider getNetworkLastKnownLocationExtractorProvider() {
        return this.f21105c;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProviderFactory
    public final LastKnownLocationExtractorProvider getPassiveLastKnownLocationExtractorProvider() {
        return this.f21103a;
    }
}
