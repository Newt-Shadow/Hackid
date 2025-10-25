package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.Revenue;
/* loaded from: classes2.dex */
public final class Ph implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Revenue f18788a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1225hi f18789b;

    public Ph(C1225hi c1225hi, Revenue revenue) {
        this.f18789b = c1225hi;
        this.f18788a = revenue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f18789b;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).reportRevenue(this.f18788a);
    }
}
