package io.appmetrica.analytics.impl;

import android.location.Location;
import io.appmetrica.analytics.AppMetricaConfig;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class P7 implements Tc {

    /* renamed from: a  reason: collision with root package name */
    public Location f18765a;

    /* renamed from: b  reason: collision with root package name */
    public Boolean f18766b;

    /* renamed from: c  reason: collision with root package name */
    public Boolean f18767c;

    /* renamed from: d  reason: collision with root package name */
    public Boolean f18768d;

    /* renamed from: e  reason: collision with root package name */
    public final LinkedHashMap f18769e = new LinkedHashMap();

    /* renamed from: f  reason: collision with root package name */
    public final LinkedHashMap f18770f = new LinkedHashMap();

    /* renamed from: g  reason: collision with root package name */
    public boolean f18771g;

    /* renamed from: h  reason: collision with root package name */
    public String f18772h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f18773i;

    /* renamed from: j  reason: collision with root package name */
    public C1598wi f18774j;

    @Override // io.appmetrica.analytics.impl.Tc
    public final void a(boolean z10) {
        Boolean valueOf = Boolean.valueOf(z10);
        this.f18766b = valueOf;
        C1598wi c1598wi = this.f18774j;
        if (c1598wi != null) {
            c1598wi.a(valueOf, this.f18768d, this.f18767c);
        }
    }

    @Override // io.appmetrica.analytics.impl.Tc
    public final void b(boolean z10) {
        Boolean valueOf = Boolean.valueOf(z10);
        this.f18767c = valueOf;
        C1598wi c1598wi = this.f18774j;
        if (c1598wi != null) {
            c1598wi.a(this.f18766b, this.f18768d, valueOf);
        }
    }

    @Override // io.appmetrica.analytics.impl.Tc
    public final void clearAppEnvironment() {
        this.f18771g = true;
        this.f18769e.clear();
    }

    public final Location j() {
        return this.f18765a;
    }

    public final Boolean k() {
        return this.f18767c;
    }

    public final Boolean l() {
        return this.f18768d;
    }

    public final Boolean m() {
        return this.f18766b;
    }

    public final boolean n() {
        return this.f18771g;
    }

    @Override // io.appmetrica.analytics.impl.Tc
    public final void putAppEnvironmentValue(String str, String str2) {
        this.f18769e.put(str, str2);
    }

    @Override // io.appmetrica.analytics.impl.Tc
    public final void setDataSendingEnabled(boolean z10) {
        Boolean valueOf = Boolean.valueOf(z10);
        this.f18768d = valueOf;
        C1598wi c1598wi = this.f18774j;
        if (c1598wi != null) {
            c1598wi.a(this.f18766b, valueOf, this.f18767c);
        }
    }

    @Override // io.appmetrica.analytics.impl.Tc
    public final void setUserProfileID(String str) {
        this.f18772h = str;
    }

    @Override // io.appmetrica.analytics.impl.Tc
    public final void a(Location location) {
        this.f18765a = location;
    }

    public final AppMetricaConfig b(AppMetricaConfig appMetricaConfig) {
        if (this.f18773i) {
            return appMetricaConfig;
        }
        AppMetricaConfig.Builder newConfigBuilder = AppMetricaConfig.newConfigBuilder(appMetricaConfig.apiKey);
        newConfigBuilder.withDeviceType(appMetricaConfig.deviceType);
        newConfigBuilder.withPreloadInfo(appMetricaConfig.preloadInfo);
        newConfigBuilder.withLocation(appMetricaConfig.location);
        if (Rn.a(appMetricaConfig.appVersion)) {
            newConfigBuilder.withAppVersion(appMetricaConfig.appVersion);
        }
        if (Rn.a(appMetricaConfig.dispatchPeriodSeconds)) {
            newConfigBuilder.withDispatchPeriodSeconds(appMetricaConfig.dispatchPeriodSeconds.intValue());
        }
        if (Rn.a(appMetricaConfig.appBuildNumber)) {
            newConfigBuilder.withAppBuildNumber(appMetricaConfig.appBuildNumber.intValue());
        }
        if (Rn.a(appMetricaConfig.maxReportsCount)) {
            newConfigBuilder.withMaxReportsCount(appMetricaConfig.maxReportsCount.intValue());
        }
        if (Rn.a(appMetricaConfig.logs) && appMetricaConfig.logs.booleanValue()) {
            newConfigBuilder.withLogs();
        }
        if (Rn.a(appMetricaConfig.sessionTimeout)) {
            newConfigBuilder.withSessionTimeout(appMetricaConfig.sessionTimeout.intValue());
        }
        if (Rn.a(appMetricaConfig.sessionsAutoTrackingEnabled)) {
            newConfigBuilder.withSessionsAutoTrackingEnabled(appMetricaConfig.sessionsAutoTrackingEnabled.booleanValue());
        }
        if (Rn.a(appMetricaConfig.crashReporting)) {
            newConfigBuilder.withCrashReporting(appMetricaConfig.crashReporting.booleanValue());
        }
        if (Rn.a(appMetricaConfig.nativeCrashReporting)) {
            newConfigBuilder.withNativeCrashReporting(appMetricaConfig.nativeCrashReporting.booleanValue());
        }
        if (Rn.a(appMetricaConfig.locationTracking)) {
            newConfigBuilder.withLocationTracking(appMetricaConfig.locationTracking.booleanValue());
        }
        if (Rn.a(appMetricaConfig.advIdentifiersTracking)) {
            newConfigBuilder.withAdvIdentifiersTracking(appMetricaConfig.advIdentifiersTracking.booleanValue());
        }
        if (Rn.a(appMetricaConfig.firstActivationAsUpdate)) {
            newConfigBuilder.handleFirstActivationAsUpdate(appMetricaConfig.firstActivationAsUpdate.booleanValue());
        }
        if (Rn.a(appMetricaConfig.dataSendingEnabled)) {
            newConfigBuilder.withDataSendingEnabled(appMetricaConfig.dataSendingEnabled.booleanValue());
        }
        if (Rn.a(appMetricaConfig.anrMonitoring)) {
            newConfigBuilder.withAnrMonitoring(appMetricaConfig.anrMonitoring.booleanValue());
        }
        if (Rn.a(appMetricaConfig.anrMonitoringTimeout)) {
            newConfigBuilder.withAnrMonitoringTimeout(appMetricaConfig.anrMonitoringTimeout.intValue());
        }
        if (Rn.a(appMetricaConfig.maxReportsInDatabaseCount)) {
            newConfigBuilder.withMaxReportsInDatabaseCount(appMetricaConfig.maxReportsInDatabaseCount.intValue());
        }
        if (Rn.a(appMetricaConfig.crashTransformer)) {
            newConfigBuilder.withCrashTransformer(appMetricaConfig.crashTransformer);
        }
        if (Rn.a(appMetricaConfig.userProfileID)) {
            newConfigBuilder.withUserProfileID(appMetricaConfig.userProfileID);
        }
        if (Rn.a(appMetricaConfig.revenueAutoTrackingEnabled)) {
            newConfigBuilder.withRevenueAutoTrackingEnabled(appMetricaConfig.revenueAutoTrackingEnabled.booleanValue());
        }
        if (Rn.a(appMetricaConfig.appOpenTrackingEnabled)) {
            newConfigBuilder.withAppOpenTrackingEnabled(appMetricaConfig.appOpenTrackingEnabled.booleanValue());
        }
        if (Rn.a((Object) appMetricaConfig.customHosts)) {
            newConfigBuilder.withCustomHosts(appMetricaConfig.customHosts);
        }
        LinkedHashMap linkedHashMap = this.f18769e;
        if (!Rn.a((Map) linkedHashMap)) {
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                newConfigBuilder.withAppEnvironmentValue((String) entry.getKey(), (String) entry.getValue());
            }
        }
        Map<String, String> map = appMetricaConfig.appEnvironment;
        if (!Rn.a((Map) map)) {
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                newConfigBuilder.withAppEnvironmentValue(entry2.getKey(), entry2.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = this.f18770f;
        if (!Rn.a((Map) linkedHashMap2)) {
            for (Map.Entry entry3 : linkedHashMap2.entrySet()) {
                newConfigBuilder.withErrorEnvironmentValue((String) entry3.getKey(), (String) entry3.getValue());
            }
        }
        Map<String, String> map2 = appMetricaConfig.errorEnvironment;
        if (!Rn.a((Map) map2)) {
            for (Map.Entry<String, String> entry4 : map2.entrySet()) {
                newConfigBuilder.withErrorEnvironmentValue(entry4.getKey(), entry4.getValue());
            }
        }
        Map<String, Object> map3 = appMetricaConfig.additionalConfig;
        if (!Rn.a((Map) map3)) {
            for (Map.Entry<String, Object> entry5 : map3.entrySet()) {
                newConfigBuilder.withAdditionalConfig(entry5.getKey(), entry5.getValue());
            }
        }
        Boolean bool = this.f18766b;
        if (appMetricaConfig.locationTracking == null && Rn.a(bool)) {
            newConfigBuilder.withLocationTracking(bool.booleanValue());
        }
        Location location = this.f18765a;
        if (appMetricaConfig.location == null && Rn.a(location)) {
            newConfigBuilder.withLocation(location);
        }
        Boolean bool2 = this.f18768d;
        if (appMetricaConfig.dataSendingEnabled == null && Rn.a(bool2)) {
            newConfigBuilder.withDataSendingEnabled(bool2.booleanValue());
        }
        if (!Rn.a(appMetricaConfig.userProfileID) && Rn.a(this.f18772h)) {
            newConfigBuilder.withUserProfileID(this.f18772h);
        }
        Boolean bool3 = this.f18767c;
        if (appMetricaConfig.advIdentifiersTracking == null && Rn.a(bool3)) {
            newConfigBuilder.withAdvIdentifiersTracking(bool3.booleanValue());
        }
        this.f18773i = true;
        this.f18765a = null;
        this.f18766b = null;
        this.f18767c = null;
        this.f18768d = null;
        this.f18769e.clear();
        this.f18770f.clear();
        this.f18771g = false;
        this.f18772h = null;
        return newConfigBuilder.build();
    }

    @Override // io.appmetrica.analytics.impl.Tc
    public final void a(String str, String str2) {
        this.f18770f.put(str, str2);
    }

    public final void a(C1598wi c1598wi) {
        this.f18774j = c1598wi;
    }
}
