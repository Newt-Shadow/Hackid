package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0915v3;
import org.apache.tika.metadata.ClimateForcast;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.pa  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0779pa implements InterfaceC0850sa<C0915v3> {
    @Override // com.yandex.metrica.impl.ob.InterfaceC0850sa
    public JSONObject a(C0915v3 c0915v3) {
        C0915v3 c0915v32 = c0915v3;
        JSONObject jSONObject = new JSONObject();
        if (c0915v32 != null) {
            try {
                JSONArray jSONArray = new JSONArray();
                for (C0915v3.a aVar : c0915v32.a()) {
                    jSONArray.put(a(aVar));
                }
                jSONObject.putOpt("chosen", a(c0915v32.c())).putOpt("candidates", jSONArray);
            } catch (Throwable unused) {
            }
        }
        return jSONObject;
    }

    private JSONObject a(C0915v3.a aVar) {
        if (aVar == null) {
            return null;
        }
        return new JSONObject().putOpt("clids", Tl.e(aVar.b())).putOpt(ClimateForcast.SOURCE, aVar.a().a());
    }
}
