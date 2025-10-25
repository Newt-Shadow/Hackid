package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceEvent;
import java.util.List;
/* loaded from: classes2.dex */
public class Va extends ECommerceEvent {

    /* renamed from: b  reason: collision with root package name */
    public final int f11655b;

    /* renamed from: c  reason: collision with root package name */
    public final Wa f11656c;

    /* renamed from: d  reason: collision with root package name */
    private final Fa f11657d;

    public Va(int i10, Wa wa2, Fa fa2) {
        this.f11655b = i10;
        this.f11656c = wa2;
        this.f11657d = fa2;
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent
    public String getPublicDescription() {
        return "order info";
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent, com.yandex.metrica.impl.ob.Za
    public List<Na<C0709mf, Vm>> toProto() {
        return (List) this.f11657d.fromModel(this);
    }

    public String toString() {
        return "OrderInfoEvent{eventType=" + this.f11655b + ", order=" + this.f11656c + ", converter=" + this.f11657d + '}';
    }
}
