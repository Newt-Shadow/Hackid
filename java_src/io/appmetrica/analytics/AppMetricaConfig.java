package io.appmetrica.analytics;

import android.location.Location;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.impl.AbstractC1491sb;
import io.appmetrica.analytics.impl.C1032a0;
import io.appmetrica.analytics.impl.C1304kn;
import io.appmetrica.analytics.impl.C5;
import io.appmetrica.analytics.impl.O7;
import io.appmetrica.analytics.impl.Y3;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AppMetricaConfig {
    public final Map<String, Object> additionalConfig;
    public final Boolean advIdentifiersTracking;
    public final Boolean anrMonitoring;
    public final Integer anrMonitoringTimeout;
    public final String apiKey;
    public final Integer appBuildNumber;
    public final Map<String, String> appEnvironment;
    public final Boolean appOpenTrackingEnabled;
    public final String appVersion;
    public final Boolean crashReporting;
    public final ICrashTransformer crashTransformer;
    public final List<String> customHosts;
    public final Boolean dataSendingEnabled;
    public final String deviceType;
    public final Integer dispatchPeriodSeconds;
    public final Map<String, String> errorEnvironment;
    public final Boolean firstActivationAsUpdate;
    public final Location location;
    public final Boolean locationTracking;
    public final Boolean logs;
    public final Integer maxReportsCount;
    public final Integer maxReportsInDatabaseCount;
    public final Boolean nativeCrashReporting;
    public final PreloadInfo preloadInfo;
    public final Boolean revenueAutoTrackingEnabled;
    public final Integer sessionTimeout;
    public final Boolean sessionsAutoTrackingEnabled;
    public final String userProfileID;

    /* loaded from: classes2.dex */
    public static class Builder {
        private static final C1304kn D = new C1304kn(new C1032a0());
        private Integer A;
        private List B;
        private final HashMap C;

        /* renamed from: a  reason: collision with root package name */
        private final C5 f17472a;

        /* renamed from: b  reason: collision with root package name */
        private final String f17473b;

        /* renamed from: c  reason: collision with root package name */
        private String f17474c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f17475d;

        /* renamed from: e  reason: collision with root package name */
        private Boolean f17476e;

        /* renamed from: f  reason: collision with root package name */
        private Boolean f17477f;

        /* renamed from: g  reason: collision with root package name */
        private Location f17478g;

        /* renamed from: h  reason: collision with root package name */
        private Boolean f17479h;

        /* renamed from: i  reason: collision with root package name */
        private Boolean f17480i;

        /* renamed from: j  reason: collision with root package name */
        private Boolean f17481j;

        /* renamed from: k  reason: collision with root package name */
        private PreloadInfo f17482k;

        /* renamed from: l  reason: collision with root package name */
        private Boolean f17483l;

        /* renamed from: m  reason: collision with root package name */
        private Boolean f17484m;

        /* renamed from: n  reason: collision with root package name */
        private Integer f17485n;

        /* renamed from: o  reason: collision with root package name */
        private final LinkedHashMap f17486o;

        /* renamed from: p  reason: collision with root package name */
        private String f17487p;

        /* renamed from: q  reason: collision with root package name */
        private Boolean f17488q;

        /* renamed from: r  reason: collision with root package name */
        private Boolean f17489r;

        /* renamed from: s  reason: collision with root package name */
        private Boolean f17490s;

        /* renamed from: t  reason: collision with root package name */
        private String f17491t;

        /* renamed from: u  reason: collision with root package name */
        private Integer f17492u;

        /* renamed from: v  reason: collision with root package name */
        private Integer f17493v;

        /* renamed from: w  reason: collision with root package name */
        private Integer f17494w;

        /* renamed from: x  reason: collision with root package name */
        private final LinkedHashMap f17495x;

        /* renamed from: y  reason: collision with root package name */
        private ICrashTransformer f17496y;

        /* renamed from: z  reason: collision with root package name */
        private Boolean f17497z;

        /* synthetic */ Builder(String str, int i10) {
            this(str);
        }

        public AppMetricaConfig build() {
            return new AppMetricaConfig(this, 0);
        }

        public Builder handleFirstActivationAsUpdate(boolean z10) {
            this.f17483l = Boolean.valueOf(z10);
            return this;
        }

        public Builder withAdditionalConfig(String str, Object obj) {
            this.C.put(str, obj);
            return this;
        }

        public Builder withAdvIdentifiersTracking(boolean z10) {
            this.f17480i = Boolean.valueOf(z10);
            return this;
        }

        public Builder withAnrMonitoring(boolean z10) {
            this.f17497z = Boolean.valueOf(z10);
            return this;
        }

        public Builder withAnrMonitoringTimeout(int i10) {
            this.A = Integer.valueOf(i10);
            return this;
        }

        public Builder withAppBuildNumber(int i10) {
            if (i10 >= 0) {
                this.f17492u = Integer.valueOf(i10);
                return this;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "Invalid %1$s. %1$s should be positive.", "App Build Number"));
        }

        public Builder withAppEnvironmentValue(String str, String str2) {
            this.f17495x.put(str, str2);
            return this;
        }

        public Builder withAppOpenTrackingEnabled(boolean z10) {
            this.f17490s = Boolean.valueOf(z10);
            return this;
        }

        public Builder withAppVersion(String str) {
            this.f17474c = str;
            return this;
        }

        public Builder withCrashReporting(boolean z10) {
            this.f17476e = Boolean.valueOf(z10);
            return this;
        }

        public Builder withCrashTransformer(ICrashTransformer iCrashTransformer) {
            this.f17496y = iCrashTransformer;
            return this;
        }

        public Builder withCustomHosts(List<String> list) {
            this.B = CollectionUtils.unmodifiableListCopy(list);
            return this;
        }

        public Builder withDataSendingEnabled(boolean z10) {
            this.f17484m = Boolean.valueOf(z10);
            return this;
        }

        public Builder withDeviceType(String str) {
            this.f17491t = str;
            return this;
        }

        public Builder withDispatchPeriodSeconds(int i10) {
            this.f17493v = Integer.valueOf(i10);
            return this;
        }

        public Builder withErrorEnvironmentValue(String str, String str2) {
            this.f17486o.put(str, str2);
            return this;
        }

        public Builder withLocation(Location location) {
            this.f17478g = location;
            return this;
        }

        public Builder withLocationTracking(boolean z10) {
            this.f17479h = Boolean.valueOf(z10);
            return this;
        }

        public Builder withLogs() {
            this.f17481j = Boolean.TRUE;
            return this;
        }

        public Builder withMaxReportsCount(int i10) {
            this.f17494w = Integer.valueOf(i10);
            return this;
        }

        public Builder withMaxReportsInDatabaseCount(int i10) {
            this.f17485n = Integer.valueOf(this.f17472a.a(i10));
            return this;
        }

        public Builder withNativeCrashReporting(boolean z10) {
            this.f17477f = Boolean.valueOf(z10);
            return this;
        }

        public Builder withPreloadInfo(PreloadInfo preloadInfo) {
            this.f17482k = preloadInfo;
            return this;
        }

        public Builder withRevenueAutoTrackingEnabled(boolean z10) {
            this.f17488q = Boolean.valueOf(z10);
            return this;
        }

        public Builder withSessionTimeout(int i10) {
            this.f17475d = Integer.valueOf(i10);
            return this;
        }

        public Builder withSessionsAutoTrackingEnabled(boolean z10) {
            this.f17489r = Boolean.valueOf(z10);
            return this;
        }

        public Builder withUserProfileID(String str) {
            this.f17487p = str;
            return this;
        }

        private Builder(String str) {
            this.f17486o = new LinkedHashMap();
            this.f17495x = new LinkedHashMap();
            this.C = new HashMap();
            D.a(str);
            this.f17472a = new C5(str);
            this.f17473b = str;
        }
    }

    /* synthetic */ AppMetricaConfig(Builder builder, int i10) {
        this(builder);
    }

    public static AppMetricaConfig fromJson(String str) {
        AppMetricaConfig appMetricaConfig;
        HashMap c10;
        HashMap c11;
        new O7();
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                Builder newConfigBuilder = newConfigBuilder(jSONObject.getString("apikey"));
                if (jSONObject.has("app_version")) {
                    newConfigBuilder.withAppVersion(jSONObject.optString("app_version"));
                }
                if (jSONObject.has("session_timeout")) {
                    newConfigBuilder.withSessionTimeout(jSONObject.getInt("session_timeout"));
                }
                newConfigBuilder.withLocation(Y3.a(jSONObject.optString("location")));
                newConfigBuilder.withPreloadInfo(Y3.b(jSONObject.optString("preload_info")));
                if (jSONObject.has("logs") && jSONObject.optBoolean("logs")) {
                    newConfigBuilder.withLogs();
                }
                if (jSONObject.has("crash_enabled")) {
                    newConfigBuilder.withCrashReporting(jSONObject.optBoolean("crash_enabled"));
                }
                if (jSONObject.has("crash_native_enabled")) {
                    newConfigBuilder.withNativeCrashReporting(jSONObject.optBoolean("crash_native_enabled"));
                }
                if (jSONObject.has("location_enabled")) {
                    newConfigBuilder.withLocationTracking(jSONObject.optBoolean("location_enabled"));
                }
                if (jSONObject.has("adv_identifiers_tracking")) {
                    newConfigBuilder.withAdvIdentifiersTracking(jSONObject.optBoolean("adv_identifiers_tracking", true));
                }
                if (jSONObject.has("max_reports_in_db_count")) {
                    newConfigBuilder.withMaxReportsInDatabaseCount(jSONObject.optInt("max_reports_in_db_count"));
                }
                if (jSONObject.has("error_environment") && (c11 = AbstractC1491sb.c(jSONObject.optString("error_environment"))) != null) {
                    for (Map.Entry entry : c11.entrySet()) {
                        newConfigBuilder.withErrorEnvironmentValue((String) entry.getKey(), (String) entry.getValue());
                    }
                }
                if (jSONObject.has("first_activation_as_update")) {
                    newConfigBuilder.handleFirstActivationAsUpdate(jSONObject.optBoolean("first_activation_as_update"));
                }
                if (jSONObject.has("data_sending_enabled")) {
                    newConfigBuilder.withDataSendingEnabled(jSONObject.optBoolean("data_sending_enabled"));
                }
                if (jSONObject.has("user_profile_id")) {
                    appMetricaConfig = null;
                    try {
                        newConfigBuilder.withUserProfileID(jSONObject.optString("user_profile_id", null));
                    } catch (Throwable unused) {
                    }
                } else {
                    appMetricaConfig = null;
                }
                if (jSONObject.has("revenue_auto_tracking_enabled")) {
                    newConfigBuilder.withRevenueAutoTrackingEnabled(jSONObject.optBoolean("revenue_auto_tracking_enabled"));
                }
                if (jSONObject.has("sessions_auto_tracking_enabled")) {
                    newConfigBuilder.withSessionsAutoTrackingEnabled(jSONObject.optBoolean("sessions_auto_tracking_enabled"));
                }
                if (jSONObject.has("app_open_tracking_enabled")) {
                    newConfigBuilder.withAppOpenTrackingEnabled(jSONObject.optBoolean("app_open_tracking_enabled"));
                }
                if (jSONObject.has(CommonUrlParts.DEVICE_TYPE)) {
                    newConfigBuilder.withDeviceType(jSONObject.optString(CommonUrlParts.DEVICE_TYPE));
                }
                if (jSONObject.has(CommonUrlParts.APP_VERSION_CODE)) {
                    newConfigBuilder.withAppBuildNumber(jSONObject.optInt(CommonUrlParts.APP_VERSION_CODE));
                }
                if (jSONObject.has("dispatch_period_seconds")) {
                    newConfigBuilder.withDispatchPeriodSeconds(jSONObject.optInt("dispatch_period_seconds"));
                }
                if (jSONObject.has("max_reports_count")) {
                    newConfigBuilder.withMaxReportsCount(jSONObject.optInt("max_reports_count"));
                }
                if (jSONObject.has("app_environment") && (c10 = AbstractC1491sb.c(jSONObject.optString("app_environment"))) != null) {
                    for (Map.Entry entry2 : c10.entrySet()) {
                        newConfigBuilder.withAppEnvironmentValue((String) entry2.getKey(), (String) entry2.getValue());
                    }
                }
                if (jSONObject.has("anr_monitoring")) {
                    newConfigBuilder.withAnrMonitoring(jSONObject.optBoolean("anr_monitoring"));
                }
                if (jSONObject.has("anr_monitoring_timeout")) {
                    newConfigBuilder.withAnrMonitoringTimeout(jSONObject.optInt("anr_monitoring_timeout"));
                }
                if (jSONObject.has("customHosts")) {
                    newConfigBuilder.withCustomHosts(AbstractC1491sb.a(jSONObject.optJSONArray("customHosts")));
                }
                if (jSONObject.has("additional_config")) {
                    jSONObject.optJSONObject("additional_config");
                }
                return newConfigBuilder.build();
            } catch (Throwable unused2) {
            }
        }
        appMetricaConfig = null;
        return appMetricaConfig;
    }

    public static Builder newConfigBuilder(String str) {
        return new Builder(str, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008d A[Catch: all -> 0x011d, TryCatch #1 {all -> 0x011d, blocks: (B:3:0x0005, B:14:0x0058, B:18:0x0092, B:22:0x00e8, B:24:0x00fd, B:28:0x010b, B:27:0x0106, B:29:0x010e, B:21:0x00e3, B:17:0x008d), top: B:35:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e3 A[Catch: all -> 0x011d, TryCatch #1 {all -> 0x011d, blocks: (B:3:0x0005, B:14:0x0058, B:18:0x0092, B:22:0x00e8, B:24:0x00fd, B:28:0x010b, B:27:0x0106, B:29:0x010e, B:21:0x00e3, B:17:0x008d), top: B:35:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00fd A[Catch: all -> 0x011d, TryCatch #1 {all -> 0x011d, blocks: (B:3:0x0005, B:14:0x0058, B:18:0x0092, B:22:0x00e8, B:24:0x00fd, B:28:0x010b, B:27:0x0106, B:29:0x010e, B:21:0x00e3, B:17:0x008d), top: B:35:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toJson() {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.AppMetricaConfig.toJson():java.lang.String");
    }

    private AppMetricaConfig(Builder builder) {
        this.apiKey = builder.f17473b;
        this.appVersion = builder.f17474c;
        this.sessionTimeout = builder.f17475d;
        this.crashReporting = builder.f17476e;
        this.nativeCrashReporting = builder.f17477f;
        this.location = builder.f17478g;
        this.locationTracking = builder.f17479h;
        this.advIdentifiersTracking = builder.f17480i;
        this.logs = builder.f17481j;
        this.preloadInfo = builder.f17482k;
        this.firstActivationAsUpdate = builder.f17483l;
        this.dataSendingEnabled = builder.f17484m;
        this.maxReportsInDatabaseCount = builder.f17485n;
        this.errorEnvironment = CollectionUtils.unmodifiableSameOrderMapCopy(builder.f17486o);
        this.userProfileID = builder.f17487p;
        this.revenueAutoTrackingEnabled = builder.f17488q;
        this.sessionsAutoTrackingEnabled = builder.f17489r;
        this.appOpenTrackingEnabled = builder.f17490s;
        this.deviceType = builder.f17491t;
        this.appBuildNumber = builder.f17492u;
        this.dispatchPeriodSeconds = builder.f17493v;
        this.maxReportsCount = builder.f17494w;
        this.appEnvironment = CollectionUtils.unmodifiableSameOrderMapCopy(builder.f17495x);
        this.crashTransformer = builder.f17496y;
        this.anrMonitoring = builder.f17497z;
        this.anrMonitoringTimeout = builder.A;
        this.customHosts = builder.B;
        this.additionalConfig = CollectionUtils.unmodifiableSameOrderMapCopy(builder.C);
    }

    protected AppMetricaConfig(AppMetricaConfig appMetricaConfig) {
        this.apiKey = appMetricaConfig.apiKey;
        this.appVersion = appMetricaConfig.appVersion;
        this.sessionTimeout = appMetricaConfig.sessionTimeout;
        this.crashReporting = appMetricaConfig.crashReporting;
        this.nativeCrashReporting = appMetricaConfig.nativeCrashReporting;
        this.location = appMetricaConfig.location;
        this.locationTracking = appMetricaConfig.locationTracking;
        this.advIdentifiersTracking = appMetricaConfig.advIdentifiersTracking;
        this.logs = appMetricaConfig.logs;
        this.preloadInfo = appMetricaConfig.preloadInfo;
        this.firstActivationAsUpdate = appMetricaConfig.firstActivationAsUpdate;
        this.dataSendingEnabled = appMetricaConfig.dataSendingEnabled;
        this.maxReportsInDatabaseCount = appMetricaConfig.maxReportsInDatabaseCount;
        this.errorEnvironment = appMetricaConfig.errorEnvironment;
        this.userProfileID = appMetricaConfig.userProfileID;
        this.revenueAutoTrackingEnabled = appMetricaConfig.revenueAutoTrackingEnabled;
        this.sessionsAutoTrackingEnabled = appMetricaConfig.sessionsAutoTrackingEnabled;
        this.appOpenTrackingEnabled = appMetricaConfig.appOpenTrackingEnabled;
        this.deviceType = appMetricaConfig.deviceType;
        this.appBuildNumber = appMetricaConfig.appBuildNumber;
        this.dispatchPeriodSeconds = appMetricaConfig.dispatchPeriodSeconds;
        this.maxReportsCount = appMetricaConfig.maxReportsCount;
        this.appEnvironment = appMetricaConfig.appEnvironment;
        this.crashTransformer = appMetricaConfig.crashTransformer;
        this.anrMonitoring = appMetricaConfig.anrMonitoring;
        this.anrMonitoringTimeout = appMetricaConfig.anrMonitoringTimeout;
        this.customHosts = appMetricaConfig.customHosts;
        this.additionalConfig = appMetricaConfig.additionalConfig;
    }
}
