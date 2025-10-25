package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceCartItem;
import java.math.BigDecimal;
/* loaded from: classes2.dex */
public class Ua {

    /* renamed from: a  reason: collision with root package name */
    public final Ya f11495a;

    /* renamed from: b  reason: collision with root package name */
    public final BigDecimal f11496b;

    /* renamed from: c  reason: collision with root package name */
    public final Xa f11497c;

    /* renamed from: d  reason: collision with root package name */
    public final C0406ab f11498d;

    public Ua(ECommerceCartItem eCommerceCartItem) {
        this(new Ya(eCommerceCartItem.getProduct()), eCommerceCartItem.getQuantity(), new Xa(eCommerceCartItem.getRevenue()), eCommerceCartItem.getReferrer() == null ? null : new C0406ab(eCommerceCartItem.getReferrer()));
    }

    public String toString() {
        return "CartItemWrapper{product=" + this.f11495a + ", quantity=" + this.f11496b + ", revenue=" + this.f11497c + ", referrer=" + this.f11498d + '}';
    }

    public Ua(Ya ya2, BigDecimal bigDecimal, Xa xa2, C0406ab c0406ab) {
        this.f11495a = ya2;
        this.f11496b = bigDecimal;
        this.f11497c = xa2;
        this.f11498d = c0406ab;
    }
}
