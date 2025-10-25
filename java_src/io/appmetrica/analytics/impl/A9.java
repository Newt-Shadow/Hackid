package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
/* loaded from: classes2.dex */
public final class A9 implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1639y9 fromModel(C1664z9 c1664z9) {
        C1639y9 c1639y9 = new C1639y9();
        String str = c1664z9.f21036a;
        if (str != null) {
            c1639y9.f20981a = str.getBytes();
        }
        return c1639y9;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1664z9 toModel(C1639y9 c1639y9) {
        return new C1664z9(new String(c1639y9.f20981a));
    }
}
