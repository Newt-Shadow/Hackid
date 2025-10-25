package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceCartItem;
import java.math.BigDecimal;
/* loaded from: classes2.dex */
public final class C3 {

    /* renamed from: a  reason: collision with root package name */
    public final Df f18030a;

    /* renamed from: b  reason: collision with root package name */
    public final BigDecimal f18031b;

    /* renamed from: c  reason: collision with root package name */
    public final C1595wf f18032c;

    /* renamed from: d  reason: collision with root package name */
    public final C1571vg f18033d;

    public C3(ECommerceCartItem eCommerceCartItem) {
        this(new Df(eCommerceCartItem.getProduct()), eCommerceCartItem.getQuantity(), new C1595wf(eCommerceCartItem.getRevenue()), eCommerceCartItem.getReferrer() == null ? null : new C1571vg(eCommerceCartItem.getReferrer()));
    }

    public final String toString() {
        return "CartItemWrapper{product=" + this.f18030a + ", quantity=" + this.f18031b + ", revenue=" + this.f18032c + ", referrer=" + this.f18033d + '}';
    }

    public C3(Df df2, BigDecimal bigDecimal, C1595wf c1595wf, C1571vg c1571vg) {
        this.f18030a = df2;
        this.f18031b = bigDecimal;
        this.f18032c = c1595wf;
        this.f18033d = c1571vg;
    }
}
