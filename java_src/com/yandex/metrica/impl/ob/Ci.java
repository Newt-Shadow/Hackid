package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import org.json.JSONObject;
/* loaded from: classes2.dex */
class Ci {

    /* renamed from: a  reason: collision with root package name */
    private final C0873t9 f9859a;

    public Ci() {
        this(new C0873t9());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Ui ui, JSONObject jSONObject) {
        C0873t9 c0873t9 = this.f9859a;
        If.b bVar = new If.b();
        JSONObject optJSONObject = jSONObject.optJSONObject("auto_inapp_collecting");
        if (optJSONObject != null) {
            bVar.f10261a = optJSONObject.optInt("send_frequency_seconds", bVar.f10261a);
            bVar.f10262b = optJSONObject.optInt("first_collecting_inapp_max_age_seconds", bVar.f10262b);
        }
        ui.a(c0873t9.toModel(bVar));
    }

    Ci(C0873t9 c0873t9) {
        this.f9859a = c0873t9;
    }
}
