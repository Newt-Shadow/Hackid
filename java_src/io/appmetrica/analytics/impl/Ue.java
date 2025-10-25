package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Ue extends Ed implements ho {

    /* renamed from: d  reason: collision with root package name */
    public static final long f19046d = 0;

    /* renamed from: e  reason: collision with root package name */
    public static final int f19047e = -1;

    /* renamed from: f  reason: collision with root package name */
    public static final String f19048f = "";

    /* renamed from: g  reason: collision with root package name */
    public static final String f19049g = "";

    /* renamed from: q  reason: collision with root package name */
    public static final String f19059q = "SESSION_";

    /* renamed from: h  reason: collision with root package name */
    public static final We f19050h = new We("PERMISSIONS_CHECK_TIME", null);

    /* renamed from: i  reason: collision with root package name */
    public static final We f19051i = new We("PROFILE_ID", null);

    /* renamed from: j  reason: collision with root package name */
    public static final We f19052j = new We("APP_ENVIRONMENT", null);

    /* renamed from: k  reason: collision with root package name */
    public static final We f19053k = new We("APP_ENVIRONMENT_REVISION", null);

    /* renamed from: l  reason: collision with root package name */
    public static final We f19054l = new We("LAST_APP_VERSION_WITH_FEATURES", null);

    /* renamed from: m  reason: collision with root package name */
    public static final We f19055m = new We("APPLICATION_FEATURES", null);

    /* renamed from: n  reason: collision with root package name */
    public static final We f19056n = new We("CERTIFICATES_SHA1_FINGERPRINTS", null);

    /* renamed from: o  reason: collision with root package name */
    public static final We f19057o = new We("VITAL_DATA", null);

    /* renamed from: p  reason: collision with root package name */
    public static final We f19058p = new We("SENT_EXTERNAL_ATTRIBUTIONS", null);

    /* renamed from: r  reason: collision with root package name */
    public static final We f19060r = new We("MAIN_REPORTER_EVENTS_TRIGGER_CONDITION_MET", null);

    public Ue(Ta ta2) {
        super(ta2);
    }

    public final Ue a(C1057b0 c1057b0) {
        synchronized (this) {
            b(f19052j.f19187b, c1057b0.f19415a);
            b(f19053k.f19187b, c1057b0.f19416b);
        }
        return this;
    }

    public final void b(boolean z10) {
        b(f19060r.f19187b, z10);
    }

    @Override // io.appmetrica.analytics.impl.Ve
    public final Set<String> c() {
        return this.f19129a.a();
    }

    public final C1057b0 d() {
        C1057b0 c1057b0;
        synchronized (this) {
            c1057b0 = new C1057b0(this.f19129a.getString(f19052j.f19187b, "{}"), this.f19129a.getLong(f19053k.f19187b, 0L));
        }
        return c1057b0;
    }

    public final String e() {
        return this.f19129a.getString(f19055m.f19187b, "");
    }

    public final List<String> f() {
        String str = f19056n.f19187b;
        List emptyList = Collections.emptyList();
        String[] strArr = emptyList == null ? null : (String[]) emptyList.toArray(new String[emptyList.size()]);
        String string = this.f19129a.getString(str, null);
        if (!TextUtils.isEmpty(string)) {
            try {
                JSONArray jSONArray = new JSONArray(string);
                strArr = new String[jSONArray.length()];
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    strArr[i10] = jSONArray.optString(i10);
                }
            } catch (Throwable unused) {
            }
        }
        if (strArr == null) {
            return null;
        }
        return Arrays.asList(strArr);
    }

    public final int g() {
        return this.f19129a.getInt(f19054l.f19187b, -1);
    }

    public final long h() {
        return this.f19129a.getLong(f19050h.f19187b, 0L);
    }

    public final Ue i(String str) {
        return (Ue) b(f19055m.f19187b, str);
    }

    public final Ue j(String str) {
        return (Ue) b(f19051i.f19187b, str);
    }

    public final Ue e(String str, String str2) {
        return (Ue) b(new We(f19059q, str).f19187b, str2);
    }

    public final String h(String str) {
        return this.f19129a.getString(new We(f19059q, str).f19187b, "");
    }

    public final String i() {
        return this.f19129a.getString(f19051i.f19187b, null);
    }

    public final Map<Integer, String> j() {
        HashMap hashMap = new HashMap();
        try {
            String string = this.f19129a.getString(f19058p.f19187b, null);
            if (string != null) {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(Integer.valueOf(Integer.parseInt(next)), jSONObject.getString(next));
                }
            }
        } catch (Throwable unused) {
        }
        return hashMap;
    }

    public final Ue a(long j10) {
        return (Ue) b(f19050h.f19187b, j10);
    }

    @Override // io.appmetrica.analytics.impl.Ed
    public final String f(String str) {
        return new We(str, null).f19187b;
    }

    public final Ue a(int i10) {
        return (Ue) b(f19054l.f19187b, i10);
    }

    public final Ue a(List<String> list) {
        return (Ue) a(f19056n.f19187b, list);
    }

    public final boolean a(boolean z10) {
        return this.f19129a.getBoolean(f19060r.f19187b, z10);
    }

    @Override // io.appmetrica.analytics.impl.ho
    public final String a() {
        return this.f19129a.getString(f19057o.f19187b, null);
    }

    @Override // io.appmetrica.analytics.impl.ho
    public final void a(String str) {
        b(f19057o.f19187b, str);
    }

    public final void a(Map<Integer, String> map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<Integer, String> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey().toString(), entry.getValue());
            } catch (Throwable unused) {
            }
        }
        b(f19058p.f19187b, jSONObject.toString());
    }
}
