package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLProtectionSpaceContract;
import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.coreutils.internal.parsing.RemoteConfigJsonUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Jl {

    /* renamed from: a  reason: collision with root package name */
    public final Ja f18454a;

    /* renamed from: b  reason: collision with root package name */
    public final C1242ia f18455b;

    /* renamed from: c  reason: collision with root package name */
    public final Ei f18456c;

    /* renamed from: d  reason: collision with root package name */
    public final C1619xe f18457d;

    /* renamed from: e  reason: collision with root package name */
    public final C1527tm f18458e;

    /* renamed from: f  reason: collision with root package name */
    public final C1457r2 f18459f;

    /* renamed from: g  reason: collision with root package name */
    public final C1633y3 f18460g;

    /* renamed from: h  reason: collision with root package name */
    public final C1408p2 f18461h;

    /* renamed from: i  reason: collision with root package name */
    public final C1516tb f18462i;

    /* renamed from: j  reason: collision with root package name */
    public final C1453qm f18463j;

    /* renamed from: k  reason: collision with root package name */
    public final C1643yd f18464k;

    /* renamed from: l  reason: collision with root package name */
    public final P9 f18465l;

    public Jl() {
        this(new C1516tb(), new Ja(), new C1242ia(), new Ei(), new C1619xe(), new C1527tm(), new C1633y3(), new C1457r2(), new C1408p2(), new C1453qm(), new C1643yd(), new P9());
    }

    public final void a(Ol ol, C1466rb c1466rb) {
        String str;
        long j10;
        long j11;
        String str2;
        ArrayList a10;
        Boolean bool;
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONObject optJSONObject3;
        JSONObject optJSONObject4 = c1466rb.optJSONObject("queries");
        if (optJSONObject4 != null && (optJSONObject2 = optJSONObject4.optJSONObject("list")) != null && (optJSONObject3 = optJSONObject2.optJSONObject(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST)) != null) {
            ol.f18722g = optJSONObject3.optString("url", null);
        }
        Object jSONObject = new JSONObject();
        try {
            jSONObject = c1466rb.get("distribution_customization");
        } catch (Throwable unused) {
        }
        JSONObject optJSONObject5 = ((JSONObject) jSONObject).optJSONObject("clids");
        if (optJSONObject5 != null) {
            HashMap hashMap = new HashMap();
            Iterator<String> keys = optJSONObject5.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject optJSONObject6 = optJSONObject5.optJSONObject(next);
                if (optJSONObject6 != null && optJSONObject6.has("value")) {
                    hashMap.put(next, optJSONObject6.getString("value"));
                }
            }
            ol.f18725j = AbstractC1477rm.a((Map) hashMap);
        }
        JSONObject optJSONObject7 = c1466rb.optJSONObject(CommonUrlParts.LOCALE);
        String str3 = "";
        if (optJSONObject7 == null || (optJSONObject = optJSONObject7.optJSONObject("country")) == null || !optJSONObject.optBoolean("reliable", false)) {
            str = "";
        } else {
            str = optJSONObject.optString("value", "");
        }
        ol.f18728m = str;
        JSONObject optJSONObject8 = c1466rb.optJSONObject(FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME);
        if (optJSONObject8 != null) {
            try {
                ol.f18727l = Long.valueOf(optJSONObject8.getLong("max_valid_difference_seconds"));
            } catch (Throwable unused2) {
            }
        }
        C1229hm c1229hm = new C1229hm();
        JSONObject optJSONObject9 = c1466rb.optJSONObject("stat_sending");
        if (optJSONObject9 != null) {
            c1229hm.f19759a = RemoteConfigJsonUtils.extractMillisFromSecondsOrDefault(optJSONObject9, "disabled_reporting_interval_seconds", c1229hm.f19759a);
        }
        this.f18458e.getClass();
        ol.f18731p = new C1502sm(c1229hm.f19759a);
        this.f18455b.getClass();
        C1129dm c1129dm = new C1129dm();
        try {
            Object jSONObject2 = new JSONObject();
            try {
                jSONObject2 = c1466rb.get("features");
            } catch (Throwable unused3) {
            }
            JSONObject optJSONObject10 = ((JSONObject) jSONObject2).optJSONObject("list");
            if (optJSONObject10 != null) {
                A4 a42 = new A4();
                a42.f17925a = C1242ia.a(optJSONObject10, "permissions_collecting", c1129dm.f19539a);
                a42.f17926b = C1242ia.a(optJSONObject10, "features_collecting", c1129dm.f19540b);
                a42.f17927c = C1242ia.a(optJSONObject10, "google_aid", c1129dm.f19541c);
                a42.f17928d = C1242ia.a(optJSONObject10, "sim_info", c1129dm.f19542d);
                a42.f17929e = C1242ia.a(optJSONObject10, "huawei_oaid", c1129dm.f19543e);
                if (optJSONObject10.has("ssl_pinning")) {
                    bool = Boolean.valueOf(optJSONObject10.getJSONObject("ssl_pinning").getBoolean("enabled"));
                } else {
                    bool = null;
                }
                a42.f17930f = bool;
                ol.f18717b = new C4(a42);
            }
        } catch (Throwable unused4) {
        }
        this.f18454a.getClass();
        try {
            Object jSONObject3 = new JSONObject();
            try {
                jSONObject3 = c1466rb.get("query_hosts");
            } catch (Throwable unused5) {
            }
            JSONObject optJSONObject11 = ((JSONObject) jSONObject3).optJSONObject("list");
            if (optJSONObject11 != null) {
                try {
                    str2 = optJSONObject11.getJSONObject("get_ad").getJSONArray("urls").getString(0);
                } catch (Throwable unused6) {
                    str2 = "";
                }
                if (!TextUtils.isEmpty(str2)) {
                    ol.f18719d = str2;
                }
                ArrayList a11 = Ja.a(optJSONObject11, "report");
                if (!Rn.a((Collection) a11)) {
                    ol.f18720e = a11;
                }
                try {
                    str3 = optJSONObject11.getJSONObject("report_ad").getJSONArray("urls").getString(0);
                } catch (Throwable unused7) {
                }
                if (!TextUtils.isEmpty(str3)) {
                    ol.f18721f = str3;
                }
                ArrayList a12 = Ja.a(optJSONObject11, "startup");
                if (!Rn.a((Collection) a12)) {
                    ol.f18718c = a12;
                }
                ArrayList a13 = Ja.a(optJSONObject11, "diagnostic");
                if (!Rn.a((Collection) a13)) {
                    ol.f18729n = a13;
                }
                HashMap hashMap2 = new HashMap();
                Iterator<String> keys2 = optJSONObject11.keys();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    if (!Ja.f18432a.contains(next2) && (a10 = Ja.a(optJSONObject11, next2)) != null) {
                        hashMap2.put(next2, a10);
                    }
                }
                ol.f18730o = hashMap2;
            }
        } catch (Throwable unused8) {
        }
        this.f18456c.getClass();
        C1253im c1253im = new C1253im();
        JSONObject optJSONObject12 = c1466rb.optJSONObject("retry_policy");
        int i10 = c1253im.f19810w;
        int i11 = c1253im.f19811x;
        if (optJSONObject12 != null) {
            i10 = optJSONObject12.optInt("max_interval_seconds", i10);
            i11 = optJSONObject12.optInt("exponential_multiplier", c1253im.f19811x);
        }
        ol.f18732q = new RetryPolicyConfig(i10, i11);
        this.f18457d.getClass();
        if (ol.f18717b.f18034a) {
            JSONObject optJSONObject13 = c1466rb.optJSONObject("permissions_collecting");
            C1179fm c1179fm = new C1179fm();
            if (optJSONObject13 != null) {
                j10 = optJSONObject13.optLong("check_interval_seconds", c1179fm.f19653a);
                j11 = optJSONObject13.optLong("force_send_interval_seconds", c1179fm.f19654b);
            } else {
                j10 = c1179fm.f19653a;
                j11 = c1179fm.f19654b;
            }
            ol.f18726k = new C1569ve(j10, j11);
        }
        C1433q2 c1433q2 = this.f18459f.f20489a;
        Zl zl = new Zl();
        JSONObject optJSONObject14 = c1466rb.optJSONObject("auto_inapp_collecting");
        if (optJSONObject14 != null) {
            zl.f19355a = optJSONObject14.optInt("send_frequency_seconds", zl.f19355a);
            zl.f19356b = optJSONObject14.optInt("first_collecting_inapp_max_age_seconds", zl.f19356b);
        }
        c1433q2.getClass();
        ol.f18733r = new BillingConfig(zl.f19355a, zl.f19356b);
        C1633y3 c1633y3 = this.f18460g;
        c1633y3.getClass();
        C1054am c1054am = new C1054am();
        JSONObject optJSONObject15 = c1466rb.optJSONObject("cache_control");
        if (optJSONObject15 != null) {
            c1054am.f19406a = RemoteConfigJsonUtils.extractMillisFromSecondsOrDefault(optJSONObject15, "last_known_location_ttl", c1054am.f19406a);
        }
        c1633y3.f20955a.getClass();
        ol.f18734s = new C1558v3(c1054am.f19406a);
        this.f18461h.getClass();
        C1408p2.a(ol, c1466rb);
        C1453qm c1453qm = this.f18463j;
        c1453qm.getClass();
        JSONObject optJSONObject16 = c1466rb.optJSONObject("startup_update");
        C1204gm c1204gm = new C1204gm();
        Integer a14 = AbstractC1491sb.a(optJSONObject16, "interval_seconds", null);
        if (a14 != null) {
            c1204gm.f19693a = a14.intValue();
        }
        c1453qm.f20457a.getClass();
        ol.f18736u = new C1403om(c1204gm.f19693a);
        Map<String, C1294kd> c10 = this.f18464k.f20982a.c();
        C1618xd c1618xd = new C1618xd(c1466rb);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, C1294kd> entry : c10.entrySet()) {
            Object invoke = c1618xd.invoke(entry);
            if (invoke != null) {
                linkedHashMap.put(entry.getKey(), invoke);
            }
        }
        ol.f18737v = linkedHashMap;
        O9 o92 = this.f18465l.f18775a;
        C1104cm c1104cm = new C1104cm();
        JSONObject optJSONObject17 = c1466rb.optJSONObject("external_attribution");
        if (optJSONObject17 != null) {
            c1104cm.f19487a = RemoteConfigJsonUtils.extractMillisFromSecondsOrDefault(optJSONObject17, "collecting_interval_seconds", c1104cm.f19487a);
        }
        o92.getClass();
        ol.f18738w = new N9(c1104cm.f19487a);
    }

    public Jl(C1516tb c1516tb, Ja ja2, C1242ia c1242ia, Ei ei, C1619xe c1619xe, C1527tm c1527tm, C1633y3 c1633y3, C1457r2 c1457r2, C1408p2 c1408p2, C1453qm c1453qm, C1643yd c1643yd, P9 p92) {
        this.f18454a = ja2;
        this.f18455b = c1242ia;
        this.f18456c = ei;
        this.f18457d = c1619xe;
        this.f18458e = c1527tm;
        this.f18460g = c1633y3;
        this.f18459f = c1457r2;
        this.f18461h = c1408p2;
        this.f18462i = c1516tb;
        this.f18463j = c1453qm;
        this.f18464k = c1643yd;
        this.f18465l = p92;
    }
}
