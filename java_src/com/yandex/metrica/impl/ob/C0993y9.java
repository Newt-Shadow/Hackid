package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.If;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.y9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0993y9 implements Converter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.d[] fromModel(Map<String, ? extends List<String>> map) {
        int size = map.size();
        If.d[] dVarArr = new If.d[size];
        for (int i10 = 0; i10 < size; i10++) {
            dVarArr[i10] = new If.d();
        }
        int i11 = 0;
        for (Object obj : map.entrySet()) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                yc.o.q();
            }
            Map.Entry entry = (Map.Entry) obj;
            dVarArr[i11].f10268a = (String) entry.getKey();
            If.d dVar = dVarArr[i11];
            Object[] array = ((Collection) entry.getValue()).toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            dVar.f10269b = (String[]) array;
            i11 = i12;
        }
        return dVarArr;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Map<String, List<String>> toModel(If.d[] dVarArr) {
        int b10;
        int b11;
        List Q;
        b10 = yc.g0.b(dVarArr.length);
        b11 = od.i.b(b10, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(b11);
        for (If.d dVar : dVarArr) {
            String str = dVar.f10268a;
            String[] strArr = dVar.f10269b;
            kotlin.jvm.internal.m.d(strArr, "it.hosts");
            Q = yc.k.Q(strArr);
            xc.k a10 = xc.q.a(str, Q);
            linkedHashMap.put(a10.c(), a10.d());
        }
        return linkedHashMap;
    }
}
