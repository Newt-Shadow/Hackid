package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import java.util.List;
/* loaded from: classes2.dex */
public final class p implements c2.m {

    /* renamed from: a  reason: collision with root package name */
    public final BillingConfig f17616a;

    /* renamed from: b  reason: collision with root package name */
    public final com.android.billingclient.api.d f17617b;

    /* renamed from: c  reason: collision with root package name */
    public final UtilsProvider f17618c;

    /* renamed from: d  reason: collision with root package name */
    public final String f17619d;

    /* renamed from: e  reason: collision with root package name */
    public final g f17620e;

    /* renamed from: f  reason: collision with root package name */
    public final u f17621f;

    public p(BillingConfig billingConfig, com.android.billingclient.api.d dVar, UtilsProvider utilsProvider, String str, g gVar, u uVar) {
        this.f17616a = billingConfig;
        this.f17617b = dVar;
        this.f17618c = utilsProvider;
        this.f17619d = str;
        this.f17620e = gVar;
        this.f17621f = uVar;
    }

    @Override // c2.m
    public final void onPurchaseHistoryResponse(com.android.billingclient.api.h hVar, List list) {
        this.f17618c.getWorkerExecutor().execute(new l(this, hVar, list));
    }
}
