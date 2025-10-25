package com.yandex.metrica.impl.ob;

import android.util.Base64;
import org.json.JSONObject;
/* loaded from: classes2.dex */
class I7 {

    /* renamed from: a  reason: collision with root package name */
    private String f10222a;

    /* renamed from: b  reason: collision with root package name */
    private String f10223b;

    public void a(String str) {
        this.f10222a = str;
    }

    public void b(String str) {
        this.f10223b = str;
    }

    public String a() {
        try {
            JSONObject jSONObject = new JSONObject();
            String str = this.f10222a;
            if (str == null) {
                str = "";
            }
            return Base64.encodeToString(jSONObject.put("arg_ee", str).put("arg_hv", this.f10223b).toString().getBytes(), 0);
        } catch (Throwable unused) {
            return "";
        }
    }
}
