package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Sh;
import com.yandex.metrica.impl.ob.Tl;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Hi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Ui ui, Tl.a aVar) {
        If.i iVar = new If.i();
        try {
            Object jSONObject = new JSONObject();
            try {
                jSONObject = aVar.get("features");
            } catch (Throwable unused) {
            }
            JSONObject optJSONObject = ((JSONObject) jSONObject).optJSONObject("list");
            if (optJSONObject != null) {
                Sh sh = new Sh(new Sh.a().d(a(optJSONObject, "easy_collecting", iVar.f10281a)).e(a(optJSONObject, "egress", iVar.f10303w)).m(a(optJSONObject, "package_info", iVar.f10282b)).n(a(optJSONObject, "permissions_collecting", iVar.f10283c)).f(a(optJSONObject, "features_collecting", iVar.f10284d)).o(a(optJSONObject, "sdk_list", iVar.f10290j)).g(a(optJSONObject, "google_aid", iVar.f10285e)).q(a(optJSONObject, "throttling", iVar.f10298r)).v(a(optJSONObject, "wifi_around", iVar.f10286f)).w(a(optJSONObject, "wifi_connected", iVar.f10287g)).c(a(optJSONObject, "cells_around", iVar.f10288h)).p(a(optJSONObject, "sim_info", iVar.f10289i)).j(a(optJSONObject, "identity_light_collecting", iVar.f10291k)).l(a(optJSONObject, "location_collecting", iVar.f10292l)).k(a(optJSONObject, "lbs_collecting", iVar.f10293m)).h(a(optJSONObject, "gpl_collecting", iVar.f10294n)).t(a(optJSONObject, "ui_parsing", iVar.f10295o)).s(a(optJSONObject, "ui_event_sending", iVar.f10296p)).u(a(optJSONObject, "ui_raw_event_sending", iVar.f10296p)).r(a(optJSONObject, "ui_collecting_for_bridge", iVar.f10297q)).a(a(optJSONObject, "cell_additional_info", iVar.f10299s)).b(a(optJSONObject, "cell_additional_info_connected_only", iVar.f10300t)).i(a(optJSONObject, "huawei_oaid", iVar.f10302v)).a(optJSONObject.has("ssl_pinning") ? Boolean.valueOf(optJSONObject.getJSONObject("ssl_pinning").getBoolean("enabled")) : null));
                ui.a(a(optJSONObject, "socket", false));
                ui.a(sh);
            }
        } catch (Throwable unused2) {
        }
    }

    private boolean a(JSONObject jSONObject, String str, boolean z10) {
        Boolean valueOf = jSONObject.has(str) ? Boolean.valueOf(jSONObject.getJSONObject(str).getBoolean("enabled")) : null;
        Boolean valueOf2 = Boolean.valueOf(z10);
        if (valueOf == null) {
            valueOf = valueOf2;
        }
        return valueOf.booleanValue();
    }
}
