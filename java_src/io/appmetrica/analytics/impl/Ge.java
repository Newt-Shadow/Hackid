package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import java.nio.charset.Charset;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Ge implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1238i6[] fromModel(Map<String, String> map) {
        int size = map.size();
        C1238i6[] c1238i6Arr = new C1238i6[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            c1238i6Arr[i11] = new C1238i6();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            C1238i6 c1238i6 = c1238i6Arr[i10];
            Charset charset = rd.d.f29089b;
            c1238i6.f19777a = entry.getKey().getBytes(charset);
            c1238i6Arr[i10].f19778b = entry.getValue().getBytes(charset);
            i10++;
        }
        return c1238i6Arr;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        C1238i6[] c1238i6Arr = (C1238i6[]) obj;
        throw new UnsupportedOperationException();
    }

    public final Map<String, String> a(C1238i6[] c1238i6Arr) {
        throw new UnsupportedOperationException();
    }
}
