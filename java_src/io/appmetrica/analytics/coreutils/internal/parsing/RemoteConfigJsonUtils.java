package io.appmetrica.analytics.coreutils.internal.parsing;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.m;
import org.json.JSONArray;
import org.json.JSONObject;
import rd.d;
/* loaded from: classes2.dex */
public final class RemoteConfigJsonUtils {
    public static final RemoteConfigJsonUtils INSTANCE = new RemoteConfigJsonUtils();

    private RemoteConfigJsonUtils() {
    }

    public static final boolean extractFeature(JSONObject jSONObject, String str, boolean z10) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        try {
            JSONObject optJSONObject3 = jSONObject.optJSONObject("features");
            if (optJSONObject3 != null && (optJSONObject = optJSONObject3.optJSONObject("list")) != null && (optJSONObject2 = optJSONObject.optJSONObject(str)) != null) {
                return optJSONObject2.optBoolean("enabled", z10);
            }
        } catch (Throwable unused) {
        }
        return z10;
    }

    public static final byte[][] extractHosts(JSONObject jSONObject, String str) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONArray optJSONArray;
        JSONObject optJSONObject3 = jSONObject.optJSONObject("query_hosts");
        if (optJSONObject3 != null && (optJSONObject = optJSONObject3.optJSONObject("list")) != null && (optJSONObject2 = optJSONObject.optJSONObject(str)) != null && (optJSONArray = optJSONObject2.optJSONArray("urls")) != null) {
            int length = optJSONArray.length();
            byte[][] bArr = new byte[length];
            for (int i10 = 0; i10 < length; i10++) {
                bArr[i10] = optJSONArray.optString(i10).getBytes(d.f29089b);
            }
            return bArr;
        }
        return new byte[0];
    }

    public static final long extractMillisFromSecondsOrDefault(JSONObject jSONObject, String str, long j10) {
        return extractMillisOrDefault(jSONObject, str, TimeUnit.SECONDS, j10);
    }

    public static final long extractMillisOrDefault(JSONObject jSONObject, String str, TimeUnit timeUnit, long j10) {
        return WrapUtils.getMillisOrDefault(JsonUtils.optLongOrNull(jSONObject, str), timeUnit, j10);
    }

    public static final String extractQuery(JSONObject jSONObject, String str) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        try {
            JSONObject optJSONObject3 = jSONObject.optJSONObject("queries");
            if (optJSONObject3 == null || (optJSONObject = optJSONObject3.optJSONObject("list")) == null || (optJSONObject2 = optJSONObject.optJSONObject(str)) == null) {
                return null;
            }
            RemoteConfigJsonUtils remoteConfigJsonUtils = INSTANCE;
            String optString = optJSONObject2.optString("url", "");
            remoteConfigJsonUtils.getClass();
            if (m.a(optString, "")) {
                return null;
            }
            return optString;
        } catch (Throwable unused) {
            return null;
        }
    }
}
