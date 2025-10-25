package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import android.util.Pair;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLProtectionSpaceContract;
import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Oh;
import com.yandex.metrica.impl.ob.Tl;
import com.yandex.metrica.impl.ob.Ui;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Ti {

    /* renamed from: a  reason: collision with root package name */
    private final Ii f11429a;

    /* renamed from: b  reason: collision with root package name */
    private final Hi f11430b;

    /* renamed from: c  reason: collision with root package name */
    private final Oi f11431c;

    /* renamed from: d  reason: collision with root package name */
    private final Ri f11432d;

    /* renamed from: e  reason: collision with root package name */
    private final Qi f11433e;

    /* renamed from: f  reason: collision with root package name */
    private final Ni f11434f;

    /* renamed from: g  reason: collision with root package name */
    private final Si f11435g;

    /* renamed from: h  reason: collision with root package name */
    private final Ji f11436h;

    /* renamed from: i  reason: collision with root package name */
    private final Wi f11437i;

    /* renamed from: j  reason: collision with root package name */
    private final Li f11438j;

    /* renamed from: k  reason: collision with root package name */
    private final Pi f11439k;

    /* renamed from: l  reason: collision with root package name */
    private final Z9 f11440l;

    /* renamed from: m  reason: collision with root package name */
    private final Yi f11441m;

    /* renamed from: n  reason: collision with root package name */
    private final Xi f11442n;

    /* renamed from: o  reason: collision with root package name */
    private final Ci f11443o;

    /* renamed from: p  reason: collision with root package name */
    private final Di f11444p;

    /* renamed from: q  reason: collision with root package name */
    private final Ei f11445q;

    /* renamed from: r  reason: collision with root package name */
    private final Bi f11446r;

    /* renamed from: s  reason: collision with root package name */
    private final Ki f11447s;

    /* renamed from: t  reason: collision with root package name */
    private final Fi f11448t;

    /* renamed from: u  reason: collision with root package name */
    private final Gi f11449u;

    /* renamed from: v  reason: collision with root package name */
    private final Vi f11450v;

    /* renamed from: w  reason: collision with root package name */
    private final Mi f11451w;

    public Ti() {
        this(new Ki(), new Ii(), new Hi(), new Oi(), new Ri(), new Qi(), new Ni(), new Si(), new Ji(), new Wi(), new Li(), new Pi(), new Z9(), new Yi(), new Xi(), new Di(), new Ei(), new Ci(), new Bi(), new Fi(), new Gi(), new Vi(), new Mi());
    }

    public Ui a(byte[] bArr) {
        String str;
        String str2;
        Ui ui = new Ui();
        try {
            this.f11447s.getClass();
            Tl.a aVar = new Tl.a(new String(bArr, "UTF-8"));
            JSONObject optJSONObject = aVar.optJSONObject("device_id");
            if (optJSONObject != null) {
                str = optJSONObject.optString("hash");
                str2 = optJSONObject.optString("value");
            } else {
                str = "";
                str2 = "";
            }
            ui.d(str2);
            ui.c(str);
            a(ui, aVar);
            ui.a(Ui.a.OK);
            return ui;
        } catch (Throwable unused) {
            Ui ui2 = new Ui();
            ui2.a(Ui.a.BAD);
            return ui2;
        }
    }

    public Ti(Ki ki, Ii ii, Hi hi, Oi oi, Ri ri, Qi qi, Ni ni, Si si, Ji ji, Wi wi, Li li, Pi pi, Z9 z92, Yi yi, Xi xi, Di di, Ei ei, Ci ci, Bi bi, Fi fi, Gi gi, Vi vi, Mi mi) {
        this.f11429a = ii;
        this.f11430b = hi;
        this.f11431c = oi;
        this.f11432d = ri;
        this.f11433e = qi;
        this.f11434f = ni;
        this.f11435g = si;
        this.f11436h = ji;
        this.f11437i = wi;
        this.f11438j = li;
        this.f11439k = pi;
        this.f11440l = z92;
        this.f11441m = yi;
        this.f11442n = xi;
        this.f11444p = di;
        this.f11445q = ei;
        this.f11443o = ci;
        this.f11446r = bi;
        this.f11447s = ki;
        this.f11448t = fi;
        this.f11449u = gi;
        this.f11450v = vi;
        this.f11451w = mi;
    }

    private void a(Ui ui, Tl.a aVar) {
        long j10;
        long j11;
        JSONArray optJSONArray;
        JSONArray optJSONArray2;
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONObject optJSONObject3 = aVar.optJSONObject("queries");
        if (optJSONObject3 != null && (optJSONObject2 = optJSONObject3.optJSONObject("list")) != null) {
            JSONObject optJSONObject4 = optJSONObject2.optJSONObject("sdk_list");
            if (optJSONObject4 != null) {
                ui.h(optJSONObject4.optString("url", null));
            }
            JSONObject optJSONObject5 = optJSONObject2.optJSONObject(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST);
            if (optJSONObject5 != null) {
                ui.a(optJSONObject5.optString("url", null));
            }
        }
        Object jSONObject = new JSONObject();
        try {
            jSONObject = aVar.get("distribution_customization");
        } catch (Throwable unused) {
        }
        JSONObject optJSONObject6 = ((JSONObject) jSONObject).optJSONObject("clids");
        if (optJSONObject6 != null) {
            HashMap hashMap = new HashMap();
            Iterator<String> keys = optJSONObject6.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject optJSONObject7 = optJSONObject6.optJSONObject(next);
                if (optJSONObject7 != null && optJSONObject7.has("value")) {
                    hashMap.put(next, optJSONObject7.getString("value"));
                }
            }
            ui.e(Tl.c(hashMap));
        }
        JSONObject optJSONObject8 = aVar.optJSONObject(CommonUrlParts.LOCALE);
        ui.b((optJSONObject8 == null || (optJSONObject = optJSONObject8.optJSONObject("country")) == null || !optJSONObject.optBoolean("reliable", false)) ? "" : optJSONObject.optString("value", ""));
        JSONObject optJSONObject9 = aVar.optJSONObject(FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME);
        if (optJSONObject9 != null) {
            try {
                ui.a(Long.valueOf(optJSONObject9.getLong("max_valid_difference_seconds")));
            } catch (Throwable unused2) {
            }
        }
        If.s sVar = new If.s();
        JSONObject optJSONObject10 = aVar.optJSONObject("stat_sending");
        if (optJSONObject10 != null) {
            sVar.f10372a = Tl.a(Tl.a(optJSONObject10, "disabled_reporting_interval_seconds", (Long) null), TimeUnit.SECONDS, sVar.f10372a);
        }
        ui.a(this.f11440l.toModel(sVar));
        ArrayList arrayList = new ArrayList();
        JSONObject optJSONObject11 = aVar.optJSONObject("mediascope_api_keys");
        if (optJSONObject11 != null && (optJSONArray2 = optJSONObject11.optJSONArray("list")) != null) {
            for (int i10 = 0; i10 < optJSONArray2.length(); i10++) {
                try {
                    arrayList.add(optJSONArray2.getString(i10));
                } catch (Throwable unused3) {
                }
            }
        }
        ui.d(arrayList);
        this.f11430b.a(ui, aVar);
        this.f11429a.a(ui, aVar);
        this.f11431c.getClass();
        JSONObject optJSONObject12 = aVar.optJSONObject("permissions");
        if (optJSONObject12 != null && (optJSONArray = optJSONObject12.optJSONArray("list")) != null) {
            for (int i11 = 0; i11 < optJSONArray.length(); i11++) {
                JSONObject optJSONObject13 = optJSONArray.optJSONObject(i11);
                if (optJSONObject13 != null) {
                    String optString = optJSONObject13.optString(Constants.NAME);
                    boolean optBoolean = optJSONObject13.optBoolean("enabled");
                    if (TextUtils.isEmpty(optString)) {
                        ui.a("", false);
                    } else {
                        ui.a(optString, optBoolean);
                    }
                }
            }
        }
        this.f11432d.a(ui, aVar);
        this.f11433e.getClass();
        If r02 = new If();
        JSONObject optJSONObject14 = aVar.optJSONObject("retry_policy");
        int i12 = r02.H;
        int i13 = r02.I;
        if (optJSONObject14 != null) {
            i12 = optJSONObject14.optInt("max_interval_seconds", i12);
            i13 = optJSONObject14.optInt("exponential_multiplier", r02.I);
        }
        ui.a(new RetryPolicyConfig(i12, i13));
        this.f11434f.getClass();
        if (ui.e().f11291c) {
            JSONObject optJSONObject15 = aVar.optJSONObject("permissions_collecting");
            If.n nVar = new If.n();
            if (optJSONObject15 != null) {
                j10 = optJSONObject15.optLong("check_interval_seconds", nVar.f10345a);
                j11 = optJSONObject15.optLong("force_send_interval_seconds", nVar.f10346b);
            } else {
                j10 = nVar.f10345a;
                j11 = nVar.f10346b;
            }
            ui.a(new C0413ai(j10, j11));
        }
        this.f11435g.a(ui, aVar);
        this.f11436h.a(ui, aVar);
        this.f11438j.a(ui, aVar);
        this.f11439k.a(ui, aVar);
        this.f11441m.a(ui, aVar);
        ui.b(this.f11442n.a(aVar, "ui_event_sending", C0694m0.b()));
        ui.c(this.f11442n.a(aVar, "ui_raw_event_sending", C0694m0.b()));
        ui.a(this.f11442n.a(aVar, "ui_collecting_for_bridge", C0694m0.a()));
        this.f11443o.a(ui, aVar);
        ui.a(this.f11437i.a(aVar, "throttling"));
        ui.a(this.f11444p.a(aVar));
        this.f11445q.a(ui, aVar);
        this.f11446r.getClass();
        JSONObject optJSONObject16 = aVar.optJSONObject("attribution");
        if (optJSONObject16 != null) {
            ArrayList arrayList2 = new ArrayList();
            JSONArray optJSONArray3 = optJSONObject16.optJSONArray("deeplink_conditions");
            if (optJSONArray3 != null) {
                for (int i14 = 0; i14 < optJSONArray3.length(); i14++) {
                    JSONObject optJSONObject17 = optJSONArray3.optJSONObject(i14);
                    String optString2 = optJSONObject17.optString("key", null);
                    if (!TextUtils.isEmpty(optString2)) {
                        String optString3 = optJSONObject17.optString("value", null);
                        arrayList2.add(new Pair(optString2, optString3 == null ? null : new Oh.a(optString3)));
                    }
                }
            }
            ui.a(new Oh(arrayList2));
        }
        this.f11448t.a(ui, aVar);
        if (ui.e().f11311w) {
            this.f11449u.a(ui, aVar);
        }
        this.f11450v.a(ui, aVar);
        this.f11451w.a(ui, aVar);
    }
}
