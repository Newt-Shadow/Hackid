package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.internal.IAppMetricaService;
/* renamed from: io.appmetrica.analytics.impl.tn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1528tn extends AbstractCallableC1647yh {

    /* renamed from: e  reason: collision with root package name */
    public final int f20687e;

    /* renamed from: f  reason: collision with root package name */
    public final Bundle f20688f;

    public C1528tn(C1207h0 c1207h0, Lk lk, int i10, Bundle bundle) {
        super(c1207h0, lk);
        this.f20687e = i10;
        this.f20688f = bundle;
    }

    @Override // io.appmetrica.analytics.impl.AbstractCallableC1647yh
    public final void a(IAppMetricaService iAppMetricaService) {
        iAppMetricaService.reportData(this.f20687e, this.f20688f);
    }
}
