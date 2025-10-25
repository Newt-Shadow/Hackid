package io.appmetrica.analytics.adrevenue.applovin.v12.internal;

import io.appmetrica.analytics.adrevenue.applovin.v12.impl.a;
import io.appmetrica.analytics.adrevenue.applovin.v12.impl.b;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
/* loaded from: classes2.dex */
public final class AppLovinClientModuleEntryPoint extends ModuleClientEntryPoint<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final String f17556a = "ad-revenue-applovin-v12";

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public String getIdentifier() {
        return this.f17556a;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public void initClientSide(ClientContext clientContext) {
        if (ReflectionUtils.detectClassExists("com.applovin.sdk.AppLovinSdk")) {
            clientContext.getModuleAdRevenueContext().getAdRevenueProcessorsHolder().register(new b(new a(), clientContext));
        }
    }
}
