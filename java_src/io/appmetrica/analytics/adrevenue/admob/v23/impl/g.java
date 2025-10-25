package io.appmetrica.analytics.adrevenue.admob.v23.impl;

import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenue;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
/* loaded from: classes2.dex */
public abstract class g implements ModuleAdRevenueProcessor {

    /* renamed from: a  reason: collision with root package name */
    protected final d f17552a;

    /* renamed from: b  reason: collision with root package name */
    public final ClientContext f17553b;

    public g(d dVar, ClientContext clientContext) {
        this.f17552a = dVar;
        this.f17553b = clientContext;
    }

    public final void a(ModuleAdRevenue moduleAdRevenue) {
        this.f17553b.getInternalClientModuleFacade().reportAdRevenue(moduleAdRevenue);
        LoggerStorage.getMainPublicOrAnonymousLogger().info("Ad Revenue from AdMob was reported", new Object[0]);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor
    public final String getDescription() {
        return "AdMob";
    }
}
