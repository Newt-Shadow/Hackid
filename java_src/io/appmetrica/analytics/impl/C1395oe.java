package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.ecommerce.ECommerceCartItem;
import io.appmetrica.analytics.ecommerce.ECommerceOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* renamed from: io.appmetrica.analytics.impl.oe  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1395oe {

    /* renamed from: a  reason: collision with root package name */
    public final String f20294a;

    /* renamed from: b  reason: collision with root package name */
    public final String f20295b;

    /* renamed from: c  reason: collision with root package name */
    public final List f20296c;

    /* renamed from: d  reason: collision with root package name */
    public final Map f20297d;

    public C1395oe(ECommerceOrder eCommerceOrder) {
        this(UUID.randomUUID().toString(), eCommerceOrder.getIdentifier(), a(eCommerceOrder.getCartItems()), CollectionUtils.mapCopyOfNullableMap(eCommerceOrder.getPayload()));
    }

    public static ArrayList a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new C3((ECommerceCartItem) it.next()));
        }
        return arrayList;
    }

    public final String toString() {
        return "OrderWrapper{uuid='" + this.f20294a + "', identifier='" + this.f20295b + "', cartItems=" + this.f20296c + ", payload=" + this.f20297d + '}';
    }

    public C1395oe(String str, String str2, ArrayList arrayList, Map map) {
        this.f20294a = str;
        this.f20295b = str2;
        this.f20296c = arrayList;
        this.f20297d = map;
    }
}
