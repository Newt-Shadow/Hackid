package io.appmetrica.analytics.locationapi.internal;
/* loaded from: classes2.dex */
public interface LastKnownLocationExtractorProviderFactory {
    LastKnownLocationExtractorProvider getGplLastKnownLocationExtractorProvider();

    LastKnownLocationExtractorProvider getGpsLastKnownLocationExtractorProvider();

    LastKnownLocationExtractorProvider getNetworkLastKnownLocationExtractorProvider();

    LastKnownLocationExtractorProvider getPassiveLastKnownLocationExtractorProvider();
}
