package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceAmount;
import io.appmetrica.analytics.ecommerce.ECommercePrice;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.wf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1595wf {

    /* renamed from: a  reason: collision with root package name */
    public final T f20864a;

    /* renamed from: b  reason: collision with root package name */
    public final List f20865b;

    public C1595wf(ECommercePrice eCommercePrice) {
        this(new T(eCommercePrice.getFiat()), a(eCommercePrice.getInternalComponents()));
    }

    public static LinkedList a(List list) {
        if (list != null) {
            LinkedList linkedList = new LinkedList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ECommerceAmount eCommerceAmount = (ECommerceAmount) it.next();
                linkedList.add(new T(eCommerceAmount.getAmount(), eCommerceAmount.getUnit()));
            }
            return linkedList;
        }
        return null;
    }

    public final String toString() {
        return "PriceWrapper{fiat=" + this.f20864a + ", internalComponents=" + this.f20865b + '}';
    }

    public C1595wf(T t10, LinkedList linkedList) {
        this.f20864a = t10;
        this.f20865b = linkedList;
    }
}
