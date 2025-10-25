package io.appmetrica.analytics.impl;

import android.util.Base64;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.vb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1566vb {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f20793a;

    /* renamed from: b  reason: collision with root package name */
    public final String f20794b;

    /* renamed from: c  reason: collision with root package name */
    public final int f20795c;

    /* renamed from: d  reason: collision with root package name */
    public final HashMap f20796d;

    /* renamed from: e  reason: collision with root package name */
    public final String f20797e;

    /* renamed from: f  reason: collision with root package name */
    public final Integer f20798f;

    /* renamed from: g  reason: collision with root package name */
    public final String f20799g;

    /* renamed from: h  reason: collision with root package name */
    public final String f20800h;

    /* renamed from: i  reason: collision with root package name */
    public final CounterConfigurationReporterType f20801i;

    /* renamed from: j  reason: collision with root package name */
    public final String f20802j;

    public C1566vb(String str) {
        JSONObject jSONObject = new JSONObject(str);
        JSONObject jSONObject2 = jSONObject.getJSONObject("event");
        this.f20793a = Base64.decode(jSONObject2.getString("jvm_crash"), 0);
        this.f20794b = jSONObject2.getString(Constants.NAME);
        this.f20795c = jSONObject2.getInt("bytes_truncated");
        this.f20802j = JsonUtils.optStringOrNull(jSONObject2, "environment");
        String optString = jSONObject2.optString("trimmed_fields");
        this.f20796d = new HashMap();
        if (optString != null) {
            try {
                HashMap c10 = AbstractC1491sb.c(optString);
                if (c10 != null) {
                    for (Map.Entry entry : c10.entrySet()) {
                        this.f20796d.put(EnumC1111d4.valueOf((String) entry.getKey()), Integer.valueOf(Integer.parseInt((String) entry.getValue())));
                    }
                }
            } catch (Throwable unused) {
            }
        }
        JSONObject jSONObject3 = jSONObject.getJSONObject("process_configuration");
        this.f20797e = jSONObject3.getString("package_name");
        this.f20798f = Integer.valueOf(jSONObject3.getInt("pid"));
        this.f20799g = jSONObject3.getString("psid");
        JSONObject jSONObject4 = jSONObject.getJSONObject("reporter_configuration");
        this.f20800h = jSONObject4.getString("api_key");
        this.f20801i = a(jSONObject4);
    }

    public final String a() {
        return this.f20800h;
    }

    public final int b() {
        return this.f20795c;
    }

    public final byte[] c() {
        return this.f20793a;
    }

    public final String d() {
        return this.f20802j;
    }

    public final String e() {
        return this.f20794b;
    }

    public final String f() {
        return this.f20797e;
    }

    public final Integer g() {
        return this.f20798f;
    }

    public final String h() {
        return this.f20799g;
    }

    public final CounterConfigurationReporterType i() {
        return this.f20801i;
    }

    public final HashMap<EnumC1111d4, Integer> j() {
        return this.f20796d;
    }

    public final String k() {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.f20796d.entrySet()) {
            hashMap.put(((EnumC1111d4) entry.getKey()).name(), (Integer) entry.getValue());
        }
        return new JSONObject().put("process_configuration", new JSONObject().put("pid", this.f20798f).put("psid", this.f20799g).put("package_name", this.f20797e)).put("reporter_configuration", new JSONObject().put("api_key", this.f20800h).put("reporter_type", this.f20801i.getStringValue())).put("event", new JSONObject().put("jvm_crash", Base64.encodeToString(this.f20793a, 0)).put(Constants.NAME, this.f20794b).put("bytes_truncated", this.f20795c).put("trimmed_fields", AbstractC1491sb.b(hashMap)).putOpt("environment", this.f20802j)).toString();
    }

    public static CounterConfigurationReporterType a(JSONObject jSONObject) {
        if (jSONObject.has("reporter_type")) {
            return CounterConfigurationReporterType.fromStringValue(jSONObject.getString("reporter_type"));
        }
        return CounterConfigurationReporterType.MAIN;
    }

    public C1566vb(C1138e6 c1138e6, Z3 z32, HashMap<EnumC1111d4, Integer> hashMap) {
        this.f20793a = c1138e6.getValueBytes();
        this.f20794b = c1138e6.getName();
        this.f20795c = c1138e6.getBytesTruncated();
        if (hashMap != null) {
            this.f20796d = hashMap;
        } else {
            this.f20796d = new HashMap();
        }
        C1645yf a10 = z32.a();
        this.f20797e = a10.f();
        this.f20798f = a10.g();
        this.f20799g = a10.h();
        CounterConfiguration b10 = z32.b();
        this.f20800h = b10.getApiKey();
        this.f20801i = b10.getReporterType();
        this.f20802j = c1138e6.f();
    }
}
