package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
/* renamed from: io.appmetrica.analytics.screenshot.impl.g  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1685g implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final K fromModel(C1683e c1683e) {
        K k10 = new K();
        k10.f21377a = c1683e.f21424a;
        return k10;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        return new C1683e(((K) obj).f21377a);
    }

    public final C1683e a(K k10) {
        return new C1683e(k10.f21377a);
    }
}
