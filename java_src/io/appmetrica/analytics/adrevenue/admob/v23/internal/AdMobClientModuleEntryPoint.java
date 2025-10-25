package io.appmetrica.analytics.adrevenue.admob.v23.internal;

import io.appmetrica.analytics.adrevenue.admob.v23.impl.a;
import io.appmetrica.analytics.adrevenue.admob.v23.impl.d;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
/* loaded from: classes2.dex */
public class AdMobClientModuleEntryPoint extends ModuleClientEntryPoint<Object> {
    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public String getIdentifier() {
        return "ad-revenue-admob-v23";
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public void initClientSide(ClientContext clientContext) {
        if (ReflectionUtils.detectClassExists("com.google.android.gms.ads.AdView")) {
            clientContext.getModuleAdRevenueContext().getAdRevenueProcessorsHolder().register(new a(new d(), clientContext));
        }
    }
}
