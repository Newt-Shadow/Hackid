package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
/* loaded from: classes2.dex */
public final class Fe implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final byte[] fromModel(String str) {
        if (kotlin.jvm.internal.m.a("native", str)) {
            str = "JVM";
        }
        return str.getBytes(rd.d.f29089b);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        byte[] bArr = (byte[]) obj;
        throw new UnsupportedOperationException();
    }

    public final String a(byte[] bArr) {
        throw new UnsupportedOperationException();
    }
}
