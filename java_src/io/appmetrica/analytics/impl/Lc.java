package io.appmetrica.analytics.impl;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Lc {
    public static final M9 a(Lc lc2, V9 v92, Map map) {
        int i10;
        int r10;
        int b10;
        int b11;
        Object value;
        lc2.getClass();
        M9 m92 = new M9();
        switch (v92.ordinal()) {
            case 0:
                i10 = 0;
                break;
            case 1:
                i10 = 1;
                break;
            case 2:
                i10 = 2;
                break;
            case 3:
                i10 = 3;
                break;
            case 4:
                i10 = 4;
                break;
            case 5:
                i10 = 5;
                break;
            case 6:
                i10 = 6;
                break;
            default:
                throw new xc.i();
        }
        m92.f18587a = i10;
        Mc.f18595b.getClass();
        Set<Map.Entry> entrySet = map.entrySet();
        r10 = yc.p.r(entrySet, 10);
        b10 = yc.g0.b(r10);
        b11 = od.i.b(b10, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(b11);
        for (Map.Entry entry : entrySet) {
            Object key = entry.getKey();
            if (entry.getValue() instanceof Number) {
                Object value2 = entry.getValue();
                if (value2 != null) {
                    double doubleValue = ((Number) value2).doubleValue();
                    if (Double.isInfinite(doubleValue) || Double.isNaN(doubleValue)) {
                        value = null;
                        xc.k a10 = xc.q.a(key, value);
                        linkedHashMap.put(a10.c(), a10.d());
                    }
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Number");
                }
            }
            value = entry.getValue();
            xc.k a102 = xc.q.a(key, value);
            linkedHashMap.put(a102.c(), a102.d());
        }
        String jSONObject = new JSONObject(linkedHashMap).toString();
        if (jSONObject != null) {
            m92.f18588b = jSONObject.getBytes(rd.d.f29089b);
        }
        return m92;
    }
}
