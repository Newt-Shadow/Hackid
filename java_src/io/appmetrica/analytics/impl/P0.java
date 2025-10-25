package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;
/* loaded from: classes2.dex */
public final class P0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ECommerceEvent f18750a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f18751b;

    public P0(C1282k1 c1282k1, ECommerceEvent eCommerceEvent) {
        this.f18751b = c1282k1;
        this.f18750a = eCommerceEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f18751b).reportECommerce(this.f18750a);
    }
}
