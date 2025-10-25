package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0837rl;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Il extends C0837rl {

    /* renamed from: h  reason: collision with root package name */
    public volatile String f10448h;

    /* renamed from: i  reason: collision with root package name */
    public volatile String f10449i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Il(String str, String str2, C0837rl.b bVar, int i10, boolean z10) {
        super(str, str2, null, i10, z10, C0837rl.c.VIEW, C0837rl.a.WEBVIEW);
        this.f10448h = null;
        this.f10449i = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.yandex.metrica.impl.ob.C0837rl
    public boolean a() {
        return true;
    }

    @Override // com.yandex.metrica.impl.ob.C0837rl
    public String toString() {
        return "WebViewElement{url='" + this.f10448h + "', originalUrl='" + this.f10449i + "', mClassName='" + this.f13534a + "', mId='" + this.f13535b + "', mParseFilterReason=" + this.f13536c + ", mDepth=" + this.f13537d + ", mListItem=" + this.f13538e + ", mViewType=" + this.f13539f + ", mClassType=" + this.f13540g + "} ";
    }

    @Override // com.yandex.metrica.impl.ob.C0837rl
    JSONArray a(C0591hl c0591hl) {
        JSONArray jSONArray = new JSONArray();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("t", "HTML");
            if (c0591hl.f12567j) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("u", A2.a(this.f10448h, c0591hl.f12572o));
                jSONObject2.putOpt("ou", A2.a(this.f10449i, c0591hl.f12572o));
                if (jSONObject2.length() > 0) {
                    jSONObject.put("i", jSONObject2);
                }
            }
            jSONArray.put(jSONObject);
        } catch (Throwable unused) {
        }
        return jSONArray;
    }
}
