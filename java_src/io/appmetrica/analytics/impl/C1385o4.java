package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleServiceConfig;
/* renamed from: io.appmetrica.analytics.impl.o4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1385o4 implements ModuleServiceConfig {

    /* renamed from: a  reason: collision with root package name */
    public final SdkIdentifiers f20251a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f20252b;

    public C1385o4(SdkIdentifiers sdkIdentifiers, Object obj) {
        this.f20251a = sdkIdentifiers;
        this.f20252b = obj;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleServiceConfig
    public final Object getFeaturesConfig() {
        return this.f20252b;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleServiceConfig
    public final SdkIdentifiers getIdentifiers() {
        return this.f20251a;
    }
}
