package io.appmetrica.analytics;
/* loaded from: classes2.dex */
public interface IModuleReporter {
    void reportAdRevenue(AdRevenue adRevenue, boolean z10);

    void reportEvent(ModuleEvent moduleEvent);

    void sendEventsBuffer();

    void setSessionExtra(String str, byte[] bArr);
}
