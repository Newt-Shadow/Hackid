package io.appmetrica.analytics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.webkit.WebView;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.impl.A0;
import io.appmetrica.analytics.impl.AbstractC1307l1;
import io.appmetrica.analytics.impl.C1282k1;
import io.appmetrica.analytics.plugins.AppMetricaPlugins;
import io.appmetrica.analytics.profile.UserProfile;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class AppMetrica {
    public static void activate(Context context, AppMetricaConfig appMetricaConfig) {
        AbstractC1307l1.f20005a.a(context, appMetricaConfig);
    }

    public static void activateReporter(Context context, ReporterConfig reporterConfig) {
        AbstractC1307l1.f20005a.a(context, reporterConfig);
    }

    public static void clearAppEnvironment() {
        AbstractC1307l1.f20005a.a();
    }

    public static void enableActivityAutoTracking(Application application) {
        AbstractC1307l1.f20005a.a(application);
    }

    public static String getDeviceId(Context context) {
        return AbstractC1307l1.f20005a.b();
    }

    public static int getLibraryApiLevel() {
        return BuildConfig.API_LEVEL;
    }

    public static String getLibraryVersion() {
        return "7.8.0";
    }

    public static AppMetricaPlugins getPluginExtension() {
        return A0.f17917a;
    }

    public static IReporter getReporter(Context context, String str) {
        return AbstractC1307l1.f20005a.a(context, str);
    }

    public static String getUuid(Context context) {
        return AbstractC1307l1.f20005a.a(context).f21091id;
    }

    public static void initWebViewReporting(WebView webView) {
        AbstractC1307l1.f20005a.a(webView);
    }

    public static void pauseSession(Activity activity) {
        AbstractC1307l1.f20005a.a(activity);
    }

    public static void putAppEnvironmentValue(String str, String str2) {
        AbstractC1307l1.f20005a.a(str, str2);
    }

    public static void putErrorEnvironmentValue(String str, String str2) {
        AbstractC1307l1.f20005a.b(str, str2);
    }

    public static void registerAnrListener(AnrListener anrListener) {
        AbstractC1307l1.f20005a.a(anrListener);
    }

    public static void reportAdRevenue(AdRevenue adRevenue) {
        AbstractC1307l1.f20005a.a(adRevenue);
    }

    public static void reportAnr(Map<Thread, StackTraceElement[]> map) {
        AbstractC1307l1.f20005a.a(map);
    }

    public static void reportAppOpen(Activity activity) {
        AbstractC1307l1.f20005a.b(activity);
    }

    public static void reportECommerce(ECommerceEvent eCommerceEvent) {
        AbstractC1307l1.f20005a.a(eCommerceEvent);
    }

    public static void reportError(String str, String str2) {
        AbstractC1307l1.f20005a.a(str, str2, (Throwable) null);
    }

    public static void reportEvent(String str) {
        AbstractC1307l1.f20005a.b(str);
    }

    public static void reportExternalAdRevenue(Object... objArr) {
        AbstractC1307l1.f20005a.b(objArr);
    }

    public static void reportExternalAttribution(ExternalAttribution externalAttribution) {
        AbstractC1307l1.f20005a.a(externalAttribution);
    }

    public static void reportReferralUrl(String str) {
        AbstractC1307l1.f20005a.d(str);
    }

    public static void reportRevenue(Revenue revenue) {
        AbstractC1307l1.f20005a.a(revenue);
    }

    public static void reportUnhandledException(Throwable th) {
        AbstractC1307l1.f20005a.a(th);
    }

    public static void reportUserProfile(UserProfile userProfile) {
        AbstractC1307l1.f20005a.a(userProfile);
    }

    public static void requestDeferredDeeplink(DeferredDeeplinkListener deferredDeeplinkListener) {
        AbstractC1307l1.f20005a.a(deferredDeeplinkListener);
    }

    public static void requestDeferredDeeplinkParameters(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        AbstractC1307l1.f20005a.a(deferredDeeplinkParametersListener);
    }

    public static void requestStartupParams(Context context, StartupParamsCallback startupParamsCallback, List<String> list) {
        C1282k1 c1282k1 = AbstractC1307l1.f20005a;
        if (list.isEmpty()) {
            list = Arrays.asList(StartupParamsCallback.APPMETRICA_UUID, StartupParamsCallback.APPMETRICA_DEVICE_ID, "appmetrica_device_id_hash");
        }
        c1282k1.a(context, startupParamsCallback, list);
    }

    public static void resumeSession(Activity activity) {
        AbstractC1307l1.f20005a.c(activity);
    }

    public static void sendEventsBuffer() {
        AbstractC1307l1.f20005a.f();
    }

    public static void setAdvIdentifiersTracking(boolean z10) {
        AbstractC1307l1.f20005a.a(z10);
    }

    public static void setDataSendingEnabled(boolean z10) {
        AbstractC1307l1.f20005a.b(z10);
    }

    public static void setLocation(Location location) {
        AbstractC1307l1.f20005a.a(location);
    }

    public static void setLocationTracking(boolean z10) {
        AbstractC1307l1.f20005a.c(z10);
    }

    public static void setUserProfileID(String str) {
        AbstractC1307l1.f20005a.e(str);
    }

    public static void reportAppOpen(Intent intent) {
        AbstractC1307l1.f20005a.a(intent);
    }

    public static void reportError(String str, String str2, Throwable th) {
        AbstractC1307l1.f20005a.a(str, str2, th);
    }

    public static void reportEvent(String str, String str2) {
        AbstractC1307l1.f20005a.c(str, str2);
    }

    public static void reportAppOpen(String str) {
        AbstractC1307l1.f20005a.a(str);
    }

    public static void reportError(String str, Throwable th) {
        AbstractC1307l1.f20005a.a(str, th);
    }

    public static void reportEvent(String str, Map<String, Object> map) {
        AbstractC1307l1.f20005a.a(str, map);
    }
}
