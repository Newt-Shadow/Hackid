package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class S8 implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final byte[] fromModel(Map<String, byte[]> map) {
        U8 u82 = new U8();
        T8[] t8Arr = new T8[map.size()];
        int i10 = 0;
        for (Object obj : map.entrySet()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                yc.o.q();
            }
            Map.Entry entry = (Map.Entry) obj;
            T8 t82 = new T8();
            t82.f18964a = (String) entry.getKey();
            t82.f18965b = (byte[]) entry.getValue();
            t8Arr[i10] = t82;
            i10 = i11;
        }
        u82.f19040a = t8Arr;
        return MessageNano.toByteArray(u82);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Map<String, byte[]> toModel(byte[] bArr) {
        int b10;
        int b11;
        T8[] t8Arr = ((U8) MessageNano.mergeFrom(new U8(), bArr)).f19040a;
        b10 = yc.g0.b(t8Arr.length);
        b11 = od.i.b(b10, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(b11);
        for (T8 t82 : t8Arr) {
            xc.k a10 = xc.q.a(t82.f18964a, t82.f18965b);
            linkedHashMap.put(a10.c(), a10.d());
        }
        return linkedHashMap;
    }
}
