package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
/* renamed from: io.appmetrica.analytics.impl.tm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1527tm implements ProtobufConverter {
    public final C1229hm a(C1502sm c1502sm) {
        C1229hm c1229hm = new C1229hm();
        c1229hm.f19759a = c1502sm.f20610a;
        return c1229hm;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        C1229hm c1229hm = new C1229hm();
        c1229hm.f19759a = ((C1502sm) obj).f20610a;
        return c1229hm;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        return new C1502sm(((C1229hm) obj).f19759a);
    }

    public final C1502sm a(C1229hm c1229hm) {
        return new C1502sm(c1229hm.f19759a);
    }
}
