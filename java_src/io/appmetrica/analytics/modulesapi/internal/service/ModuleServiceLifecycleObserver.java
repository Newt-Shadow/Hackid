package io.appmetrica.analytics.modulesapi.internal.service;
/* loaded from: classes2.dex */
public interface ModuleServiceLifecycleObserver {
    void onAllClientsDisconnected();

    void onFirstClientConnected();
}
