package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import java.nio.charset.Charset;
import java.util.Map;
/* loaded from: classes2.dex */
public final class R6 implements Converter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0535ff[] fromModel(Map<String, String> map) {
        int size = map.size();
        C0535ff[] c0535ffArr = new C0535ff[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            c0535ffArr[i11] = new C0535ff();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            C0535ff c0535ff = c0535ffArr[i10];
            String key = entry.getKey();
            Charset charset = rd.d.f29089b;
            if (key != null) {
                byte[] bytes = key.getBytes(charset);
                kotlin.jvm.internal.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
                c0535ff.f12416a = bytes;
                C0535ff c0535ff2 = c0535ffArr[i10];
                String value = entry.getValue();
                if (value != null) {
                    byte[] bytes2 = value.getBytes(charset);
                    kotlin.jvm.internal.m.d(bytes2, "(this as java.lang.String).getBytes(charset)");
                    c0535ff2.f12417b = bytes2;
                    i10++;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
        }
        return c0535ffArr;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0535ff[] c0535ffArr = (C0535ff[]) obj;
        throw new UnsupportedOperationException();
    }
}
