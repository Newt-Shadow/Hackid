package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceEvent;
import java.util.List;
/* loaded from: classes2.dex */
public class Ta extends ECommerceEvent {

    /* renamed from: b  reason: collision with root package name */
    public final int f11405b;

    /* renamed from: c  reason: collision with root package name */
    public final Ua f11406c;

    /* renamed from: d  reason: collision with root package name */
    private final Fa f11407d;

    public Ta(int i10, Ua ua2, Fa fa2) {
        this.f11405b = i10;
        this.f11406c = ua2;
        this.f11407d = fa2;
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent
    public String getPublicDescription() {
        int i10 = this.f11405b;
        if (i10 != 4) {
            if (i10 != 5) {
                return "unknown cart action info";
            }
            return "remove cart item info";
        }
        return "add cart item info";
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent, com.yandex.metrica.impl.ob.Za
    public List<Na<C0709mf, Vm>> toProto() {
        return (List) this.f11407d.fromModel(this);
    }

    public String toString() {
        return "CartActionInfoEvent{eventType=" + this.f11405b + ", cartItem=" + this.f11406c + ", converter=" + this.f11407d + '}';
    }
}
