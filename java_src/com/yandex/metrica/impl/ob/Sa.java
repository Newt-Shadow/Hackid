package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceAmount;
import java.math.BigDecimal;
/* loaded from: classes2.dex */
public class Sa {

    /* renamed from: a  reason: collision with root package name */
    public final BigDecimal f11256a;

    /* renamed from: b  reason: collision with root package name */
    public final String f11257b;

    public Sa(ECommerceAmount eCommerceAmount) {
        this(eCommerceAmount.getAmount(), eCommerceAmount.getUnit());
    }

    public String toString() {
        return "AmountWrapper{amount=" + this.f11256a + ", unit='" + this.f11257b + "'}";
    }

    public Sa(BigDecimal bigDecimal, String str) {
        this.f11256a = bigDecimal;
        this.f11257b = str;
    }
}
