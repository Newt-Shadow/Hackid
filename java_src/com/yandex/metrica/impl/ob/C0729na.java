package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import com.yandex.metrica.PreloadInfo;
import com.yandex.metrica.YandexMetricaConfig;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.na  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0729na implements InterfaceC0850sa<YandexMetricaConfig> {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0442bm f12982a;

    /* renamed from: b  reason: collision with root package name */
    private final C0994ya f12983b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0729na(InterfaceC0442bm interfaceC0442bm, C0994ya c0994ya) {
        this.f12982a = interfaceC0442bm;
        this.f12983b = c0994ya;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0850sa
    public JSONObject a(YandexMetricaConfig yandexMetricaConfig) {
        JSONArray b10;
        YandexMetricaConfig yandexMetricaConfig2 = yandexMetricaConfig;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (yandexMetricaConfig2 != null) {
                JSONObject putOpt = jSONObject2.put("api_key", yandexMetricaConfig2.apiKey).putOpt("app_version", yandexMetricaConfig2.appVersion).putOpt("session_timeout", yandexMetricaConfig2.sessionTimeout).putOpt("crash_reporting", yandexMetricaConfig2.crashReporting).putOpt("native_crash_reporting", yandexMetricaConfig2.nativeCrashReporting).putOpt("location", a(yandexMetricaConfig2.location)).putOpt("location_tracking", yandexMetricaConfig2.locationTracking).putOpt("logs", yandexMetricaConfig2.logs);
                PreloadInfo preloadInfo = yandexMetricaConfig2.preloadInfo;
                putOpt.putOpt("preload_info", preloadInfo == null ? null : new JSONObject().putOpt("tracking_id", preloadInfo.getTrackingId()).putOpt("additional_parameters", Tl.f(preloadInfo.getAdditionalParams()))).putOpt("first_activation_as_update", yandexMetricaConfig2.firstActivationAsUpdate).putOpt("statistics_sending", yandexMetricaConfig2.statisticsSending).putOpt("max_reports_in_database_count", yandexMetricaConfig2.maxReportsInDatabaseCount).putOpt("error_environment", Tl.f(yandexMetricaConfig2.errorEnvironment)).putOpt("user_profile_id", yandexMetricaConfig2.userProfileID).putOpt("revenue_auto_tracking_enabled", yandexMetricaConfig2.revenueAutoTrackingEnabled).putOpt("sessions_auto_tracking_enabled", yandexMetricaConfig2.sessionsAutoTrackingEnabled).putOpt("app_open_tracking_enabled", yandexMetricaConfig2.appOpenTrackingEnabled);
                if (yandexMetricaConfig2 instanceof com.yandex.metrica.j) {
                    com.yandex.metrica.j jVar = (com.yandex.metrica.j) yandexMetricaConfig2;
                    JSONObject putOpt2 = jSONObject2.putOpt(CommonUrlParts.DEVICE_TYPE, jVar.f14099a).putOpt("clids", Tl.f(jVar.f14100b)).putOpt("distribution_referrer", jVar.f14101c);
                    List list = jVar.f14102d;
                    if (list == null) {
                        b10 = null;
                    } else if (list.isEmpty()) {
                        b10 = new JSONArray();
                    } else {
                        b10 = Tl.b((List<?>) list);
                    }
                    JSONObject putOpt3 = putOpt2.putOpt("custom_hosts", b10).putOpt(CommonUrlParts.APP_VERSION_CODE, jVar.f14103e).putOpt("dispatch_period_seconds", jVar.f14104f).putOpt("max_reports_count", jVar.f14105g).putOpt("app_environment", Tl.f(jVar.f14106h)).putOpt("preload_info_auto_tracking", jVar.f14107i).putOpt("permissions_collection", jVar.f14108j).putOpt("anr_monitoring", jVar.f14109k);
                    this.f12983b.getClass();
                    putOpt3.putOpt("pulse_config", null).putOpt("rtm_config", null).put("crash_transformer_set", false);
                }
            }
            jSONObject.putOpt("config", jSONObject2).putOpt("process_name", ((Xl) this.f12982a).b());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private JSONObject a(Location location) {
        if (location == null) {
            return null;
        }
        return new JSONObject().putOpt("provider", location.getProvider()).put(Constants.TIMESTAMP, location.getTime()).put("precision", location.getAccuracy()).put("altitude", location.getAltitude()).put("lon", location.getLongitude()).put("lat", location.getLatitude()).put("direction", location.getBearing()).put(FFmpegKitFlutterPlugin.KEY_STATISTICS_SPEED, location.getSpeed());
    }
}
