package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.content.Context;
import android.location.Location;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import com.yandex.metrica.impl.ob.C0756oc;
import com.yandex.metrica.impl.ob.C0839s;
import com.yandex.metrica.impl.ob.C0906ui;
import com.yandex.metrica.impl.ob.zn;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.Collection;
import java.util.EnumMap;
import java.util.LinkedList;
import java.util.Map;
import org.apache.tika.metadata.ClimateForcast;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.i0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0595i0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12577a;

    /* renamed from: b  reason: collision with root package name */
    private final E f12578b;

    /* renamed from: c  reason: collision with root package name */
    private final C0935w f12579c;

    /* renamed from: d  reason: collision with root package name */
    private final C0924vc f12580d;

    /* renamed from: e  reason: collision with root package name */
    private final I2 f12581e;

    /* renamed from: f  reason: collision with root package name */
    private final D9 f12582f;

    /* renamed from: g  reason: collision with root package name */
    private ContentValues f12583g;

    /* renamed from: h  reason: collision with root package name */
    private Lg f12584h;

    public C0595i0(Context context) {
        this(context, F0.g().c(), F0.g().b(), C0924vc.a(context), H2.a(context));
    }

    public C0595i0 a(ContentValues contentValues) {
        this.f12583g = contentValues;
        return this;
    }

    public C0595i0 a(Lg lg) {
        this.f12584h = lg;
        return this;
    }

    public void a() {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject);
        } catch (Throwable unused) {
            jSONObject = new JSONObject();
        }
        this.f12583g.put("report_request_parameters", jSONObject.toString());
    }

    C0595i0(Context context, E e10, C0935w c0935w, C0924vc c0924vc, H2 h22) {
        this.f12582f = new D9();
        this.f12577a = context;
        this.f12578b = e10;
        this.f12579c = c0935w;
        this.f12580d = c0924vc;
        this.f12581e = h22.a();
    }

    private void a(JSONObject jSONObject) {
        JSONObject putOpt = jSONObject.putOpt("dId", this.f12584h.g()).putOpt("uId", this.f12584h.w()).putOpt("appVer", this.f12584h.f()).putOpt("appBuild", this.f12584h.b());
        this.f12584h.getClass();
        JSONObject putOpt2 = putOpt.putOpt("analyticsSdkVersionName", "5.3.0");
        this.f12584h.getClass();
        JSONObject putOpt3 = putOpt2.putOpt("kitBuildNumber", "45003240").putOpt("kitBuildType", this.f12584h.j()).putOpt("osVer", this.f12584h.o()).putOpt("osApiLev", Integer.valueOf(this.f12584h.n())).putOpt("lang", this.f12584h.k()).putOpt("root", this.f12584h.h()).putOpt("app_debuggable", this.f12584h.z()).putOpt(CommonUrlParts.APP_FRAMEWORK, this.f12584h.c()).putOpt("attribution_id", Integer.valueOf(this.f12584h.C()));
        this.f12584h.getClass();
        putOpt3.putOpt("commit_hash", "a72bf6f57701ed3c2b8ed570054febbff4e58c12");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(Bm bm, C0839s.a aVar, vn<C0906ui.b, Object> vnVar) {
        Location location;
        K2 k22;
        C0445c0 c0445c0 = bm.f9809a;
        this.f12583g.put(Constants.NAME, c0445c0.f12098a);
        this.f12583g.put("value", c0445c0.f12099b);
        this.f12583g.put("type", Integer.valueOf(c0445c0.f12102e));
        this.f12583g.put("custom_type", Integer.valueOf(c0445c0.f12103f));
        this.f12583g.put("error_environment", c0445c0.h());
        this.f12583g.put("user_info", c0445c0.p());
        this.f12583g.put("truncated", Integer.valueOf(c0445c0.f12105h));
        this.f12583g.put("connection_type", Integer.valueOf(H1.b(this.f12577a)));
        this.f12583g.put("profile_id", c0445c0.m());
        this.f12583g.put("encrypting_mode", Integer.valueOf(bm.f9810b.a()));
        this.f12583g.put("first_occurrence_status", Integer.valueOf(c0445c0.j().f9867a));
        EnumC0984y0 n10 = c0445c0.n();
        if (n10 != null) {
            this.f12583g.put(ClimateForcast.SOURCE, Integer.valueOf(n10.f13974a));
        }
        Boolean c10 = c0445c0.c();
        if (c10 != null) {
            this.f12583g.put("attribution_id_changed", c10);
        }
        this.f12583g.put("open_id", c0445c0.k());
        this.f12583g.put("extras", this.f12582f.fromModel(c0445c0.i()));
        this.f12583g.put("app_environment", aVar.f13570a);
        this.f12583g.put("app_environment_revision", Long.valueOf(aVar.f13571b));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("enabled", this.f12584h.Q());
            if (this.f12584h.Q()) {
                location = this.f12584h.H();
                if (location == null) {
                    location = this.f12580d.a();
                    k22 = null;
                } else {
                    k22 = K2.a(location);
                }
            } else {
                location = null;
                k22 = null;
            }
            if (k22 == null && location != null) {
                k22 = K2.b(location);
            }
            if (k22 != null) {
                a(jSONObject, k22);
            }
            this.f12583g.put("location_info", jSONObject.toString());
        } catch (Throwable unused) {
        }
        EnumMap enumMap = new EnumMap(C0906ui.b.class);
        Xj v10 = F0.g().v();
        LinkedList linkedList = new LinkedList();
        v10.a(new C0570h0(this, linkedList));
        C0906ui.b bVar = C0906ui.b.WIFI;
        enumMap.put((EnumMap) bVar, (C0906ui.b) this.f12581e.a());
        C0906ui.b bVar2 = C0906ui.b.CELL;
        enumMap.put((EnumMap) bVar2, (C0906ui.b) (linkedList.isEmpty() ? null : (Collection) linkedList.getFirst()));
        zn<Map<C0906ui.b, Object>> a10 = vnVar.a(enumMap);
        this.f12583g.put("has_omitted_data", Integer.valueOf(a10.f14093a == zn.a.NOT_CHANGED ? 1 : 0));
        zn.a aVar2 = a10.f14093a;
        D d10 = a10.f14094b;
        Collection collection = d10 == 0 ? null : (Collection) ((Map) d10).get(bVar2);
        v10.a(new C0545g0(this));
        zn.a aVar3 = zn.a.NEW;
        if ((aVar2 == aVar3 || aVar2 == zn.a.REFRESH) && collection != null) {
            this.f12583g.put("cell_info", Tl.a((Collection<C0907uj>) collection).toString());
        }
        zn.a aVar4 = a10.f14093a;
        D d11 = a10.f14094b;
        Collection collection2 = d11 != 0 ? (Collection) ((Map) d11).get(bVar) : null;
        if ((aVar4 == zn.a.REFRESH || aVar4 == aVar3) && collection2 != null) {
            this.f12583g.put("wifi_network_info", F2.a(collection2).toString());
        }
        this.f12583g.put("battery_charge_type", Integer.valueOf(this.f12578b.b().a()));
        this.f12583g.put("collection_mode", C0756oc.a.a(this.f12579c.c()).a());
    }

    private void a(JSONObject jSONObject, K2 k22) {
        jSONObject.put("lat", k22.getLatitude());
        jSONObject.put("lon", k22.getLongitude());
        jSONObject.putOpt(io.flutter.plugins.firebase.crashlytics.Constants.TIMESTAMP, Long.valueOf(k22.getTime()));
        jSONObject.putOpt("precision", k22.hasAccuracy() ? Float.valueOf(k22.getAccuracy()) : null);
        jSONObject.putOpt("direction", k22.hasBearing() ? Float.valueOf(k22.getBearing()) : null);
        jSONObject.putOpt(FFmpegKitFlutterPlugin.KEY_STATISTICS_SPEED, k22.hasSpeed() ? Float.valueOf(k22.getSpeed()) : null);
        jSONObject.putOpt("altitude", k22.hasAltitude() ? Double.valueOf(k22.getAltitude()) : null);
        jSONObject.putOpt("provider", C0419b.a(k22.getProvider(), (String) null));
        jSONObject.putOpt("original_provider", k22.a());
    }
}
