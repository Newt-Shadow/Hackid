package io.appmetrica.analytics.internal;

import android.os.Bundle;
import io.appmetrica.analytics.impl.InterfaceC1481s1;
import io.appmetrica.analytics.internal.IAppMetricaService;
/* loaded from: classes2.dex */
public final class a extends IAppMetricaService.Stub {
    @Override // io.appmetrica.analytics.internal.IAppMetricaService
    public final void pauseUserSession(Bundle bundle) {
        InterfaceC1481s1 interfaceC1481s1;
        interfaceC1481s1 = AppMetricaService.f21085c;
        interfaceC1481s1.pauseUserSession(bundle);
    }

    @Override // io.appmetrica.analytics.internal.IAppMetricaService
    public final void reportData(int i10, Bundle bundle) {
        InterfaceC1481s1 interfaceC1481s1;
        interfaceC1481s1 = AppMetricaService.f21085c;
        interfaceC1481s1.reportData(i10, bundle);
    }

    @Override // io.appmetrica.analytics.internal.IAppMetricaService
    public final void resumeUserSession(Bundle bundle) {
        InterfaceC1481s1 interfaceC1481s1;
        interfaceC1481s1 = AppMetricaService.f21085c;
        interfaceC1481s1.resumeUserSession(bundle);
    }
}
