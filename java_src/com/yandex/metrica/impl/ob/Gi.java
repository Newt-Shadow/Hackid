package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Gi {

    /* renamed from: a  reason: collision with root package name */
    private final C9 f10133a;

    public Gi(C9 c92) {
        this.f10133a = c92;
    }

    public final void a(Ui ui, JSONObject jSONObject) {
        If.h hVar = new If.h();
        JSONObject optJSONObject = jSONObject.optJSONObject("egress");
        if (optJSONObject != null) {
            hVar.f10276a = optJSONObject.optString("url", hVar.f10276a);
            hVar.f10277b = optJSONObject.optInt("repeated_delay", hVar.f10277b);
            hVar.f10278c = optJSONObject.optInt("random_delay_window", hVar.f10278c);
            hVar.f10279d = optJSONObject.optBoolean("background_allowed", hVar.f10279d);
            hVar.f10280e = optJSONObject.optBoolean("diagnostic_enabled", hVar.f10280e);
        }
        ui.a(this.f10133a.toModel(hVar));
    }

    public Gi() {
        this(new C9());
    }
}
