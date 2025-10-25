package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.vk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1575vk implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1625xk fromModel(Map<String, byte[]> map) {
        C1625xk c1625xk = new C1625xk();
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            C1650yk c1650yk = new C1650yk();
            c1650yk.f20995a = entry.getKey().getBytes(rd.d.f29089b);
            c1650yk.f20996b = entry.getValue();
            arrayList.add(c1650yk);
        }
        Object[] array = arrayList.toArray(new C1650yk[0]);
        if (array != null) {
            c1625xk.f20941a = (C1650yk[]) array;
            return c1625xk;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Map<String, byte[]> toModel(C1625xk c1625xk) {
        int b10;
        int b11;
        C1650yk[] c1650ykArr = c1625xk.f20941a;
        b10 = yc.g0.b(c1650ykArr.length);
        b11 = od.i.b(b10, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(b11);
        for (C1650yk c1650yk : c1650ykArr) {
            xc.k a10 = xc.q.a(new String(c1650yk.f20995a, rd.d.f29089b), c1650yk.f20996b);
            linkedHashMap.put(a10.c(), a10.d());
        }
        return linkedHashMap;
    }
}
