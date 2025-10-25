package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceEvent;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.db  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0481db extends ECommerceEvent {

    /* renamed from: b  reason: collision with root package name */
    public final Ya f12207b;

    /* renamed from: c  reason: collision with root package name */
    public final C0406ab f12208c;

    /* renamed from: d  reason: collision with root package name */
    private final Fa f12209d;

    public C0481db(Ya ya2, C0406ab c0406ab, Fa fa2) {
        this.f12207b = ya2;
        this.f12208c = c0406ab;
        this.f12209d = fa2;
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent
    public String getPublicDescription() {
        return "shown product details info";
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent, com.yandex.metrica.impl.ob.Za
    public List<Na<C0709mf, Vm>> toProto() {
        return (List) this.f12209d.fromModel(this);
    }

    public String toString() {
        return "ShownProductDetailInfoEvent{product=" + this.f12207b + ", referrer=" + this.f12208c + ", converter=" + this.f12209d + '}';
    }
}
