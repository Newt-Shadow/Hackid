package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;
/* loaded from: classes2.dex */
public final class Yh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AdRevenue f19297a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f19298b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1225hi f19299c;

    public Yh(C1225hi c1225hi, AdRevenue adRevenue, boolean z10) {
        this.f19299c = c1225hi;
        this.f19297a = adRevenue;
        this.f19298b = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f19299c;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).reportAdRevenue(this.f19297a, this.f19298b);
    }
}
