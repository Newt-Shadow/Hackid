package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;
/* loaded from: classes2.dex */
public final class Sh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ECommerceEvent f18937a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1225hi f18938b;

    public Sh(C1225hi c1225hi, ECommerceEvent eCommerceEvent) {
        this.f18938b = c1225hi;
        this.f18937a = eCommerceEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f18938b;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).reportECommerce(this.f18937a);
    }
}
