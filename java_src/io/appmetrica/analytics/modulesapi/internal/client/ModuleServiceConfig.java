package io.appmetrica.analytics.modulesapi.internal.client;

import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
/* loaded from: classes2.dex */
public interface ModuleServiceConfig<T> {
    T getFeaturesConfig();

    SdkIdentifiers getIdentifiers();
}
