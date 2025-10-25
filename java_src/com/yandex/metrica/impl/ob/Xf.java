package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.webkit.WebView;
import com.yandex.metrica.AppMetricaDeviceIDListener;
import com.yandex.metrica.DeferredDeeplinkListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import com.yandex.metrica.ReporterConfig;
import com.yandex.metrica.YandexMetricaConfig;
import io.flutter.plugins.firebase.analytics.Constants;
/* loaded from: classes2.dex */
public class Xf extends C0411ag {

    /* renamed from: j  reason: collision with root package name */
    private static final Kn<YandexMetricaConfig> f11787j = new Hn(new Gn("Config"));

    /* renamed from: k  reason: collision with root package name */
    private static final Kn<String> f11788k = new Hn(new Fn("Native crash"));

    /* renamed from: l  reason: collision with root package name */
    private static final Kn<Activity> f11789l = new Hn(new Gn("Activity"));

    /* renamed from: m  reason: collision with root package name */
    private static final Kn<Intent> f11790m = new Hn(new Gn("Intent"));

    /* renamed from: n  reason: collision with root package name */
    private static final Kn<Application> f11791n = new Hn(new Gn("Application"));

    /* renamed from: o  reason: collision with root package name */
    private static final Kn<Context> f11792o = new Hn(new Gn("Context"));

    /* renamed from: p  reason: collision with root package name */
    private static final Kn<Object> f11793p = new Hn(new Gn("Deeplink listener"));

    /* renamed from: q  reason: collision with root package name */
    private static final Kn<AppMetricaDeviceIDListener> f11794q = new Hn(new Gn("DeviceID listener"));

    /* renamed from: r  reason: collision with root package name */
    private static final Kn<ReporterConfig> f11795r = new Hn(new Gn("Reporter Config"));

    /* renamed from: s  reason: collision with root package name */
    private static final Kn<String> f11796s = new Hn(new Fn("Deeplink"));

    /* renamed from: t  reason: collision with root package name */
    private static final Kn<String> f11797t = new Hn(new Fn("Referral url"));

    /* renamed from: u  reason: collision with root package name */
    private static final Kn<String> f11798u = new Hn(new Ln());

    /* renamed from: v  reason: collision with root package name */
    private static final Kn<String> f11799v = new Hn(new Gn("Key"));

    /* renamed from: w  reason: collision with root package name */
    private static final Kn<WebView> f11800w = new Hn(new Gn("WebView"));

    /* renamed from: x  reason: collision with root package name */
    private static final Kn<String> f11801x = new Fn("value");

    /* renamed from: y  reason: collision with root package name */
    private static final Kn<String> f11802y = new Fn(Constants.NAME);

    public void a(Application application) {
        ((Hn) f11791n).a(application);
    }

    public void b(Context context) {
        ((Hn) f11792o).a(context);
    }

    public void c(String str) {
        ((Hn) f11788k).a(str);
    }

    public void d(String str) {
        ((Hn) f11799v).a(str);
    }

    public void e(String str) {
        ((Hn) f11796s).a(str);
    }

    public boolean f(String str) {
        return ((Fn) f11802y).a(str).b();
    }

    public boolean g(String str) {
        return ((Fn) f11801x).a(str).b();
    }

    public void a(Intent intent) {
        ((Hn) f11790m).a(intent);
    }

    public void c(Activity activity) {
        ((Hn) f11789l).a(activity);
    }

    public void a(String str) {
        ((Hn) f11797t).a(str);
    }

    public void a(Context context) {
        ((Hn) f11792o).a(context);
    }

    public void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        ((Hn) f11793p).a(deferredDeeplinkParametersListener);
    }

    public void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        ((Hn) f11793p).a(deferredDeeplinkListener);
    }

    public void a(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
        ((Hn) f11794q).a(appMetricaDeviceIDListener);
    }

    public void a(Context context, String str) {
        ((Hn) f11792o).a(context);
        ((Hn) f11798u).a(str);
    }

    public void a(Context context, ReporterConfig reporterConfig) {
        ((Hn) f11792o).a(context);
        ((Hn) f11795r).a(reporterConfig);
    }

    public void a(Context context, YandexMetricaConfig yandexMetricaConfig) {
        ((Hn) f11792o).a(context);
        ((Hn) f11787j).a(yandexMetricaConfig);
    }

    public void a(WebView webView) {
        ((Hn) f11800w).a(webView);
    }
}
