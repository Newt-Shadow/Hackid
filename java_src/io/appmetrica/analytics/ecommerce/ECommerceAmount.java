package io.appmetrica.analytics.ecommerce;

import io.appmetrica.analytics.impl.Rn;
import java.math.BigDecimal;
/* loaded from: classes2.dex */
public class ECommerceAmount {

    /* renamed from: a  reason: collision with root package name */
    private final BigDecimal f17786a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17787b;

    public ECommerceAmount(long j10, String str) {
        this(Rn.a(j10), str);
    }

    public BigDecimal getAmount() {
        return this.f17786a;
    }

    public String getUnit() {
        return this.f17787b;
    }

    public String toString() {
        return "ECommerceAmount{amount=" + this.f17786a + ", unit='" + this.f17787b + "'}";
    }

    public ECommerceAmount(double d10, String str) {
        this(new BigDecimal(Rn.a(d10)), str);
    }

    public ECommerceAmount(BigDecimal bigDecimal, String str) {
        this.f17786a = bigDecimal;
        this.f17787b = str;
    }
}
