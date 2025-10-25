package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
/* renamed from: io.appmetrica.analytics.impl.pm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1428pm implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1204gm fromModel(C1403om c1403om) {
        C1204gm c1204gm = new C1204gm();
        c1204gm.f19693a = c1403om.f20316a;
        return c1204gm;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        return new C1403om(((C1204gm) obj).f19693a);
    }

    public final C1403om a(C1204gm c1204gm) {
        return new C1403om(c1204gm.f19693a);
    }
}
