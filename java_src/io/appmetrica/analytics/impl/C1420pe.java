package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.internal.IAppMetricaService;
/* renamed from: io.appmetrica.analytics.impl.pe  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1420pe extends AbstractCallableC1647yh {

    /* renamed from: e  reason: collision with root package name */
    public final C1645yf f20384e;

    public C1420pe(C1207h0 c1207h0, Lk lk, C1645yf c1645yf) {
        super(c1207h0, lk);
        this.f20384e = c1645yf;
    }

    @Override // io.appmetrica.analytics.impl.AbstractCallableC1647yh
    public final void a(IAppMetricaService iAppMetricaService) {
        Bundle bundle = new Bundle();
        C1645yf c1645yf = this.f20384e;
        synchronized (c1645yf) {
            bundle.putParcelable("PROCESS_CFG_OBJ", c1645yf);
        }
        iAppMetricaService.pauseUserSession(bundle);
    }
}
