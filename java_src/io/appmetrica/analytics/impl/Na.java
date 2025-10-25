package io.appmetrica.analytics.impl;

import android.os.Handler;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
/* loaded from: classes2.dex */
public interface Na {
    C1559v4 a();

    void a(AppMetricaConfig appMetricaConfig, InterfaceC1168fb interfaceC1168fb);

    Handler b();

    U1 c();

    C1591wb d();

    ICommonExecutor getDefaultExecutor();
}
