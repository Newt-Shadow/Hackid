package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceCartItem;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.z3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1658z3 extends ECommerceEvent {

    /* renamed from: d  reason: collision with root package name */
    public static final int f21010d = 4;

    /* renamed from: e  reason: collision with root package name */
    public static final int f21011e = 5;

    /* renamed from: a  reason: collision with root package name */
    public final int f21012a;

    /* renamed from: b  reason: collision with root package name */
    public final C3 f21013b;

    /* renamed from: c  reason: collision with root package name */
    public final InterfaceC1314l8 f21014c;

    public C1658z3(int i10, ECommerceCartItem eCommerceCartItem) {
        this(i10, new C3(eCommerceCartItem), new A3());
    }

    public final InterfaceC1314l8 a() {
        return this.f21014c;
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent
    public final String getPublicDescription() {
        int i10 = this.f21012a;
        if (i10 != 4) {
            if (i10 != 5) {
                return "unknown cart action info";
            }
            return "remove cart item info";
        }
        return "add cart item info";
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent, io.appmetrica.analytics.impl.Gf
    public final List<Ci> toProto() {
        return (List) this.f21014c.fromModel(this);
    }

    public final String toString() {
        return "CartActionInfoEvent{eventType=" + this.f21012a + ", cartItem=" + this.f21013b + ", converter=" + this.f21014c + '}';
    }

    public C1658z3(int i10, C3 c32, InterfaceC1314l8 interfaceC1314l8) {
        this.f21012a = i10;
        this.f21013b = c32;
        this.f21014c = interfaceC1314l8;
    }
}
