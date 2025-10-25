package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceEvent;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.cb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0456cb extends ECommerceEvent {

    /* renamed from: b  reason: collision with root package name */
    public final Ya f12152b;

    /* renamed from: c  reason: collision with root package name */
    public final C0431bb f12153c;

    /* renamed from: d  reason: collision with root package name */
    private final Fa f12154d;

    public C0456cb(Ya ya2, C0431bb c0431bb, Fa fa2) {
        this.f12152b = ya2;
        this.f12153c = c0431bb;
        this.f12154d = fa2;
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent
    public String getPublicDescription() {
        return "shown product card info";
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent, com.yandex.metrica.impl.ob.Za
    public List<Na<C0709mf, Vm>> toProto() {
        return (List) this.f12154d.fromModel(this);
    }

    public String toString() {
        return "ShownProductCardInfoEvent{product=" + this.f12152b + ", screen=" + this.f12153c + ", converter=" + this.f12154d + '}';
    }
}
