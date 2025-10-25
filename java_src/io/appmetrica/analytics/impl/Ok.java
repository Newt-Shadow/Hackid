package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.ecommerce.ECommerceProduct;
import io.appmetrica.analytics.ecommerce.ECommerceReferrer;
import java.util.List;
/* loaded from: classes2.dex */
public final class Ok extends ECommerceEvent {

    /* renamed from: a  reason: collision with root package name */
    public final Df f18713a;

    /* renamed from: b  reason: collision with root package name */
    public final C1571vg f18714b;

    /* renamed from: c  reason: collision with root package name */
    public final InterfaceC1314l8 f18715c;

    public Ok(ECommerceProduct eCommerceProduct, ECommerceReferrer eCommerceReferrer) {
        this(new Df(eCommerceProduct), eCommerceReferrer == null ? null : new C1571vg(eCommerceReferrer), new Pk());
    }

    public final InterfaceC1314l8 a() {
        return this.f18715c;
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent
    public final String getPublicDescription() {
        return "shown product details info";
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent, io.appmetrica.analytics.impl.Gf
    public final List<Ci> toProto() {
        return (List) this.f18715c.fromModel(this);
    }

    public final String toString() {
        return "ShownProductDetailInfoEvent{product=" + this.f18713a + ", referrer=" + this.f18714b + ", converter=" + this.f18715c + '}';
    }

    public Ok(Df df2, C1571vg c1571vg, InterfaceC1314l8 interfaceC1314l8) {
        this.f18713a = df2;
        this.f18714b = c1571vg;
        this.f18715c = interfaceC1314l8;
    }
}
