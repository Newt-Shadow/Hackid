package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Xi {

    /* renamed from: a  reason: collision with root package name */
    private C0455ca f11807a;

    /* renamed from: b  reason: collision with root package name */
    private final Zi f11808b;

    public Xi() {
        this(new C0455ca(), new Zi());
    }

    public C0591hl a(JSONObject jSONObject, String str, If.v vVar) {
        C0455ca c0455ca = this.f11807a;
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject != null) {
            vVar.f10377a = optJSONObject.optBoolean("text_size_collecting", vVar.f10377a);
            vVar.f10378b = optJSONObject.optBoolean("relative_text_size_collecting", vVar.f10378b);
            vVar.f10379c = optJSONObject.optBoolean("text_visibility_collecting", vVar.f10379c);
            vVar.f10380d = optJSONObject.optBoolean("text_style_collecting", vVar.f10380d);
            vVar.f10385i = optJSONObject.optBoolean("info_collecting", vVar.f10385i);
            vVar.f10386j = optJSONObject.optBoolean("non_content_view_collecting", vVar.f10386j);
            vVar.f10387k = optJSONObject.optBoolean("text_length_collecting", vVar.f10387k);
            vVar.f10388l = optJSONObject.optBoolean("view_hierarchical", vVar.f10388l);
            vVar.f10390n = optJSONObject.optBoolean("ignore_filtered", vVar.f10390n);
            vVar.f10391o = optJSONObject.optBoolean("web_view_urls_collecting", vVar.f10391o);
            vVar.f10381e = optJSONObject.optInt("too_long_text_bound", vVar.f10381e);
            vVar.f10382f = optJSONObject.optInt("truncated_text_bound", vVar.f10382f);
            vVar.f10383g = optJSONObject.optInt("max_entities_count", vVar.f10383g);
            vVar.f10384h = optJSONObject.optInt("max_full_content_length", vVar.f10384h);
            vVar.f10392p = optJSONObject.optInt("web_view_url_limit", vVar.f10392p);
            vVar.f10389m = this.f11808b.a(optJSONObject.optJSONArray("filters"));
        }
        return c0455ca.toModel(vVar);
    }

    Xi(C0455ca c0455ca, Zi zi) {
        this.f11807a = c0455ca;
        this.f11808b = zi;
    }
}
