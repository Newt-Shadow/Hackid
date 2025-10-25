package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.g6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0551g6 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Gf fromModel(Map<String, byte[]> map) {
        Gf gf2 = new Gf();
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            Hf hf2 = new Hf();
            String key = entry.getKey();
            Charset charset = rd.d.f29089b;
            if (key != null) {
                byte[] bytes = key.getBytes(charset);
                kotlin.jvm.internal.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
                hf2.f10205a = bytes;
                hf2.f10206b = entry.getValue();
                arrayList.add(hf2);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
        }
        Object[] array = arrayList.toArray(new Hf[0]);
        if (array != null) {
            gf2.f10129a = (Hf[]) array;
            return gf2;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Map<String, byte[]> toModel(Gf gf2) {
        int b10;
        int b11;
        Hf[] hfArr = gf2.f10129a;
        kotlin.jvm.internal.m.d(hfArr, "input.extras");
        b10 = yc.g0.b(hfArr.length);
        b11 = od.i.b(b10, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(b11);
        for (Hf hf2 : hfArr) {
            byte[] bArr = hf2.f10205a;
            kotlin.jvm.internal.m.d(bArr, "it.key");
            xc.k a10 = xc.q.a(new String(bArr, rd.d.f29089b), hf2.f10206b);
            linkedHashMap.put(a10.c(), a10.d());
        }
        return linkedHashMap;
    }
}
