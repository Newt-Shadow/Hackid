package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
/* renamed from: io.appmetrica.analytics.impl.x3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1608x3 implements ProtobufConverter {
    public final C1054am a(C1558v3 c1558v3) {
        C1054am c1054am = new C1054am();
        c1054am.f19406a = c1558v3.f20773a;
        return c1054am;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        C1054am c1054am = new C1054am();
        c1054am.f19406a = ((C1558v3) obj).f20773a;
        return c1054am;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        return new C1558v3(((C1054am) obj).f19406a);
    }

    public final C1558v3 a(C1054am c1054am) {
        return new C1558v3(c1054am.f19406a);
    }
}
