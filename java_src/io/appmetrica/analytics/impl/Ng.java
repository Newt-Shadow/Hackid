package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.internal.IAppMetricaService;
/* loaded from: classes2.dex */
public class Ng extends AbstractCallableC1647yh {

    /* renamed from: e  reason: collision with root package name */
    public final C1597wh f18643e;

    public Ng(C1207h0 c1207h0, Lk lk, C1597wh c1597wh) {
        super(c1207h0, lk);
        this.f18643e = c1597wh;
    }

    @Override // io.appmetrica.analytics.impl.AbstractCallableC1647yh
    public final void a(Throwable th) {
    }

    @Override // io.appmetrica.analytics.impl.AbstractCallableC1647yh
    public final void a(IAppMetricaService iAppMetricaService) {
        C1597wh c1597wh = this.f18643e;
        iAppMetricaService.reportData(c1597wh.f20868c, c1597wh.f20866a.d(c1597wh.f20870e.c()));
    }
}
