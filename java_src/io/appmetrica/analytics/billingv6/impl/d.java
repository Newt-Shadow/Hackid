package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import io.appmetrica.analytics.billingv6.internal.BillingLibraryMonitor;
import io.appmetrica.analytics.billingv6.internal.BillingLibraryMonitor$updateBilling$1$runSafety$1;
/* loaded from: classes2.dex */
public final class d implements c2.g {

    /* renamed from: a  reason: collision with root package name */
    public final BillingConfig f17578a;

    /* renamed from: b  reason: collision with root package name */
    public final com.android.billingclient.api.d f17579b;

    /* renamed from: c  reason: collision with root package name */
    public final UtilsProvider f17580c;

    /* renamed from: d  reason: collision with root package name */
    public final g f17581d;

    /* renamed from: e  reason: collision with root package name */
    public final u f17582e;

    public d(BillingConfig billingConfig, com.android.billingclient.api.d dVar, BillingLibraryMonitor$updateBilling$1$runSafety$1 billingLibraryMonitor$updateBilling$1$runSafety$1, g gVar, BillingLibraryMonitor billingLibraryMonitor) {
        this.f17578a = billingConfig;
        this.f17579b = dVar;
        this.f17580c = billingLibraryMonitor$updateBilling$1$runSafety$1;
        this.f17581d = gVar;
        this.f17582e = billingLibraryMonitor;
    }

    @Override // c2.g
    public final void onBillingServiceDisconnected() {
    }

    @Override // c2.g
    public final void onBillingSetupFinished(com.android.billingclient.api.h hVar) {
        this.f17580c.getWorkerExecutor().execute(new a(this, hVar));
    }
}
