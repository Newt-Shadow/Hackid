package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceAmount;
import java.math.BigDecimal;
/* loaded from: classes2.dex */
public final class T {

    /* renamed from: a  reason: collision with root package name */
    public final BigDecimal f18950a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18951b;

    public T(ECommerceAmount eCommerceAmount) {
        this(eCommerceAmount.getAmount(), eCommerceAmount.getUnit());
    }

    public final String toString() {
        return "AmountWrapper{amount=" + this.f18950a + ", unit='" + this.f18951b + "'}";
    }

    public T(BigDecimal bigDecimal, String str) {
        this.f18950a = bigDecimal;
        this.f18951b = str;
    }
}
