package com.yandex.metrica.ecommerce;

import com.yandex.metrica.impl.ob.A2;
import java.math.BigDecimal;
/* loaded from: classes.dex */
public class ECommerceCartItem {

    /* renamed from: a  reason: collision with root package name */
    private final ECommerceProduct f9603a;

    /* renamed from: b  reason: collision with root package name */
    private final BigDecimal f9604b;

    /* renamed from: c  reason: collision with root package name */
    private final ECommercePrice f9605c;

    /* renamed from: d  reason: collision with root package name */
    private ECommerceReferrer f9606d;

    public ECommerceCartItem(ECommerceProduct eCommerceProduct, ECommercePrice eCommercePrice, long j10) {
        this(eCommerceProduct, eCommercePrice, A2.a(j10));
    }

    public ECommerceProduct getProduct() {
        return this.f9603a;
    }

    public BigDecimal getQuantity() {
        return this.f9604b;
    }

    public ECommerceReferrer getReferrer() {
        return this.f9606d;
    }

    public ECommercePrice getRevenue() {
        return this.f9605c;
    }

    public ECommerceCartItem setReferrer(ECommerceReferrer eCommerceReferrer) {
        this.f9606d = eCommerceReferrer;
        return this;
    }

    public String toString() {
        return "ECommerceCartItem{product=" + this.f9603a + ", quantity=" + this.f9604b + ", revenue=" + this.f9605c + ", referrer=" + this.f9606d + '}';
    }

    public ECommerceCartItem(ECommerceProduct eCommerceProduct, ECommercePrice eCommercePrice, double d10) {
        this(eCommerceProduct, eCommercePrice, new BigDecimal(A2.a(d10, 0.0d)));
    }

    public ECommerceCartItem(ECommerceProduct eCommerceProduct, ECommercePrice eCommercePrice, BigDecimal bigDecimal) {
        this.f9603a = eCommerceProduct;
        this.f9604b = bigDecimal;
        this.f9605c = eCommercePrice;
    }
}
