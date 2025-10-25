package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.do  reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo {

    /* renamed from: a  reason: collision with root package name */
    public final eo f19546a;

    public Cdo(Ue ue2, ho hoVar, String str) {
        this.f19546a = new eo(ue2, hoVar, new fo() { // from class: io.appmetrica.analytics.impl.op
            @Override // io.appmetrica.analytics.impl.fo
            public final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
                return Cdo.a(jSONObject, jSONObject2);
            }
        });
    }

    public static final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3 = new JSONObject();
        Boolean bool = Boolean.FALSE;
        jSONObject3.put("first_event_done", JsonUtils.optBooleanOrNullable(jSONObject2, "first_event_done", JsonUtils.optBooleanOrNullable(jSONObject, "first_event_done", bool)));
        jSONObject3.put("init_event_done", JsonUtils.optBooleanOrNullable(jSONObject2, "init_event_done", JsonUtils.optBooleanOrNullable(jSONObject, "init_event_done", bool)));
        jSONObject3.put("report_request_id", AbstractC1491sb.a(jSONObject2, "report_request_id", AbstractC1491sb.a(jSONObject, "report_request_id", -1)));
        jSONObject3.put("global_number", JsonUtils.optLongOrDefault(jSONObject2, "global_number", JsonUtils.optLongOrDefault(jSONObject, "global_number", 0L)));
        jSONObject3.put("session_id", JsonUtils.optLongOrDefault(jSONObject2, "session_id", JsonUtils.optLongOrDefault(jSONObject, "session_id", -1L)));
        jSONObject3.put("referrer_handled", JsonUtils.optBooleanOrNullable(jSONObject2, "referrer_handled", JsonUtils.optBooleanOrNullable(jSONObject, "referrer_handled", bool)));
        jSONObject3.put("numbers_of_type", JsonUtils.optJsonObjectOrNullable(jSONObject2, "numbers_of_type", JsonUtils.optJsonObjectOrNull(jSONObject, "numbers_of_type")));
        jSONObject3.put("open_id", AbstractC1491sb.a(jSONObject2, "open_id", AbstractC1491sb.a(jSONObject, "open_id", 1)));
        jSONObject3.put("attribution_id", AbstractC1491sb.a(jSONObject2, "attribution_id", AbstractC1491sb.a(jSONObject, "attribution_id", 1)));
        jSONObject3.put("last_migration_api_level", AbstractC1491sb.a(jSONObject2, "last_migration_api_level", AbstractC1491sb.a(jSONObject, "last_migration_api_level", 0)));
        jSONObject3.put("external_attribution_window_start", JsonUtils.optLongOrDefault(jSONObject2, "external_attribution_window_start", JsonUtils.optLongOrDefault(jSONObject, "external_attribution_window_start", -1L)));
        return jSONObject3;
    }

    public final synchronized void b(long j10) {
        eo eoVar = this.f19546a;
        eoVar.a(eoVar.a().put("global_number", j10));
    }

    public final synchronized boolean c() {
        return this.f19546a.a().optBoolean("first_event_done", false);
    }

    public final synchronized boolean d() {
        return this.f19546a.a().optBoolean("init_event_done", false);
    }

    public final synchronized int b() {
        return this.f19546a.a().optInt("open_id", 1);
    }

    public final synchronized void c(long j10) {
        eo eoVar = this.f19546a;
        eoVar.a(eoVar.a().put("session_id", j10));
    }

    public final synchronized void b(int i10) {
        eo eoVar = this.f19546a;
        eoVar.a(eoVar.a().put("last_migration_api_level", i10));
    }

    public final synchronized void c(int i10) {
        eo eoVar = this.f19546a;
        eoVar.a(eoVar.a().put("open_id", i10));
    }

    public final synchronized void a(JSONObject jSONObject) {
        eo eoVar = this.f19546a;
        eoVar.a(eoVar.a().put("numbers_of_type", jSONObject));
    }

    public final synchronized int a() {
        return this.f19546a.a().optInt("attribution_id", 1);
    }

    public final synchronized void a(int i10) {
        eo eoVar = this.f19546a;
        eoVar.a(eoVar.a().put("attribution_id", i10));
    }

    public final synchronized void a(long j10) {
        eo eoVar = this.f19546a;
        eoVar.a(eoVar.a().put("external_attribution_window_start", j10));
    }
}
