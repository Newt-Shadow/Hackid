package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
/* loaded from: classes2.dex */
public final class Z implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final M fromModel(X x10) {
        M m10 = new M();
        m10.f21383a = x10.f21406a;
        m10.f21384b = x10.f21407b;
        return m10;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        M m10 = (M) obj;
        return new X(m10.f21383a, m10.f21384b);
    }

    public final X a(M m10) {
        return new X(m10.f21383a, m10.f21384b);
    }
}
