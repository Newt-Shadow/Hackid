package com.yandex.metrica;

import android.location.Location;
import com.yandex.metrica.impl.ob.A2;
import com.yandex.metrica.impl.ob.C0695m1;
import com.yandex.metrica.impl.ob.Hn;
import com.yandex.metrica.impl.ob.Kn;
import com.yandex.metrica.impl.ob.Ln;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class YandexMetricaConfig {
    public final String apiKey;
    public final Boolean appOpenTrackingEnabled;
    public final String appVersion;
    public final Boolean crashReporting;
    public final Map<String, String> errorEnvironment;
    public final Boolean firstActivationAsUpdate;
    public final Location location;
    public final Boolean locationTracking;
    public final Boolean logs;
    public final Integer maxReportsInDatabaseCount;
    public final Boolean nativeCrashReporting;
    public final PreloadInfo preloadInfo;
    public final Boolean revenueAutoTrackingEnabled;
    public final Integer sessionTimeout;
    public final Boolean sessionsAutoTrackingEnabled;
    public final Boolean statisticsSending;
    public final String userProfileID;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: r  reason: collision with root package name */
        private static final Kn f9568r = new Hn(new Ln());

        /* renamed from: a  reason: collision with root package name */
        private final String f9569a;

        /* renamed from: b  reason: collision with root package name */
        private String f9570b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f9571c;

        /* renamed from: d  reason: collision with root package name */
        private Boolean f9572d;

        /* renamed from: e  reason: collision with root package name */
        private Boolean f9573e;

        /* renamed from: f  reason: collision with root package name */
        private Location f9574f;

        /* renamed from: g  reason: collision with root package name */
        private Boolean f9575g;

        /* renamed from: h  reason: collision with root package name */
        private Boolean f9576h;

        /* renamed from: i  reason: collision with root package name */
        private PreloadInfo f9577i;

        /* renamed from: j  reason: collision with root package name */
        private Boolean f9578j;

        /* renamed from: k  reason: collision with root package name */
        private Boolean f9579k;

        /* renamed from: l  reason: collision with root package name */
        private Integer f9580l;

        /* renamed from: m  reason: collision with root package name */
        private LinkedHashMap f9581m = new LinkedHashMap();

        /* renamed from: n  reason: collision with root package name */
        private String f9582n;

        /* renamed from: o  reason: collision with root package name */
        private Boolean f9583o;

        /* renamed from: p  reason: collision with root package name */
        private Boolean f9584p;

        /* renamed from: q  reason: collision with root package name */
        private Boolean f9585q;

        protected Builder(String str) {
            ((Hn) f9568r).a(str);
            this.f9569a = str;
        }

        public YandexMetricaConfig build() {
            return new YandexMetricaConfig(this);
        }

        public Builder handleFirstActivationAsUpdate(boolean z10) {
            this.f9578j = Boolean.valueOf(z10);
            return this;
        }

        public Builder withAppOpenTrackingEnabled(boolean z10) {
            this.f9585q = Boolean.valueOf(z10);
            return this;
        }

        public Builder withAppVersion(String str) {
            this.f9570b = str;
            return this;
        }

        public Builder withCrashReporting(boolean z10) {
            this.f9572d = Boolean.valueOf(z10);
            return this;
        }

        public Builder withErrorEnvironmentValue(String str, String str2) {
            this.f9581m.put(str, str2);
            return this;
        }

        public Builder withLocation(Location location) {
            this.f9574f = location;
            return this;
        }

        public Builder withLocationTracking(boolean z10) {
            this.f9575g = Boolean.valueOf(z10);
            return this;
        }

        public Builder withLogs() {
            this.f9576h = Boolean.TRUE;
            return this;
        }

        public Builder withMaxReportsInDatabaseCount(int i10) {
            this.f9580l = Integer.valueOf(i10);
            return this;
        }

        public Builder withNativeCrashReporting(boolean z10) {
            this.f9573e = Boolean.valueOf(z10);
            return this;
        }

        public Builder withPreloadInfo(PreloadInfo preloadInfo) {
            this.f9577i = preloadInfo;
            return this;
        }

        public Builder withRevenueAutoTrackingEnabled(boolean z10) {
            this.f9583o = Boolean.valueOf(z10);
            return this;
        }

        public Builder withSessionTimeout(int i10) {
            this.f9571c = Integer.valueOf(i10);
            return this;
        }

        public Builder withSessionsAutoTrackingEnabled(boolean z10) {
            this.f9584p = Boolean.valueOf(z10);
            return this;
        }

        public Builder withStatisticsSending(boolean z10) {
            this.f9579k = Boolean.valueOf(z10);
            return this;
        }

        public Builder withUserProfileID(String str) {
            this.f9582n = str;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public YandexMetricaConfig(Builder builder) {
        this.apiKey = builder.f9569a;
        this.appVersion = builder.f9570b;
        this.sessionTimeout = builder.f9571c;
        this.crashReporting = builder.f9572d;
        this.nativeCrashReporting = builder.f9573e;
        this.location = builder.f9574f;
        this.locationTracking = builder.f9575g;
        this.logs = builder.f9576h;
        this.preloadInfo = builder.f9577i;
        this.firstActivationAsUpdate = builder.f9578j;
        this.statisticsSending = builder.f9579k;
        this.maxReportsInDatabaseCount = builder.f9580l;
        this.errorEnvironment = A2.e(builder.f9581m);
        this.userProfileID = builder.f9582n;
        this.revenueAutoTrackingEnabled = builder.f9583o;
        this.sessionsAutoTrackingEnabled = builder.f9584p;
        this.appOpenTrackingEnabled = builder.f9585q;
    }

    public static Builder createBuilderFromConfig(YandexMetricaConfig yandexMetricaConfig) {
        Builder newConfigBuilder = newConfigBuilder(yandexMetricaConfig.apiKey);
        if (A2.a((Object) yandexMetricaConfig.appVersion)) {
            newConfigBuilder.withAppVersion(yandexMetricaConfig.appVersion);
        }
        if (A2.a(yandexMetricaConfig.sessionTimeout)) {
            newConfigBuilder.withSessionTimeout(yandexMetricaConfig.sessionTimeout.intValue());
        }
        if (A2.a(yandexMetricaConfig.crashReporting)) {
            newConfigBuilder.withCrashReporting(yandexMetricaConfig.crashReporting.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.nativeCrashReporting)) {
            newConfigBuilder.withNativeCrashReporting(yandexMetricaConfig.nativeCrashReporting.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.location)) {
            newConfigBuilder.withLocation(yandexMetricaConfig.location);
        }
        if (A2.a(yandexMetricaConfig.locationTracking)) {
            newConfigBuilder.withLocationTracking(yandexMetricaConfig.locationTracking.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.logs) && yandexMetricaConfig.logs.booleanValue()) {
            newConfigBuilder.withLogs();
        }
        if (A2.a(yandexMetricaConfig.preloadInfo)) {
            newConfigBuilder.withPreloadInfo(yandexMetricaConfig.preloadInfo);
        }
        if (A2.a(yandexMetricaConfig.firstActivationAsUpdate)) {
            newConfigBuilder.handleFirstActivationAsUpdate(yandexMetricaConfig.firstActivationAsUpdate.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.statisticsSending)) {
            newConfigBuilder.withStatisticsSending(yandexMetricaConfig.statisticsSending.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.maxReportsInDatabaseCount)) {
            newConfigBuilder.withMaxReportsInDatabaseCount(yandexMetricaConfig.maxReportsInDatabaseCount.intValue());
        }
        if (A2.a((Object) yandexMetricaConfig.errorEnvironment)) {
            for (Map.Entry<String, String> entry : yandexMetricaConfig.errorEnvironment.entrySet()) {
                newConfigBuilder.withErrorEnvironmentValue(entry.getKey(), entry.getValue());
            }
        }
        if (A2.a((Object) yandexMetricaConfig.userProfileID)) {
            newConfigBuilder.withUserProfileID(yandexMetricaConfig.userProfileID);
        }
        if (A2.a(yandexMetricaConfig.revenueAutoTrackingEnabled)) {
            newConfigBuilder.withRevenueAutoTrackingEnabled(yandexMetricaConfig.revenueAutoTrackingEnabled.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.sessionsAutoTrackingEnabled)) {
            newConfigBuilder.withSessionsAutoTrackingEnabled(yandexMetricaConfig.sessionsAutoTrackingEnabled.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.appOpenTrackingEnabled)) {
            newConfigBuilder.withAppOpenTrackingEnabled(yandexMetricaConfig.appOpenTrackingEnabled.booleanValue());
        }
        return newConfigBuilder;
    }

    public static YandexMetricaConfig fromJson(String str) {
        return new C0695m1().a(str);
    }

    public static Builder newConfigBuilder(String str) {
        return new Builder(str);
    }

    public String toJson() {
        return new C0695m1().a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public YandexMetricaConfig(YandexMetricaConfig yandexMetricaConfig) {
        this.apiKey = yandexMetricaConfig.apiKey;
        this.appVersion = yandexMetricaConfig.appVersion;
        this.sessionTimeout = yandexMetricaConfig.sessionTimeout;
        this.crashReporting = yandexMetricaConfig.crashReporting;
        this.nativeCrashReporting = yandexMetricaConfig.nativeCrashReporting;
        this.location = yandexMetricaConfig.location;
        this.locationTracking = yandexMetricaConfig.locationTracking;
        this.logs = yandexMetricaConfig.logs;
        this.preloadInfo = yandexMetricaConfig.preloadInfo;
        this.firstActivationAsUpdate = yandexMetricaConfig.firstActivationAsUpdate;
        this.statisticsSending = yandexMetricaConfig.statisticsSending;
        this.maxReportsInDatabaseCount = yandexMetricaConfig.maxReportsInDatabaseCount;
        this.errorEnvironment = yandexMetricaConfig.errorEnvironment;
        this.userProfileID = yandexMetricaConfig.userProfileID;
        this.revenueAutoTrackingEnabled = yandexMetricaConfig.revenueAutoTrackingEnabled;
        this.sessionsAutoTrackingEnabled = yandexMetricaConfig.sessionsAutoTrackingEnabled;
        this.appOpenTrackingEnabled = yandexMetricaConfig.appOpenTrackingEnabled;
    }
}
