package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0906ui;
import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Tl;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Wi {

    /* renamed from: a  reason: collision with root package name */
    private static final If.u f11698a = new If.u();

    public C0906ui a(Tl.a aVar, String str) {
        C0906ui.a aVar2;
        JSONObject optJSONObject = aVar.optJSONObject(str);
        C0906ui.a aVar3 = null;
        if (optJSONObject == null) {
            return null;
        }
        JSONObject optJSONObject2 = optJSONObject.optJSONObject("cell");
        if (optJSONObject2 != null) {
            If.u uVar = f11698a;
            aVar2 = new C0906ui.a(optJSONObject2.optInt("refresh_event_count", uVar.f10375a), optJSONObject2.optLong("refresh_period_seconds", uVar.f10376b));
        } else {
            aVar2 = null;
        }
        JSONObject optJSONObject3 = optJSONObject.optJSONObject("wifi");
        if (optJSONObject3 != null) {
            If.u uVar2 = f11698a;
            aVar3 = new C0906ui.a(optJSONObject3.optInt("refresh_event_count", uVar2.f10375a), optJSONObject3.optLong("refresh_period_seconds", uVar2.f10376b));
        }
        return new C0906ui(aVar2, aVar3);
    }
}
