package com.yandex.metrica.impl.ob;

import android.net.Uri;
import android.text.TextUtils;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import com.yandex.metrica.impl.ob.C0915v3;
import com.yandex.metrica.networktasks.api.IParamsAppender;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes2.dex */
public class Rg implements IParamsAppender {

    /* renamed from: a  reason: collision with root package name */
    private final Kg f11220a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0657kd f11221b;

    public Rg(Kg kg, InterfaceC0657kd interfaceC0657kd) {
        this.f11220a = kg;
        this.f11221b = interfaceC0657kd;
    }

    private void a(Uri.Builder builder, C0899ub c0899ub, String str) {
        if (!c0899ub.a()) {
            builder.appendQueryParameter(this.f11220a.a(str), "");
        } else {
            builder.appendQueryParameter(this.f11220a.a(str), c0899ub.f13685a.f13629b);
        }
    }

    @Override // com.yandex.metrica.networktasks.api.IParamsAppender
    public void appendParams(Uri.Builder builder, Object obj) {
        int i10;
        String str;
        C0486dg a10;
        Mg mg = (Mg) obj;
        builder.path("analytics/startup");
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.DEVICE_ID), mg.g());
        C0842s2 u10 = F0.g().u();
        C1019zb a11 = mg.a();
        if (u10.c()) {
            builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.ADV_ID), "");
            builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.HUAWEI_OAID), "");
            builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.YANDEX_ADV_ID), "");
        } else {
            a(builder, a11.a(), CommonUrlParts.ADV_ID);
            a(builder, a11.b(), CommonUrlParts.HUAWEI_OAID);
            a(builder, a11.c(), CommonUrlParts.YANDEX_ADV_ID);
        }
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.APP_SET_ID), mg.d());
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.APP_SET_ID_SCOPE), mg.e());
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.APP_PLATFORM), "android");
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.PROTOCOL_VERSION), "2");
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.ANALYTICS_SDK_VERSION_NAME), "5.3.0");
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.MODEL), mg.m());
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.MANUFACTURER), mg.l());
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.OS_VERSION), mg.o());
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.SCREEN_WIDTH), String.valueOf(mg.u()));
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.SCREEN_HEIGHT), String.valueOf(mg.t()));
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.SCREEN_DPI), String.valueOf(mg.s()));
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.SCALE_FACTOR), String.valueOf(mg.r()));
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.LOCALE), mg.k());
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.DEVICE_TYPE), mg.i());
        builder.appendQueryParameter(this.f11220a.a("queries"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("query_hosts"), String.valueOf(2));
        String a12 = this.f11220a.a("features");
        ArrayList arrayList = new ArrayList(this.f11221b.b());
        arrayList.addAll(Arrays.asList(this.f11220a.a("easy_collecting"), this.f11220a.a("egress"), this.f11220a.a("package_info"), this.f11220a.a("socket"), this.f11220a.a("permissions_collecting"), this.f11220a.a("features_collecting"), this.f11220a.a("location_collecting"), this.f11220a.a("lbs_collecting"), this.f11220a.a("google_aid"), this.f11220a.a("huawei_oaid"), this.f11220a.a("throttling"), this.f11220a.a("wifi_around"), this.f11220a.a("wifi_connected"), this.f11220a.a("cells_around"), this.f11220a.a("sim_info"), this.f11220a.a("sdk_list"), this.f11220a.a("identity_light_collecting"), this.f11220a.a("gpl_collecting"), this.f11220a.a("ui_parsing"), this.f11220a.a("ui_collecting_for_bridge"), this.f11220a.a("ui_event_sending"), this.f11220a.a("ui_raw_event_sending"), this.f11220a.a("cell_additional_info"), this.f11220a.a("cell_additional_info_connected_only"), this.f11220a.a("ssl_pinning")));
        builder.appendQueryParameter(a12, TextUtils.join(StringUtils.COMMA, (String[]) arrayList.toArray(new String[0])));
        builder.appendQueryParameter(this.f11220a.a("socket"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.APP_ID), mg.p());
        builder.appendQueryParameter(this.f11220a.a("location_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("app_debuggable"), mg.z());
        builder.appendQueryParameter(this.f11220a.a("sdk_list"), String.valueOf(1));
        if (mg.L()) {
            String D = mg.D();
            if (!TextUtils.isEmpty(D)) {
                builder.appendQueryParameter(this.f11220a.a("country_init"), D);
            }
            i10 = 1;
        } else {
            i10 = 1;
            builder.appendQueryParameter(this.f11220a.a("detect_locale"), String.valueOf(1));
        }
        C0915v3.a B = mg.B();
        if (!A2.b(B.b())) {
            builder.appendQueryParameter(this.f11220a.a("distribution_customization"), String.valueOf(i10));
            builder.appendQueryParameter(this.f11220a.a("clids_set"), Tl.c(B.b()));
            int ordinal = B.a().ordinal();
            if (ordinal != i10) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        str = "";
                    } else {
                        str = "retail";
                    }
                } else {
                    str = "satellite";
                }
            } else {
                str = "api";
            }
            builder.appendQueryParameter(this.f11220a.a("clids_set_source"), str);
            String E = mg.E();
            String F = mg.F();
            if (TextUtils.isEmpty(E) && (a10 = mg.H().a()) != null) {
                E = a10.f12217a;
                F = a10.f12220d.f12225a;
            }
            if (!TextUtils.isEmpty(E)) {
                builder.appendQueryParameter(this.f11220a.a("install_referrer"), E);
                if (F == null) {
                    F = "null";
                }
                builder.appendQueryParameter(this.f11220a.a("install_referrer_source"), F);
            }
        }
        String w10 = mg.w();
        if (!TextUtils.isEmpty(w10)) {
            builder.appendQueryParameter(this.f11220a.a(CommonUrlParts.UUID), w10);
        }
        builder.appendQueryParameter(this.f11220a.a(FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("requests"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("stat_sending"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("permissions"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("identity_light_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("ui_parsing"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("ui_collecting_for_bridge"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("ui_event_sending"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("ui_raw_event_sending"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("retry_policy"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("throttling"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("cache_control"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("mediascope_api_keys"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("diagnostics"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("permissions_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("app_system_flag"), mg.A());
        builder.appendQueryParameter(this.f11220a.a("auto_inapp_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("attribution"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("easy_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("egress"), String.valueOf(1));
        builder.appendQueryParameter(this.f11220a.a("startup_update"), String.valueOf(1));
        Map<String, Integer> a13 = this.f11221b.a();
        for (String str2 : a13.keySet()) {
            builder.appendQueryParameter(str2, String.valueOf(a13.get(str2)));
        }
    }
}
