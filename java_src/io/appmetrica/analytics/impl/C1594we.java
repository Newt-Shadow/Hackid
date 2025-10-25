package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
/* renamed from: io.appmetrica.analytics.impl.we  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1594we implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1179fm fromModel(C1569ve c1569ve) {
        C1179fm c1179fm = new C1179fm();
        c1179fm.f19653a = c1569ve.f20805a;
        c1179fm.f19654b = c1569ve.f20806b;
        return c1179fm;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        C1179fm c1179fm = (C1179fm) obj;
        return new C1569ve(c1179fm.f19653a, c1179fm.f19654b);
    }

    public final C1569ve a(C1179fm c1179fm) {
        return new C1569ve(c1179fm.f19653a, c1179fm.f19654b);
    }
}
