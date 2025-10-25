package io.appmetrica.analytics.impl;

import android.util.Base64;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.y0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1630y0 {
    public static String a(C1605x0 c1605x0) {
        try {
            return Base64.encodeToString(new JSONObject().put("apiKey", c1605x0.f20891a).put("packageName", c1605x0.f20892b).put("reporterType", c1605x0.f20893c.getStringValue()).put("processID", c1605x0.f20894d).put("processSessionID", c1605x0.f20895e).put("errorEnvironment", c1605x0.f20896f).toString().getBytes(rd.d.f29089b), 0);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static C1605x0 a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(new String(Base64.decode(str, 0), rd.d.f29089b));
            return new C1605x0(jSONObject.getString("apiKey"), jSONObject.getString("packageName"), CounterConfigurationReporterType.Companion.fromStringValue(jSONObject.getString("reporterType")), jSONObject.getInt("processID"), jSONObject.getString("processSessionID"), JsonUtils.optStringOrNull(jSONObject, "errorEnvironment"));
        } catch (Throwable unused) {
            return null;
        }
    }
}
