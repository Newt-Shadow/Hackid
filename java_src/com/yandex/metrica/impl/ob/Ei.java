package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Tl;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Ei {

    /* renamed from: a  reason: collision with root package name */
    private final C1017z9 f10021a;

    public Ei() {
        this(new C1017z9());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Ui ui, Tl.a aVar) {
        JSONArray optJSONArray;
        JSONObject optJSONObject = aVar.optJSONObject("diagnostics");
        if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("functionalities")) != null) {
            C0803qa c0803qa = null;
            C0803qa c0803qa2 = null;
            C0803qa c0803qa3 = null;
            for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                try {
                    JSONObject jSONObject = optJSONArray.getJSONObject(i10);
                    String string = jSONObject.getString("tag");
                    C1017z9 c1017z9 = this.f10021a;
                    If.e eVar = new If.e();
                    eVar.f10270a = jSONObject.getLong("expiration_timestamp");
                    eVar.f10271b = jSONObject.optInt("interval", eVar.f10271b);
                    C0803qa model = c1017z9.toModel(eVar);
                    if ("activation".equals(string)) {
                        c0803qa = model;
                    } else if ("clids_info".equals(string)) {
                        c0803qa3 = model;
                    } else if ("preload_info".equals(string)) {
                        c0803qa2 = model;
                    }
                } catch (Throwable unused) {
                }
            }
            ui.a(new C0826ra(c0803qa, c0803qa3, c0803qa2));
        }
    }

    Ei(C1017z9 c1017z9) {
        this.f10021a = c1017z9;
    }
}
