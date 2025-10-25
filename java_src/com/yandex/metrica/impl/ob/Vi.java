package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Vi {

    /* renamed from: a  reason: collision with root package name */
    private final Y9 f11665a;

    public Vi(Y9 y92) {
        this.f11665a = y92;
    }

    public final void a(Ui ui, JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("startup_update");
        If.r rVar = new If.r();
        Integer it = Tl.a(optJSONObject, "interval_seconds", (Integer) null);
        if (it != null) {
            kotlin.jvm.internal.m.d(it, "it");
            rVar.f10371a = it.intValue();
        }
        ui.a(this.f11665a.toModel(rVar));
    }

    public Vi() {
        this(new Y9());
    }
}
