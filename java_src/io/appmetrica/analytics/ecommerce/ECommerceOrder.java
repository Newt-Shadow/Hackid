package io.appmetrica.analytics.ecommerce;

import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class ECommerceOrder {

    /* renamed from: a  reason: collision with root package name */
    private final String f17792a;

    /* renamed from: b  reason: collision with root package name */
    private final List f17793b;

    /* renamed from: c  reason: collision with root package name */
    private Map f17794c;

    public ECommerceOrder(String str, List<ECommerceCartItem> list) {
        this.f17792a = str;
        this.f17793b = list;
    }

    public List<ECommerceCartItem> getCartItems() {
        return this.f17793b;
    }

    public String getIdentifier() {
        return this.f17792a;
    }

    public Map<String, String> getPayload() {
        return this.f17794c;
    }

    public ECommerceOrder setPayload(Map<String, String> map) {
        this.f17794c = map;
        return this;
    }

    public String toString() {
        return "ECommerceOrder{identifier='" + this.f17792a + "', cartItems=" + this.f17793b + ", payload=" + this.f17794c + '}';
    }
}
