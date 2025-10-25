package com.yandex.metrica.ecommerce;

import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ECommerceOrder {

    /* renamed from: a  reason: collision with root package name */
    private final String f9608a;

    /* renamed from: b  reason: collision with root package name */
    private final List f9609b;

    /* renamed from: c  reason: collision with root package name */
    private Map f9610c;

    public ECommerceOrder(String str, List<ECommerceCartItem> list) {
        this.f9608a = str;
        this.f9609b = list;
    }

    public List<ECommerceCartItem> getCartItems() {
        return this.f9609b;
    }

    public String getIdentifier() {
        return this.f9608a;
    }

    public Map<String, String> getPayload() {
        return this.f9610c;
    }

    public ECommerceOrder setPayload(Map<String, String> map) {
        this.f9610c = map;
        return this;
    }

    public String toString() {
        return "ECommerceOrder{identifier='" + this.f9608a + "', cartItems=" + this.f9609b + ", payload=" + this.f9610c + '}';
    }
}
