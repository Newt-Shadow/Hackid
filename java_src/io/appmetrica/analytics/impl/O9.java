package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
/* loaded from: classes2.dex */
public final class O9 implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1104cm fromModel(N9 n92) {
        C1104cm c1104cm = new C1104cm();
        if (n92 != null) {
            c1104cm.f19487a = n92.f18638a;
        }
        return c1104cm;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        return new N9(((C1104cm) obj).f19487a);
    }

    public final N9 a(C1104cm c1104cm) {
        return new N9(c1104cm.f19487a);
    }
}
