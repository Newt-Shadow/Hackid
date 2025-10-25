package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.ecommerce.ECommerceProduct;
import io.appmetrica.analytics.ecommerce.ECommerceScreen;
import java.util.List;
/* loaded from: classes2.dex */
public final class Mk extends ECommerceEvent {

    /* renamed from: a  reason: collision with root package name */
    public final Df f18606a;

    /* renamed from: b  reason: collision with root package name */
    public final C1076bj f18607b;

    /* renamed from: c  reason: collision with root package name */
    public final InterfaceC1314l8 f18608c;

    public Mk(ECommerceProduct eCommerceProduct, ECommerceScreen eCommerceScreen) {
        this(new Df(eCommerceProduct), new C1076bj(eCommerceScreen), new Nk());
    }

    public final InterfaceC1314l8 a() {
        return this.f18608c;
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent
    public final String getPublicDescription() {
        return "shown product card info";
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent, io.appmetrica.analytics.impl.Gf
    public final List<Ci> toProto() {
        return (List) this.f18608c.fromModel(this);
    }

    public final String toString() {
        return "ShownProductCardInfoEvent{product=" + this.f18606a + ", screen=" + this.f18607b + ", converter=" + this.f18608c + '}';
    }

    public Mk(Df df2, C1076bj c1076bj, InterfaceC1314l8 interfaceC1314l8) {
        this.f18606a = df2;
        this.f18607b = c1076bj;
        this.f18608c = interfaceC1314l8;
    }
}
