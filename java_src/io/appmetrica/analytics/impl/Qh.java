package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;
/* loaded from: classes2.dex */
public final class Qh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AdRevenue f18824a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1225hi f18825b;

    public Qh(C1225hi c1225hi, AdRevenue adRevenue) {
        this.f18825b = c1225hi;
        this.f18824a = adRevenue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f18825b;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).reportAdRevenue(this.f18824a);
    }
}
