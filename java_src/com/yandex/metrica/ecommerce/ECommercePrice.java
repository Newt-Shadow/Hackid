package com.yandex.metrica.ecommerce;

import java.util.List;
/* loaded from: classes.dex */
public class ECommercePrice {

    /* renamed from: a  reason: collision with root package name */
    private final ECommerceAmount f9611a;

    /* renamed from: b  reason: collision with root package name */
    private List f9612b;

    public ECommercePrice(ECommerceAmount eCommerceAmount) {
        this.f9611a = eCommerceAmount;
    }

    public ECommerceAmount getFiat() {
        return this.f9611a;
    }

    public List<ECommerceAmount> getInternalComponents() {
        return this.f9612b;
    }

    public ECommercePrice setInternalComponents(List<ECommerceAmount> list) {
        this.f9612b = list;
        return this;
    }

    public String toString() {
        return "ECommercePrice{fiat=" + this.f9611a + ", internalComponents=" + this.f9612b + '}';
    }
}
