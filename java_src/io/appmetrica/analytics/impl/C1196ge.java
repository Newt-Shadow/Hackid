package io.appmetrica.analytics.impl;

import java.lang.reflect.Field;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.ge  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1196ge {
    public static final M9 a(C1196ge c1196ge, V9 v92, Object obj) {
        int i10;
        Field[] fields;
        c1196ge.getClass();
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
        C1221he.f19736b.getClass();
        JSONObject jSONObject = new JSONObject();
        for (Field field : obj.getClass().getFields()) {
            try {
                jSONObject.put(field.getName(), field.get(obj));
            } catch (Throwable unused) {
            }
        }
        m92.f18588b = jSONObject.toString().getBytes(rd.d.f29089b);
        return m92;
    }
}
