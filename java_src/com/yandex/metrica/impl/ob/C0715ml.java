package com.yandex.metrica.impl.ob;

import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.ml  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0715ml implements Jk {
    @Override // com.yandex.metrica.impl.ob.Jk
    public void a(JSONObject jSONObject, Object obj, String str) {
        try {
            jSONObject.getJSONArray("ssh").getJSONObject(0).put(str, obj);
        } catch (Throwable unused) {
        }
    }
}
