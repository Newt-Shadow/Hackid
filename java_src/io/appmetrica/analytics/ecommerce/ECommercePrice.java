package io.appmetrica.analytics.ecommerce;

import java.util.List;
/* loaded from: classes2.dex */
public class ECommercePrice {

    /* renamed from: a  reason: collision with root package name */
    private final ECommerceAmount f17795a;

    /* renamed from: b  reason: collision with root package name */
    private List f17796b;

    public ECommercePrice(ECommerceAmount eCommerceAmount) {
        this.f17795a = eCommerceAmount;
    }

    public ECommerceAmount getFiat() {
        return this.f17795a;
    }

    public List<ECommerceAmount> getInternalComponents() {
        return this.f17796b;
    }

    public ECommercePrice setInternalComponents(List<ECommerceAmount> list) {
        this.f17796b = list;
        return this;
    }

    public String toString() {
        return "ECommercePrice{fiat=" + this.f17795a + ", internalComponents=" + this.f17796b + '}';
    }
}
