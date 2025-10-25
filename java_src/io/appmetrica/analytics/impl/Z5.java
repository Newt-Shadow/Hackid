package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessorsHolder;
/* loaded from: classes2.dex */
public final class Z5 implements Y5 {

    /* renamed from: a  reason: collision with root package name */
    public final C1610x5 f19345a;

    public Z5(C1610x5 c1610x5) {
        this.f19345a = c1610x5;
    }

    @Override // io.appmetrica.analytics.impl.Y5, io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueContext
    public final C1610x5 getAdRevenueProcessorsHolder() {
        return this.f19345a;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueContext
    public final ModuleAdRevenueProcessorsHolder getAdRevenueProcessorsHolder() {
        return this.f19345a;
    }
}
