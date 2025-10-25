package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes2.dex */
public final class H7 implements ProtobufConverter {
    public final BigDecimal a(C1439q8 c1439q8) {
        throw new UnsupportedOperationException();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        C1439q8 c1439q8 = (C1439q8) obj;
        throw new UnsupportedOperationException();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1439q8 fromModel(BigDecimal bigDecimal) {
        BigInteger bigInteger = J7.f18427a;
        int i10 = -bigDecimal.scale();
        BigInteger unscaledValue = bigDecimal.unscaledValue();
        while (true) {
            if (unscaledValue.compareTo(J7.f18427a) <= 0 && unscaledValue.compareTo(J7.f18428b) >= 0) {
                xc.k a10 = xc.q.a(Long.valueOf(unscaledValue.longValue()), Integer.valueOf(i10));
                I7 i72 = new I7(((Number) a10.d()).intValue(), ((Number) a10.c()).longValue());
                C1439q8 c1439q8 = new C1439q8();
                c1439q8.f20425a = i72.f18376a;
                c1439q8.f20426b = i72.f18377b;
                return c1439q8;
            }
            unscaledValue = unscaledValue.divide(BigInteger.TEN);
            i10++;
        }
    }
}
