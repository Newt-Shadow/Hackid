package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceCartItem;
import com.yandex.metrica.ecommerce.ECommerceOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes2.dex */
public class Wa {

    /* renamed from: a  reason: collision with root package name */
    public final String f11688a;

    /* renamed from: b  reason: collision with root package name */
    public final String f11689b;

    /* renamed from: c  reason: collision with root package name */
    public final List<Ua> f11690c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, String> f11691d;

    public Wa(ECommerceOrder eCommerceOrder) {
        this(UUID.randomUUID().toString(), eCommerceOrder.getIdentifier(), a(eCommerceOrder.getCartItems()), A2.c(eCommerceOrder.getPayload()));
    }

    private static List<Ua> a(List<ECommerceCartItem> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (ECommerceCartItem eCommerceCartItem : list) {
            arrayList.add(new Ua(eCommerceCartItem));
        }
        return arrayList;
    }

    public String toString() {
        return "OrderWrapper{uuid='" + this.f11688a + "', identifier='" + this.f11689b + "', cartItems=" + this.f11690c + ", payload=" + this.f11691d + '}';
    }

    public Wa(String str, String str2, List<Ua> list, Map<String, String> map) {
        this.f11688a = str;
        this.f11689b = str2;
        this.f11690c = list;
        this.f11691d = map;
    }
}
