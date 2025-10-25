package y7;

import org.json.JSONObject;
import q7.i0;
import y7.d;
/* loaded from: classes.dex */
class m implements i {
    private static d.a b(JSONObject jSONObject) {
        return new d.a(jSONObject.optBoolean("collect_reports", true), jSONObject.optBoolean("collect_anrs", false), jSONObject.optBoolean("collect_build_ids", false));
    }

    private static d.b c(JSONObject jSONObject) {
        return new d.b(jSONObject.optInt("max_custom_exception_events", 8), 4);
    }

    private static long d(i0 i0Var, long j10, JSONObject jSONObject) {
        if (jSONObject.has("expires_at")) {
            return jSONObject.optLong("expires_at");
        }
        return i0Var.a() + (j10 * 1000);
    }

    @Override // y7.i
    public d a(i0 i0Var, JSONObject jSONObject) {
        d.b c10;
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        double optDouble = jSONObject.optDouble("on_demand_upload_rate_per_minute", 10.0d);
        double optDouble2 = jSONObject.optDouble("on_demand_backoff_base", 1.2d);
        int optInt3 = jSONObject.optInt("on_demand_backoff_step_duration_seconds", 60);
        if (jSONObject.has("session")) {
            c10 = c(jSONObject.getJSONObject("session"));
        } else {
            c10 = c(new JSONObject());
        }
        return new d(d(i0Var, optInt2, jSONObject), c10, b(jSONObject.getJSONObject("features")), optInt, optInt2, optDouble, optDouble2, optInt3);
    }
}
