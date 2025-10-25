package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
/* renamed from: io.appmetrica.analytics.impl.q2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1433q2 implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Zl fromModel(BillingConfig billingConfig) {
        Zl zl = new Zl();
        zl.f19355a = billingConfig.sendFrequencySeconds;
        zl.f19356b = billingConfig.firstCollectingInappMaxAgeSeconds;
        return zl;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        Zl zl = (Zl) obj;
        return new BillingConfig(zl.f19355a, zl.f19356b);
    }

    public final BillingConfig a(Zl zl) {
        return new BillingConfig(zl.f19355a, zl.f19356b);
    }
}
