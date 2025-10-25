package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class H6 implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1079bm[] fromModel(Map<String, ? extends List<String>> map) {
        C1079bm[] c1079bmArr = new C1079bm[map.size()];
        int i10 = 0;
        for (Object obj : map.entrySet()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                yc.o.q();
            }
            Map.Entry entry = (Map.Entry) obj;
            C1079bm c1079bm = new C1079bm();
            c1079bm.f19442a = (String) entry.getKey();
            Object[] array = ((Collection) entry.getValue()).toArray(new String[0]);
            if (array != null) {
                c1079bm.f19443b = (String[]) array;
                c1079bmArr[i10] = c1079bm;
                i10 = i11;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
        }
        return c1079bmArr;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Map<String, List<String>> toModel(C1079bm[] c1079bmArr) {
        int b10;
        int b11;
        List Q;
        b10 = yc.g0.b(c1079bmArr.length);
        b11 = od.i.b(b10, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(b11);
        for (C1079bm c1079bm : c1079bmArr) {
            String str = c1079bm.f19442a;
            Q = yc.k.Q(c1079bm.f19443b);
            xc.k a10 = xc.q.a(str, Q);
            linkedHashMap.put(a10.c(), a10.d());
        }
        return linkedHashMap;
    }
}
