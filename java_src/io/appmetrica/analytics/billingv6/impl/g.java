package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import io.appmetrica.analytics.billingv6.internal.BillingLibraryMonitor$updateBilling$1$runSafety$1;
import java.util.LinkedHashSet;
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final com.android.billingclient.api.d f17587a;

    /* renamed from: b  reason: collision with root package name */
    public final UtilsProvider f17588b;

    /* renamed from: c  reason: collision with root package name */
    public final LinkedHashSet f17589c = new LinkedHashSet();

    public g(com.android.billingclient.api.d dVar, BillingLibraryMonitor$updateBilling$1$runSafety$1 billingLibraryMonitor$updateBilling$1$runSafety$1) {
        this.f17587a = dVar;
        this.f17588b = billingLibraryMonitor$updateBilling$1$runSafety$1;
    }

    public final void a(Object obj) {
        this.f17589c.remove(obj);
        if (this.f17589c.size() == 0) {
            this.f17588b.getUiExecutor().execute(new f(this));
        }
    }
}
