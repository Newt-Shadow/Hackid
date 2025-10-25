package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import com.yandex.metrica.impl.ob.C0756oc;
import com.yandex.metrica.impl.ob.E;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.UnsupportedEncodingException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Vb {

    /* renamed from: a  reason: collision with root package name */
    private Context f11658a;

    public Vb(Context context) {
        this.f11658a = context;
    }

    public String a(Hc hc2) {
        String str;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("collection_mode", hc2.f10196a.a());
            jSONObject.put("lat", hc2.c().getLatitude());
            jSONObject.put("lon", hc2.c().getLongitude());
            jSONObject.putOpt(Constants.TIMESTAMP, Long.valueOf(hc2.c().getTime()));
            jSONObject.putOpt("receive_timestamp", Long.valueOf(hc2.e()));
            jSONObject.put("receive_elapsed_realtime_seconds", hc2.d());
            jSONObject.putOpt("precision", hc2.c().hasAccuracy() ? Float.valueOf(hc2.c().getAccuracy()) : null);
            jSONObject.putOpt("direction", hc2.c().hasBearing() ? Float.valueOf(hc2.c().getBearing()) : null);
            jSONObject.putOpt(FFmpegKitFlutterPlugin.KEY_STATISTICS_SPEED, hc2.c().hasSpeed() ? Float.valueOf(hc2.c().getSpeed()) : null);
            jSONObject.putOpt("altitude", hc2.c().hasAltitude() ? Double.valueOf(hc2.c().getAltitude()) : null);
            jSONObject.putOpt("provider", C0419b.a(hc2.c().getProvider(), (String) null));
            jSONObject.put("charge_type", hc2.a().a());
            str = jSONObject.toString();
        } catch (Throwable unused) {
            str = null;
        }
        if (str != null) {
            try {
                return Tl.b(this.f11658a, str);
            } catch (UnsupportedEncodingException unused2) {
                return null;
            }
        }
        return null;
    }

    public Hc b(long j10, String str) {
        String str2;
        try {
            str2 = Tl.a(this.f11658a, str);
        } catch (UnsupportedEncodingException unused) {
            str2 = null;
        }
        if (str2 != null && !TextUtils.isEmpty(str2)) {
            try {
                JSONObject jSONObject = new JSONObject(str2);
                long optLong = jSONObject.optLong("receive_timestamp", 0L);
                long optLong2 = jSONObject.optLong("receive_elapsed_realtime_seconds", 0L);
                C0756oc.a a10 = C0756oc.a.a(jSONObject.optString("collection_mode"));
                Location location = new Location(jSONObject.optString("provider", null));
                location.setLongitude(jSONObject.optDouble("lon", 0.0d));
                location.setLatitude(jSONObject.optDouble("lat", 0.0d));
                location.setTime(jSONObject.optLong(Constants.TIMESTAMP, 0L));
                location.setAccuracy((float) jSONObject.optDouble("precision", 0.0d));
                location.setBearing((float) jSONObject.optDouble("direction", 0.0d));
                location.setSpeed((float) jSONObject.optDouble(FFmpegKitFlutterPlugin.KEY_STATISTICS_SPEED, 0.0d));
                location.setAltitude(jSONObject.optDouble("altitude", 0.0d));
                return new Hc(a10, optLong, optLong2, location, E.b.a.a(Integer.valueOf(jSONObject.optInt("charge_type", Integer.MIN_VALUE))), Long.valueOf(j10));
            } catch (Throwable unused2) {
            }
        }
        return null;
    }

    public C0681lc a(long j10, String str) {
        String str2;
        try {
            str2 = Tl.a(this.f11658a, str);
        } catch (UnsupportedEncodingException unused) {
            str2 = null;
        }
        if (str2 == null || TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            C0681lc c0681lc = new C0681lc();
            try {
                c0681lc.a(Long.valueOf(j10));
                JSONObject jSONObject = new JSONObject(str2);
                c0681lc.b(jSONObject.optLong(Constants.TIMESTAMP, 0L));
                c0681lc.a(jSONObject.optLong("elapsed_realtime_seconds", 0L));
                c0681lc.a(jSONObject.optJSONArray("cell_info"));
                c0681lc.b(jSONObject.optJSONArray("wifi_info"));
                c0681lc.a(E.b.a.a(Integer.valueOf(jSONObject.optInt("charge_type", Integer.MIN_VALUE))));
                c0681lc.a(C0756oc.a.a(jSONObject.optString("collection_mode")));
            } catch (Throwable unused2) {
            }
            return c0681lc;
        } catch (Throwable unused3) {
            return null;
        }
    }

    public String a(C0681lc c0681lc) {
        String str;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Constants.TIMESTAMP, c0681lc.d());
            jSONObject.put("elapsed_realtime_seconds", c0681lc.c());
            jSONObject.putOpt("wifi_info", c0681lc.g());
            jSONObject.putOpt("cell_info", c0681lc.a());
            if (c0681lc.b() != null) {
                jSONObject.put("charge_type", c0681lc.b().a());
            }
            if (c0681lc.e() != null) {
                jSONObject.put("collection_mode", c0681lc.e().a());
            }
            str = jSONObject.toString();
        } catch (Throwable unused) {
            str = null;
        }
        if (str != null) {
            try {
            } catch (UnsupportedEncodingException unused2) {
                return null;
            }
        }
        return Tl.b(this.f11658a, str);
    }
}
