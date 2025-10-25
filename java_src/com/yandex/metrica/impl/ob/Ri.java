package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Tl;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Ri {

    /* renamed from: a  reason: collision with root package name */
    private final U9 f11222a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ri() {
        this(new U9());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Ui ui, Tl.a aVar) {
        If.p pVar = new If.p();
        JSONObject optJSONObject = aVar.optJSONObject("sdk_list");
        if (optJSONObject != null) {
            Long a10 = Tl.a(optJSONObject, "min_collecting_interval_seconds", (Long) null);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            pVar.f10357a = Tl.a(a10, timeUnit, pVar.f10357a);
            pVar.f10358b = Tl.a(Tl.a(optJSONObject, "min_first_collecting_delay_seconds", (Long) null), timeUnit, pVar.f10358b);
            pVar.f10359c = Tl.a(Tl.a(optJSONObject, "min_collecting_delay_after_launch_seconds", (Long) null), timeUnit, pVar.f10359c);
            pVar.f10360d = Tl.a(Tl.a(optJSONObject, "min_request_retry_interval_seconds", (Long) null), timeUnit, pVar.f10360d);
        }
        ui.a(this.f11222a.toModel(pVar));
    }

    Ri(U9 u92) {
        this.f11222a = u92;
    }
}
