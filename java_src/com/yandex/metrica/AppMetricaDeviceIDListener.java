package com.yandex.metrica;
/* loaded from: classes.dex */
public interface AppMetricaDeviceIDListener {

    /* loaded from: classes.dex */
    public enum Reason {
        UNKNOWN,
        NETWORK,
        INVALID_RESPONSE
    }

    void onError(Reason reason);

    void onLoaded(String str);
}
