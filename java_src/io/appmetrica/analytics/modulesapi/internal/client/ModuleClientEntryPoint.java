package io.appmetrica.analytics.modulesapi.internal.client;
/* loaded from: classes2.dex */
public abstract class ModuleClientEntryPoint<T> {
    public abstract String getIdentifier();

    public ServiceConfigExtensionConfiguration<T> getServiceConfigExtensionConfiguration() {
        return null;
    }

    public void initClientSide(ClientContext clientContext) {
    }

    public void onActivated() {
    }
}
