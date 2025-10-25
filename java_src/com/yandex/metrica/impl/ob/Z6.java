package com.yandex.metrica.impl.ob;

import android.util.Base64;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.J;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Z6 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f11862a;

    /* renamed from: b  reason: collision with root package name */
    private final String f11863b;

    /* renamed from: c  reason: collision with root package name */
    private final int f11864c;

    /* renamed from: d  reason: collision with root package name */
    private final HashMap<J.a, Integer> f11865d;

    /* renamed from: e  reason: collision with root package name */
    private final String f11866e;

    /* renamed from: f  reason: collision with root package name */
    private final Integer f11867f;

    /* renamed from: g  reason: collision with root package name */
    private final String f11868g;

    /* renamed from: h  reason: collision with root package name */
    private final String f11869h;

    /* renamed from: i  reason: collision with root package name */
    private final CounterConfiguration.b f11870i;

    /* renamed from: j  reason: collision with root package name */
    private final String f11871j;

    public Z6(String str) {
        JSONObject jSONObject = new JSONObject(str);
        JSONObject jSONObject2 = jSONObject.getJSONObject("event");
        this.f11862a = Base64.decode(jSONObject2.getString("jvm_crash"), 0);
        this.f11863b = jSONObject2.getString(Constants.NAME);
        this.f11864c = jSONObject2.getInt("bytes_truncated");
        this.f11871j = Tl.b(jSONObject2, "environment");
        String optString = jSONObject2.optString("trimmed_fields");
        this.f11865d = new HashMap<>();
        if (optString != null) {
            try {
                HashMap<String, String> d10 = Tl.d(optString);
                if (d10 != null) {
                    for (Map.Entry<String, String> entry : d10.entrySet()) {
                        this.f11865d.put(J.a.valueOf(entry.getKey()), Integer.valueOf(Integer.parseInt(entry.getValue())));
                    }
                }
            } catch (Throwable unused) {
            }
        }
        JSONObject jSONObject3 = jSONObject.getJSONObject("process_configuration");
        this.f11866e = jSONObject3.getString("package_name");
        this.f11867f = Integer.valueOf(jSONObject3.getInt("pid"));
        this.f11868g = jSONObject3.getString("psid");
        JSONObject jSONObject4 = jSONObject.getJSONObject("reporter_configuration");
        this.f11869h = jSONObject4.getString("api_key");
        this.f11870i = a(jSONObject4);
    }

    public String a() {
        return this.f11869h;
    }

    public int b() {
        return this.f11864c;
    }

    public byte[] c() {
        return this.f11862a;
    }

    public String d() {
        return this.f11871j;
    }

    public String e() {
        return this.f11863b;
    }

    public String f() {
        return this.f11866e;
    }

    public Integer g() {
        return this.f11867f;
    }

    public String h() {
        return this.f11868g;
    }

    public CounterConfiguration.b i() {
        return this.f11870i;
    }

    public HashMap<J.a, Integer> j() {
        return this.f11865d;
    }

    public String k() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<J.a, Integer> entry : this.f11865d.entrySet()) {
            hashMap.put(entry.getKey().name(), entry.getValue());
        }
        return new JSONObject().put("process_configuration", new JSONObject().put("pid", this.f11867f).put("psid", this.f11868g).put("package_name", this.f11866e)).put("reporter_configuration", new JSONObject().put("api_key", this.f11869h).put("reporter_type", this.f11870i.b())).put("event", new JSONObject().put("jvm_crash", Base64.encodeToString(this.f11862a, 0)).put(Constants.NAME, this.f11863b).put("bytes_truncated", this.f11864c).put("trimmed_fields", Tl.g(hashMap)).putOpt("environment", this.f11871j)).toString();
    }

    @Deprecated
    private CounterConfiguration.b a(JSONObject jSONObject) {
        if (jSONObject.has("reporter_type")) {
            return CounterConfiguration.b.a(jSONObject.getString("reporter_type"));
        }
        if (jSONObject.getBoolean("is_commutation")) {
            return CounterConfiguration.b.COMMUTATION;
        }
        return CounterConfiguration.b.MAIN;
    }

    public Z6(C0445c0 c0445c0, C1011z3 c1011z3, HashMap<J.a, Integer> hashMap) {
        this.f11862a = c0445c0.r();
        this.f11863b = c0445c0.g();
        this.f11864c = c0445c0.d();
        if (hashMap != null) {
            this.f11865d = hashMap;
        } else {
            this.f11865d = new HashMap<>();
        }
        A3 a10 = c1011z3.a();
        this.f11866e = a10.f();
        this.f11867f = a10.g();
        this.f11868g = a10.h();
        CounterConfiguration b10 = c1011z3.b();
        this.f11869h = b10.b();
        this.f11870i = b10.M();
        this.f11871j = c0445c0.h();
    }
}
