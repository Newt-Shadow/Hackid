package io.appmetrica.analytics.ecommerce;

import io.appmetrica.analytics.impl.Rn;
import java.math.BigDecimal;
/* loaded from: classes2.dex */
public class ECommerceCartItem {

    /* renamed from: a  reason: collision with root package name */
    private final ECommerceProduct f17788a;

    /* renamed from: b  reason: collision with root package name */
    private final BigDecimal f17789b;

    /* renamed from: c  reason: collision with root package name */
    private final ECommercePrice f17790c;

    /* renamed from: d  reason: collision with root package name */
    private ECommerceReferrer f17791d;

    public ECommerceCartItem(ECommerceProduct eCommerceProduct, ECommercePrice eCommercePrice, long j10) {
        this(eCommerceProduct, eCommercePrice, Rn.a(j10));
    }

    public ECommerceProduct getProduct() {
        return this.f17788a;
    }

    public BigDecimal getQuantity() {
        return this.f17789b;
    }

    public ECommerceReferrer getReferrer() {
        return this.f17791d;
    }

    public ECommercePrice getRevenue() {
        return this.f17790c;
    }

    public ECommerceCartItem setReferrer(ECommerceReferrer eCommerceReferrer) {
        this.f17791d = eCommerceReferrer;
        return this;
    }

    public String toString() {
        return "ECommerceCartItem{product=" + this.f17788a + ", quantity=" + this.f17789b + ", revenue=" + this.f17790c + ", referrer=" + this.f17791d + '}';
    }

    public ECommerceCartItem(ECommerceProduct eCommerceProduct, ECommercePrice eCommercePrice, double d10) {
        this(eCommerceProduct, eCommercePrice, new BigDecimal(Rn.a(d10)));
    }

    public ECommerceCartItem(ECommerceProduct eCommerceProduct, ECommercePrice eCommercePrice, BigDecimal bigDecimal) {
        this.f17788a = eCommerceProduct;
        this.f17789b = bigDecimal;
        this.f17790c = eCommercePrice;
    }
}
