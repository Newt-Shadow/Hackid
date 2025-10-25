package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Yi {

    /* renamed from: a  reason: collision with root package name */
    private final C0480da f11848a;

    /* renamed from: b  reason: collision with root package name */
    private final Zi f11849b;

    public Yi() {
        this(new C0480da(), new Zi());
    }

    public void a(Ui ui, JSONObject jSONObject) {
        C0480da c0480da = this.f11848a;
        If.w wVar = new If.w();
        JSONObject optJSONObject = jSONObject.optJSONObject("ui_parsing");
        if (optJSONObject != null) {
            wVar.f10393a = optJSONObject.optInt("too_long_text_bound", wVar.f10393a);
            wVar.f10394b = optJSONObject.optInt("truncated_text_bound", wVar.f10394b);
            wVar.f10395c = optJSONObject.optInt("max_visited_children_in_level", wVar.f10395c);
            wVar.f10396d = Tl.a(Tl.a(optJSONObject, "after_create_timeout", (Long) null), TimeUnit.SECONDS, wVar.f10396d);
            wVar.f10397e = optJSONObject.optBoolean("relative_text_size_calculation", wVar.f10397e);
            wVar.f10398f = optJSONObject.optBoolean("error_reporting", wVar.f10398f);
            wVar.f10399g = optJSONObject.optBoolean("parsing_allowed_by_default", wVar.f10399g);
            wVar.f10400h = this.f11849b.a(optJSONObject.optJSONArray("filters"));
        }
        ui.a(c0480da.toModel(wVar));
    }

    Yi(C0480da c0480da, Zi zi) {
        this.f11848a = c0480da;
        this.f11849b = zi;
    }
}
