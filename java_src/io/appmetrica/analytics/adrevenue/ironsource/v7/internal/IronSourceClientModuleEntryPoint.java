package io.appmetrica.analytics.adrevenue.ironsource.v7.internal;

import com.ironsource.mediationsdk.IronSource;
import io.appmetrica.analytics.adrevenue.ironsource.v7.impl.c;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
/* loaded from: classes2.dex */
public class IronSourceClientModuleEntryPoint extends ModuleClientEntryPoint<Object> {

    /* renamed from: a  reason: collision with root package name */
    private ClientContext f17562a = null;

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public String getIdentifier() {
        return "ad-revenue-ironsource-v7";
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public void initClientSide(ClientContext clientContext) {
        this.f17562a = clientContext;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public void onActivated() {
        ClientContext clientContext;
        if (ReflectionUtils.detectClassExists("com.ironsource.mediationsdk.IronSource") && (clientContext = this.f17562a) != null) {
            IronSource.addImpressionDataListener(new c(clientContext));
        }
    }
}
