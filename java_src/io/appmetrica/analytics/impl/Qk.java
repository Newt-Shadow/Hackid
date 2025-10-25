package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.ecommerce.ECommerceScreen;
import java.util.List;
/* loaded from: classes2.dex */
public final class Qk extends ECommerceEvent {

    /* renamed from: a  reason: collision with root package name */
    public final C1076bj f18826a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC1314l8 f18827b;

    public Qk(ECommerceScreen eCommerceScreen) {
        this(new C1076bj(eCommerceScreen), new Rk());
    }

    public final InterfaceC1314l8 a() {
        return this.f18827b;
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent
    public final String getPublicDescription() {
        return "shown screen info";
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent, io.appmetrica.analytics.impl.Gf
    public final List<Ci> toProto() {
        return (List) this.f18827b.fromModel(this);
    }

    public final String toString() {
        return "ShownScreenInfoEvent{screen=" + this.f18826a + ", converter=" + this.f18827b + '}';
    }

    public Qk(C1076bj c1076bj, InterfaceC1314l8 interfaceC1314l8) {
        this.f18826a = c1076bj;
        this.f18827b = interfaceC1314l8;
    }
}
