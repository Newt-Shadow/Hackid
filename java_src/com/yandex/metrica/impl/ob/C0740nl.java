package com.yandex.metrica.impl.ob;

import android.app.Activity;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.nl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0740nl implements Kk {
    @Override // com.yandex.metrica.impl.ob.Kk
    public JSONObject a(Activity activity, long j10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ssh", new JSONArray().put(new JSONObject().put("si", new JSONObject().put("cn", activity.getClass().getName())).put("cid", j10)));
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
