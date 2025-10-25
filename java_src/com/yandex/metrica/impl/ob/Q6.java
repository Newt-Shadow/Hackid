package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public final class Q6 implements Converter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public byte[] fromModel(String str) {
        if (kotlin.jvm.internal.m.a("native", str)) {
            str = "JVM";
        }
        Charset charset = rd.d.f29089b;
        if (str != null) {
            byte[] bytes = str.getBytes(charset);
            kotlin.jvm.internal.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
            return bytes;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        byte[] bArr = (byte[]) obj;
        throw new UnsupportedOperationException();
    }
}
