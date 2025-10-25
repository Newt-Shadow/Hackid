package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;
/* renamed from: io.appmetrica.analytics.impl.wj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1599wj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ECommerceEvent f20877a;

    public C1599wj(ECommerceEvent eCommerceEvent) {
        this.f20877a = eCommerceEvent;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.reportECommerce(this.f20877a);
    }
}
