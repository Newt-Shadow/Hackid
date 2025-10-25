package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AppMetricaConfig;
/* renamed from: io.appmetrica.analytics.impl.qc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1443qc extends Cn {

    /* renamed from: b  reason: collision with root package name */
    public final AppMetricaConfig f20439b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1443qc(InterfaceC1168fb interfaceC1168fb, AppMetricaConfig appMetricaConfig) {
        super(interfaceC1168fb);
        String str = appMetricaConfig.apiKey;
        this.f20439b = appMetricaConfig;
    }

    public final InterfaceC1193gb a() {
        return this.f18066a.a().b(this.f20439b);
    }
}
