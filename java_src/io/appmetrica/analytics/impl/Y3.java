package io.appmetrica.analytics.impl;

import android.location.Location;
import android.text.TextUtils;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.appmetrica.analytics.PreloadInfo;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class Y3 {
    public static String a(Location location) {
        if (location == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("provider", location.getProvider());
            jSONObject.put(FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME, location.getTime());
            jSONObject.put("accuracy", location.getAccuracy());
            jSONObject.put("alt", location.getAltitude());
            jSONObject.put("lng", location.getLongitude());
            jSONObject.put("lat", location.getLatitude());
            return jSONObject.toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static PreloadInfo b(String str) {
        String str2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        if (jSONObject.has("trackid")) {
            str2 = jSONObject.optString("trackid");
        }
        PreloadInfo.Builder newBuilder = PreloadInfo.newBuilder(str2);
        HashMap c10 = AbstractC1491sb.c(jSONObject.optString("params"));
        if (c10 != null && c10.size() > 0) {
            for (Map.Entry entry : c10.entrySet()) {
                newBuilder.setAdditionalParams((String) entry.getKey(), (String) entry.getValue());
            }
        }
        return newBuilder.build();
    }

    public static Location a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Location location = new Location(jSONObject.has("provider") ? jSONObject.optString("provider") : null);
            location.setLongitude(jSONObject.getDouble("lng"));
            location.setLatitude(jSONObject.getDouble("lat"));
            location.setTime(jSONObject.optLong(FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME));
            location.setAccuracy((float) jSONObject.optDouble("accuracy"));
            location.setAltitude((float) jSONObject.optDouble("alt"));
            return location;
        } catch (Throwable unused) {
            return null;
        }
    }
}
