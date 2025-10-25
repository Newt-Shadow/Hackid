package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Ud;
import org.apache.tika.metadata.ClimateForcast;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.xa  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0970xa implements InterfaceC0850sa<Ud> {
    @Override // com.yandex.metrica.impl.ob.InterfaceC0850sa
    public JSONObject a(Ud ud2) {
        JSONObject put;
        Ud ud3 = ud2;
        JSONObject jSONObject = new JSONObject();
        if (ud3 != null) {
            try {
                JSONArray jSONArray = new JSONArray();
                for (Ud.a aVar : ud3.f11504b) {
                    if (aVar == null) {
                        put = null;
                    } else {
                        put = new JSONObject().putOpt("tracking_id", aVar.f11505a).put("additional_parameters", aVar.f11506b).put(ClimateForcast.SOURCE, aVar.f11507c.a());
                    }
                    jSONArray.put(put);
                }
                JSONObject put2 = jSONObject.put("candidates", jSONArray);
                C0509ee c0509ee = ud3.f11503a;
                put2.put("chosen", new JSONObject().putOpt("tracking_id", c0509ee.f12323a).put("additional_parameters", c0509ee.f12324b).put(ClimateForcast.SOURCE, c0509ee.f12327e.a()).put("auto_tracking_enabled", c0509ee.f12326d));
            } catch (Throwable unused) {
            }
        }
        return jSONObject;
    }
}
