package io.appmetrica.analytics.impl;

import android.util.Base64;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class co {

    /* renamed from: a  reason: collision with root package name */
    public final eo f19494a;

    public co(Xe xe2, C1366na c1366na) {
        this.f19494a = new eo(xe2, c1366na, new fo() { // from class: io.appmetrica.analytics.impl.lp
            @Override // io.appmetrica.analytics.impl.fo
            public final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
                return co.a(jSONObject, jSONObject2);
            }
        });
    }

    public static final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("device_id", JsonUtils.optStringOrNullable(jSONObject2, "device_id", JsonUtils.optStringOrNull(jSONObject, "device_id")));
        jSONObject3.put("device_id_hash", JsonUtils.optStringOrNullable(jSONObject2, "device_id_hash", JsonUtils.optStringOrNull(jSONObject, "device_id_hash")));
        jSONObject3.put("referrer", JsonUtils.optStringOrNullable(jSONObject2, "referrer", JsonUtils.optStringOrNull(jSONObject, "referrer")));
        jSONObject3.put("referrer_checked", JsonUtils.optBooleanOrNullable(jSONObject2, "referrer_checked", JsonUtils.optBooleanOrNullable(jSONObject, "referrer_checked", Boolean.FALSE)));
        jSONObject3.put("last_migration_api_level", AbstractC1491sb.a(jSONObject2, "last_migration_api_level", AbstractC1491sb.a(jSONObject, "last_migration_api_level", -1)));
        return jSONObject3;
    }

    public final synchronized void b(String str) {
        eo eoVar = this.f19494a;
        eoVar.a(eoVar.a().put("device_id_hash", str));
    }

    public final synchronized boolean c() {
        return this.f19494a.a().optBoolean("referrer_checked", false);
    }

    public final synchronized void d() {
        eo eoVar = this.f19494a;
        eoVar.a(eoVar.a().put("referrer_checked", true));
    }

    public final synchronized C1322lg b() {
        byte[] decode;
        C1322lg c1322lg;
        String optStringOrNull = JsonUtils.optStringOrNull(this.f19494a.a(), "referrer");
        if (optStringOrNull != null) {
            try {
                decode = Base64.decode(optStringOrNull.getBytes(rd.d.f29089b), 0);
            } catch (Throwable unused) {
            }
            if (decode != null && decode.length != 0) {
                c1322lg = new C1322lg(decode);
            }
        }
        c1322lg = null;
        return c1322lg;
    }

    public final synchronized void a(String str) {
        eo eoVar = this.f19494a;
        eoVar.a(eoVar.a().put("device_id", str));
    }

    public final synchronized String a() {
        return JsonUtils.optStringOrNull(this.f19494a.a(), "device_id_hash");
    }

    public final synchronized void a(C1322lg c1322lg) {
        eo eoVar = this.f19494a;
        eoVar.a(eoVar.a().put("referrer", c1322lg != null ? new String(Base64.encode(c1322lg.a(), 0), rd.d.f29089b) : null));
    }
}
