package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.coreapi.internal.model.ScreenInfo;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.internal.IdentifiersResult;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Te extends Ed {

    /* renamed from: d  reason: collision with root package name */
    public static final We f18967d = new We("UUID_RESULT", null);

    /* renamed from: e  reason: collision with root package name */
    public static final We f18968e = new We("DEVICE_ID_RESULT", null);

    /* renamed from: f  reason: collision with root package name */
    public static final We f18969f = new We("DEVICE_ID_HASH_RESULT", null);

    /* renamed from: g  reason: collision with root package name */
    public static final We f18970g = new We("AD_URL_GET_RESULT", null);

    /* renamed from: h  reason: collision with root package name */
    public static final We f18971h = new We("AD_URL_REPORT_RESULT", null);

    /* renamed from: i  reason: collision with root package name */
    public static final We f18972i = new We("CUSTOM_HOSTS", null);

    /* renamed from: j  reason: collision with root package name */
    public static final We f18973j = new We("SERVER_TIME_OFFSET", null);

    /* renamed from: k  reason: collision with root package name */
    public static final We f18974k = new We("RESPONSE_CLIDS_RESULT", null);

    /* renamed from: l  reason: collision with root package name */
    public static final We f18975l = new We("CUSTOM_SDK_HOSTS", null);

    /* renamed from: m  reason: collision with root package name */
    public static final We f18976m = new We("CLIENT_CLIDS", null);

    /* renamed from: n  reason: collision with root package name */
    public static final We f18977n = new We("DEFERRED_DEEP_LINK_WAS_CHECKED", null);

    /* renamed from: o  reason: collision with root package name */
    public static final We f18978o = new We("API_LEVEL", null);

    /* renamed from: p  reason: collision with root package name */
    public static final We f18979p = new We("NEXT_STARTUP_TIME", null);

    /* renamed from: q  reason: collision with root package name */
    public static final We f18980q = new We("GAID", null);

    /* renamed from: r  reason: collision with root package name */
    public static final We f18981r = new We("HOAID", null);

    /* renamed from: s  reason: collision with root package name */
    public static final We f18982s = new We("YANDEX_ADV_ID", null);

    /* renamed from: t  reason: collision with root package name */
    public static final We f18983t = new We("CLIENT_CLIDS_CHANGED_AFTER_LAST_IDENTIFIERS_UPDATE", null);

    /* renamed from: u  reason: collision with root package name */
    public static final We f18984u = new We("SCREEN_INFO", null);

    /* renamed from: v  reason: collision with root package name */
    public static final We f18985v = new We("SCREEN_SIZE_CHECKED_BY_DEPRECATED", null);

    /* renamed from: w  reason: collision with root package name */
    public static final We f18986w = new We("FEATURES", null);

    /* renamed from: x  reason: collision with root package name */
    public static final We f18987x = new We("APPMETRICA_CLIENT_CONFIG", null);

    public Te(Ta ta2) {
        super(ta2);
    }

    public final boolean a(boolean z10) {
        return this.f19129a.getBoolean(f18983t.f19187b, z10);
    }

    public final long b(long j10) {
        return this.f19129a.getLong(f18973j.f19186a, j10);
    }

    public final Te c(IdentifiersResult identifiersResult) {
        return a(f18975l.f19187b, identifiersResult);
    }

    public final IdentifiersResult d() {
        return h(f18970g.f19187b);
    }

    public final IdentifiersResult e() {
        return h(f18971h.f19187b);
    }

    public final Te f(IdentifiersResult identifiersResult) {
        return a(f18980q.f19187b, identifiersResult);
    }

    public final IdentifiersResult h() {
        return h(f18975l.f19187b);
    }

    public final IdentifiersResult i() {
        return h(f18969f.f19187b);
    }

    public final IdentifiersResult j() {
        return h(f18968e.f19187b);
    }

    public final C1217ha k() {
        String string = this.f19129a.getString(f18986w.f19187b, null);
        try {
            if (!TextUtils.isEmpty(string)) {
                JSONObject jSONObject = new JSONObject(string);
                return new C1217ha(JsonUtils.optBooleanOrNull(jSONObject, "libSslEnabled"), IdentifierStatus.from(JsonUtils.optStringOrNull(jSONObject, "STATUS")), JsonUtils.optStringOrNull(jSONObject, "ERROR_EXPLANATION"));
            }
        } catch (Throwable unused) {
        }
        return new C1217ha(null, IdentifierStatus.UNKNOWN, null);
    }

    public final IdentifiersResult l() {
        return h(f18980q.f19187b);
    }

    public final IdentifiersResult m() {
        return h(f18981r.f19187b);
    }

    public final long n() {
        return this.f19129a.getLong(f18979p.f19187b, 0L);
    }

    public final IdentifiersResult o() {
        return h(f18974k.f19187b);
    }

    public final ScreenInfo p() {
        return AbstractC1491sb.e(this.f19129a.getString(f18984u.f19187b, null));
    }

    public final IdentifiersResult q() {
        return h(f18967d.f19187b);
    }

    public final IdentifiersResult r() {
        return h(f18982s.f19187b);
    }

    public final boolean s() {
        return this.f19129a.getBoolean(f18977n.f19187b, false);
    }

    public final boolean t() {
        return this.f19129a.getBoolean(f18985v.f19187b, false);
    }

    public final Te u() {
        return (Te) b(f18977n.f19187b, true);
    }

    public final void v() {
        b(f18985v.f19187b, true);
    }

    public final List<String> g() {
        String string = this.f19129a.getString(f18972i.f19187b, null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return AbstractC1491sb.b(string);
    }

    public final long a(long j10) {
        return this.f19129a.getLong(f18978o.f19187b, j10);
    }

    public final Te b(IdentifiersResult identifiersResult) {
        return a(f18971h.f19187b, identifiersResult);
    }

    public final Te c(long j10) {
        return (Te) b(f18978o.f19187b, j10);
    }

    public final Te d(IdentifiersResult identifiersResult) {
        return a(f18969f.f19187b, identifiersResult);
    }

    public final Te e(IdentifiersResult identifiersResult) {
        return a(f18968e.f19187b, identifiersResult);
    }

    public final AppMetricaConfig f() {
        String string = this.f19129a.getString(f18987x.f19187b, null);
        if (string == null) {
            return null;
        }
        return AppMetricaConfig.fromJson(string);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.appmetrica.analytics.internal.IdentifiersResult h(java.lang.String r6) {
        /*
            r5 = this;
            r0 = 0
            io.appmetrica.analytics.impl.Ta r1 = r5.f19129a     // Catch: java.lang.Throwable -> L2a
            java.lang.String r6 = r1.getString(r6, r0)     // Catch: java.lang.Throwable -> L2a
            if (r6 == 0) goto L2a
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L2a
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L2a
            io.appmetrica.analytics.internal.IdentifiersResult r6 = new io.appmetrica.analytics.internal.IdentifiersResult     // Catch: java.lang.Throwable -> L2a
            java.lang.String r2 = "ID"
            java.lang.String r2 = io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils.optStringOrNull(r1, r2)     // Catch: java.lang.Throwable -> L2a
            java.lang.String r3 = "STATUS"
            java.lang.String r3 = io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils.optStringOrNull(r1, r3)     // Catch: java.lang.Throwable -> L2a
            io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus r3 = io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus.from(r3)     // Catch: java.lang.Throwable -> L2a
            java.lang.String r4 = "ERROR_EXPLANATION"
            java.lang.String r1 = io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils.optStringOrNull(r1, r4)     // Catch: java.lang.Throwable -> L2a
            r6.<init>(r2, r3, r1)     // Catch: java.lang.Throwable -> L2a
            goto L2b
        L2a:
            r6 = r0
        L2b:
            if (r6 != 0) goto L36
            io.appmetrica.analytics.internal.IdentifiersResult r6 = new io.appmetrica.analytics.internal.IdentifiersResult
            io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus r1 = io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus.UNKNOWN
            java.lang.String r2 = "no identifier in preferences"
            r6.<init>(r0, r1, r2)
        L36:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.Te.h(java.lang.String):io.appmetrica.analytics.internal.IdentifiersResult");
    }

    public final Te i(IdentifiersResult identifiersResult) {
        return a(f18967d.f19187b, identifiersResult);
    }

    public final Te j(IdentifiersResult identifiersResult) {
        return a(f18982s.f19187b, identifiersResult);
    }

    public final Te g(IdentifiersResult identifiersResult) {
        return a(f18981r.f19187b, identifiersResult);
    }

    public final Te a(IdentifiersResult identifiersResult) {
        return a(f18970g.f19187b, identifiersResult);
    }

    public final Te b(boolean z10) {
        return (Te) b(f18983t.f19187b, z10);
    }

    public final Te d(long j10) {
        return (Te) b(f18979p.f19187b, j10);
    }

    public final Te e(long j10) {
        return (Te) b(f18973j.f19187b, j10);
    }

    public final String i(String str) {
        return this.f19129a.getString(f18976m.f19187b, str);
    }

    public final Te j(String str) {
        return (Te) b(f18976m.f19187b, str);
    }

    @Override // io.appmetrica.analytics.impl.Ed
    public final String f(String str) {
        return new We(str, null).f19187b;
    }

    public final Te a(List<String> list) {
        return (Te) b(f18972i.f19187b, Rn.a((Collection) list) ? null : new JSONArray((Collection) list).toString());
    }

    public final Te h(IdentifiersResult identifiersResult) {
        return a(f18974k.f19187b, identifiersResult);
    }

    @Override // io.appmetrica.analytics.impl.Ed
    /* renamed from: k */
    public final Te g(String str) {
        return (Te) d(new We(str, null).f19187b);
    }

    public final Te a(C1217ha c1217ha) {
        String str = f18986w.f19187b;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("libSslEnabled", c1217ha.f19730a).put("STATUS", c1217ha.f19731b.getValue()).putOpt("ERROR_EXPLANATION", c1217ha.f19732c);
        } catch (Throwable unused) {
        }
        return (Te) b(str, jSONObject.toString());
    }

    public final void a(ScreenInfo screenInfo) {
        b(f18984u.f19187b, AbstractC1491sb.a(screenInfo));
    }

    public final void a(AppMetricaConfig appMetricaConfig) {
        b(f18987x.f19187b, appMetricaConfig.toJson());
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.appmetrica.analytics.impl.Te a(java.lang.String r5, io.appmetrica.analytics.internal.IdentifiersResult r6) {
        /*
            r4 = this;
            if (r6 == 0) goto L27
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L27
            r0.<init>()     // Catch: java.lang.Throwable -> L27
            java.lang.String r1 = "ID"
            java.lang.String r2 = r6.f21091id     // Catch: java.lang.Throwable -> L22
            org.json.JSONObject r1 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> L22
            java.lang.String r2 = "STATUS"
            io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus r3 = r6.status     // Catch: java.lang.Throwable -> L22
            java.lang.String r3 = r3.getValue()     // Catch: java.lang.Throwable -> L22
            org.json.JSONObject r1 = r1.put(r2, r3)     // Catch: java.lang.Throwable -> L22
            java.lang.String r2 = "ERROR_EXPLANATION"
            java.lang.String r6 = r6.errorExplanation     // Catch: java.lang.Throwable -> L22
            r1.put(r2, r6)     // Catch: java.lang.Throwable -> L22
        L22:
            java.lang.String r6 = r0.toString()     // Catch: java.lang.Throwable -> L27
            goto L28
        L27:
            r6 = 0
        L28:
            if (r6 == 0) goto L2d
            r4.b(r5, r6)
        L2d:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.Te.a(java.lang.String, io.appmetrica.analytics.internal.IdentifiersResult):io.appmetrica.analytics.impl.Te");
    }
}
