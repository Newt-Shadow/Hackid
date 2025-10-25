package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.ecommerce.ECommerceOrder;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.me  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1345me extends ECommerceEvent {

    /* renamed from: d  reason: collision with root package name */
    public static final int f20116d = 6;

    /* renamed from: e  reason: collision with root package name */
    public static final int f20117e = 7;

    /* renamed from: a  reason: collision with root package name */
    public final int f20118a;

    /* renamed from: b  reason: collision with root package name */
    public final C1395oe f20119b;

    /* renamed from: c  reason: collision with root package name */
    public final InterfaceC1314l8 f20120c;

    public C1345me(int i10, ECommerceOrder eCommerceOrder) {
        this(i10, new C1395oe(eCommerceOrder), new C1370ne());
    }

    public final InterfaceC1314l8 a() {
        return this.f20120c;
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent
    public final String getPublicDescription() {
        return "order info";
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent, io.appmetrica.analytics.impl.Gf
    public final List<Ci> toProto() {
        return (List) this.f20120c.fromModel(this);
    }

    public final String toString() {
        return "OrderInfoEvent{eventType=" + this.f20118a + ", order=" + this.f20119b + ", converter=" + this.f20120c + '}';
    }

    public C1345me(int i10, C1395oe c1395oe, InterfaceC1314l8 interfaceC1314l8) {
        this.f20118a = i10;
        this.f20119b = c1395oe;
        this.f20120c = interfaceC1314l8;
    }
}
