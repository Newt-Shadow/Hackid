package com.yandex.metrica.impl.ob;

import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes2.dex */
public final class Ol {

    /* renamed from: a  reason: collision with root package name */
    private static final BigInteger f11006a = BigInteger.valueOf(Long.MAX_VALUE);

    /* renamed from: b  reason: collision with root package name */
    private static final BigInteger f11007b = BigInteger.valueOf(Long.MIN_VALUE);

    public static final xc.k a(BigDecimal bigDecimal) {
        int i10 = -bigDecimal.scale();
        BigInteger unscaledValue = bigDecimal.unscaledValue();
        kotlin.jvm.internal.m.d(unscaledValue, "value.unscaledValue()");
        while (true) {
            if (unscaledValue.compareTo(f11006a) <= 0 && unscaledValue.compareTo(f11007b) >= 0) {
                return xc.q.a(Long.valueOf(unscaledValue.longValue()), Integer.valueOf(i10));
            }
            unscaledValue = unscaledValue.divide(BigInteger.TEN);
            kotlin.jvm.internal.m.d(unscaledValue, "bigIntMantissa.divide(BigInteger.TEN)");
            i10++;
        }
    }
}
