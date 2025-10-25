package io.appmetrica.analytics.impl;

import android.net.Uri;
import android.text.TextUtils;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.appmetrica.analytics.coreapi.internal.control.DataSendingRestrictionController;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfoResult;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsHolder;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.appmetrica.analytics.networktasks.internal.IParamsAppender;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Il implements IParamsAppender {

    /* renamed from: a  reason: collision with root package name */
    public final C1171fe f18410a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC1568vd f18411b;

    /* renamed from: c  reason: collision with root package name */
    public final Sb f18412c = new Sb();

    public Il(C1171fe c1171fe, InterfaceC1568vd interfaceC1568vd) {
        this.f18410a = c1171fe;
        this.f18411b = interfaceC1568vd;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.IParamsAppender
    /* renamed from: a */
    public final void appendParams(Uri.Builder builder, Ml ml) {
        C1322lg c1322lg;
        builder.path("analytics/startup");
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.DEVICE_ID), ml.getDeviceId());
        a(builder, C1665za.E.g(), this.f18412c);
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.APP_SET_ID), ml.getAppSetId());
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.APP_SET_ID_SCOPE), ml.getAppSetIdScope());
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.APP_PLATFORM), ml.getAppPlatform());
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.PROTOCOL_VERSION), ml.getProtocolVersion());
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.ANALYTICS_SDK_VERSION_NAME), ml.getAnalyticsSdkVersionName());
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.MODEL), ml.getModel());
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.MANUFACTURER), ml.getManufacturer());
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.OS_VERSION), ml.getOsVersion());
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.SCREEN_WIDTH), String.valueOf(ml.getScreenWidth()));
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.SCREEN_HEIGHT), String.valueOf(ml.getScreenHeight()));
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.SCREEN_DPI), String.valueOf(ml.getScreenDpi()));
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.SCALE_FACTOR), String.valueOf(ml.getScaleFactor()));
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.LOCALE), ml.getLocale());
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.DEVICE_TYPE), ml.getDeviceType());
        builder.appendQueryParameter(this.f18410a.a("queries"), String.valueOf(1));
        builder.appendQueryParameter(this.f18410a.a("query_hosts"), String.valueOf(2));
        String a10 = this.f18410a.a("features");
        List<String> h10 = ((C1301kk) this.f18411b).h();
        String[] strArr = {this.f18410a.a("permissions_collecting"), this.f18410a.a("features_collecting"), this.f18410a.a("google_aid"), this.f18410a.a("huawei_oaid"), this.f18410a.a("sim_info"), this.f18410a.a("ssl_pinning")};
        ArrayList arrayList = new ArrayList(h10);
        arrayList.addAll(Arrays.asList(strArr));
        builder.appendQueryParameter(a10, StringUtils.wrapFeatures((String[]) arrayList.toArray(new String[0])));
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.APP_ID), ml.getPackageName());
        builder.appendQueryParameter(this.f18410a.a("app_debuggable"), ((C1088c6) ml).f19469a);
        if (ml.f18617l) {
            String str = ml.f18618m;
            if (!TextUtils.isEmpty(str)) {
                builder.appendQueryParameter(this.f18410a.a("country_init"), str);
            }
        } else {
            builder.appendQueryParameter(this.f18410a.a("detect_locale"), String.valueOf(1));
        }
        J3 j32 = ml.f18614i;
        if (!Rn.a(j32.f18422a)) {
            builder.appendQueryParameter(this.f18410a.a("distribution_customization"), String.valueOf(1));
            builder.appendQueryParameter(this.f18410a.a("clids_set"), AbstractC1477rm.a(j32.f18422a));
            int ordinal = j32.f18423b.ordinal();
            builder.appendQueryParameter(this.f18410a.a("clids_set_source"), ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? "" : "retail" : "satellite" : "api");
            String str2 = ml.f18611f;
            String str3 = ml.f18612g;
            if (TextUtils.isEmpty(str2) && (c1322lg = ml.f18620o.f19861b) != null) {
                str2 = c1322lg.f20033a;
                str3 = c1322lg.f20036d.f19976a;
            }
            if (!TextUtils.isEmpty(str2)) {
                builder.appendQueryParameter(this.f18410a.a("install_referrer"), str2);
                if (str3 == null) {
                    str3 = "null";
                }
                builder.appendQueryParameter(this.f18410a.a("install_referrer_source"), str3);
            }
        }
        String uuid = ml.getUuid();
        if (!TextUtils.isEmpty(uuid)) {
            builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.UUID), uuid);
        }
        builder.appendQueryParameter(this.f18410a.a(FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME), String.valueOf(1));
        builder.appendQueryParameter(this.f18410a.a("stat_sending"), String.valueOf(1));
        builder.appendQueryParameter(this.f18410a.a("retry_policy"), String.valueOf(1));
        builder.appendQueryParameter(this.f18410a.a("cache_control"), String.valueOf(1));
        builder.appendQueryParameter(this.f18410a.a("permissions_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.f18410a.a("app_system_flag"), ((C1088c6) ml).f19470b);
        builder.appendQueryParameter(this.f18410a.a("auto_inapp_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.f18410a.a("attribution"), String.valueOf(1));
        builder.appendQueryParameter(this.f18410a.a("startup_update"), String.valueOf(1));
        builder.appendQueryParameter(this.f18410a.a("external_attribution"), String.valueOf(1));
        Map<String, Integer> d10 = ((C1301kk) this.f18411b).d();
        for (String str4 : d10.keySet()) {
            builder.appendQueryParameter(str4, String.valueOf(d10.get(str4)));
        }
    }

    public final void a(Uri.Builder builder, DataSendingRestrictionController dataSendingRestrictionController, Sb sb2) {
        sb2.getClass();
        AdvertisingIdsHolder identifiers = C1665za.E.b().getIdentifiers();
        if (identifiers != null && !dataSendingRestrictionController.isRestrictedForReporter()) {
            AdTrackingInfoResult google = identifiers.getGoogle();
            if (!google.isValid()) {
                builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.ADV_ID), "");
            } else {
                builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.ADV_ID), google.mAdTrackingInfo.advId);
            }
            AdTrackingInfoResult huawei = identifiers.getHuawei();
            if (!huawei.isValid()) {
                builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.HUAWEI_OAID), "");
            } else {
                builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.HUAWEI_OAID), huawei.mAdTrackingInfo.advId);
            }
            AdTrackingInfoResult yandex = identifiers.getYandex();
            if (!yandex.isValid()) {
                builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.YANDEX_ADV_ID), "");
                return;
            } else {
                builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.YANDEX_ADV_ID), yandex.mAdTrackingInfo.advId);
                return;
            }
        }
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.ADV_ID), "");
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.HUAWEI_OAID), "");
        builder.appendQueryParameter(this.f18410a.a(CommonUrlParts.YANDEX_ADV_ID), "");
    }
}
