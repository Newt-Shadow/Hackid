package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Di {

    /* renamed from: a  reason: collision with root package name */
    private final C0945w9 f9923a;

    public Di() {
        this(new C0945w9());
    }

    public Ph a(JSONObject jSONObject) {
        If.c cVar = new If.c();
        JSONObject optJSONObject = jSONObject.optJSONObject("cache_control");
        if (optJSONObject != null) {
            Long a10 = Tl.a(optJSONObject, "cells_around_ttl", (Long) null);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            cVar.f10263a = Tl.a(a10, timeUnit, cVar.f10263a);
            cVar.f10264b = Tl.a(Tl.a(optJSONObject, "wifi_networks_ttl", (Long) null), timeUnit, cVar.f10264b);
            cVar.f10265c = Tl.a(Tl.a(optJSONObject, "last_known_location_ttl", (Long) null), timeUnit, cVar.f10265c);
            cVar.f10266d = Tl.a(Tl.a(optJSONObject, "net_interfaces_ttl", (Long) null), timeUnit, cVar.f10266d);
        }
        return this.f9923a.toModel(cVar);
    }

    Di(C0945w9 c0945w9) {
        this.f9923a = c0945w9;
    }
}
