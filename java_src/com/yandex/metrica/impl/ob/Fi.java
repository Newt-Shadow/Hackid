package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Fi {

    /* renamed from: a  reason: collision with root package name */
    private final B9 f10092a;

    public Fi(B9 b92) {
        this.f10092a = b92;
    }

    public final void a(Ui ui, JSONObject jSONObject) {
        If.g gVar = new If.g();
        JSONObject optJSONObject = jSONObject.optJSONObject("easy_collecting");
        if (optJSONObject != null) {
            gVar.f10275a = optJSONObject.optLong("first_delay_seconds", gVar.f10275a);
        }
        ui.a(this.f10092a.toModel(gVar));
    }

    public Fi() {
        this(new B9());
    }
}
