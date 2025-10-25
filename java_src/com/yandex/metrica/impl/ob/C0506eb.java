package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceEvent;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.eb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0506eb extends ECommerceEvent {

    /* renamed from: b  reason: collision with root package name */
    public final C0431bb f12310b;

    /* renamed from: c  reason: collision with root package name */
    private final Fa f12311c;

    public C0506eb(C0431bb c0431bb, Fa fa2) {
        this.f12310b = c0431bb;
        this.f12311c = fa2;
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent
    public String getPublicDescription() {
        return "shown screen info";
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent, com.yandex.metrica.impl.ob.Za
    public List<Na<C0709mf, Vm>> toProto() {
        return (List) this.f12311c.fromModel(this);
    }

    public String toString() {
        return "ShownScreenInfoEvent{screen=" + this.f12310b + ", converter=" + this.f12311c + '}';
    }
}
