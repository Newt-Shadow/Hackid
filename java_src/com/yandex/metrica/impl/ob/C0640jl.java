package com.yandex.metrica.impl.ob;

import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.jl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0640jl implements Jk {
    @Override // com.yandex.metrica.impl.ob.Jk
    public void a(JSONObject jSONObject, Object obj, String str) {
        try {
            jSONObject.put(str, obj);
        } catch (Throwable unused) {
        }
    }
}
