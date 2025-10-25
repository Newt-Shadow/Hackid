package com.yandex.metrica.ecommerce;

import com.yandex.metrica.impl.ob.A2;
import java.math.BigDecimal;
/* loaded from: classes.dex */
public class ECommerceAmount {

    /* renamed from: a  reason: collision with root package name */
    private final BigDecimal f9601a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9602b;

    public ECommerceAmount(long j10, String str) {
        this(A2.a(j10), str);
    }

    public BigDecimal getAmount() {
        return this.f9601a;
    }

    public String getUnit() {
        return this.f9602b;
    }

    public String toString() {
        return "ECommerceAmount{amount=" + this.f9601a + ", unit='" + this.f9602b + "'}";
    }

    public ECommerceAmount(double d10, String str) {
        this(new BigDecimal(A2.a(d10, 0.0d)), str);
    }

    public ECommerceAmount(BigDecimal bigDecimal, String str) {
        this.f9601a = bigDecimal;
        this.f9602b = str;
    }
}
