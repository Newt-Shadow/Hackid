package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.webkit.WebView;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.AnrListener;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ExternalAttribution;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.internal.IdentifiersResult;
import io.appmetrica.analytics.internal.js.AppMetricaInitializerJsInterface;
import io.appmetrica.analytics.internal.js.AppMetricaJsInterface;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import io.appmetrica.analytics.profile.UserProfile;
import java.util.List;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.k1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1282k1 {

    /* renamed from: a  reason: collision with root package name */
    public final C1406p0 f19881a;

    /* renamed from: b  reason: collision with root package name */
    public final mo f19882b;

    /* renamed from: c  reason: collision with root package name */
    public final C1424pi f19883c;

    /* renamed from: d  reason: collision with root package name */
    public final P7 f19884d;

    /* renamed from: e  reason: collision with root package name */
    public final Sk f19885e;

    /* renamed from: f  reason: collision with root package name */
    public final I2 f19886f;

    /* renamed from: g  reason: collision with root package name */
    public final Om f19887g;

    /* renamed from: h  reason: collision with root package name */
    public final Jk f19888h;

    public C1282k1(C1406p0 c1406p0, I2 i22, Sk sk, mo moVar, Om om, C1424pi c1424pi, P7 p72, Jk jk) {
        this.f19881a = c1406p0;
        this.f19882b = moVar;
        this.f19883c = c1424pi;
        this.f19884d = p72;
        this.f19886f = i22;
        this.f19887g = om;
        this.f19885e = sk;
        this.f19888h = jk;
    }

    public static IHandlerExecutor c() {
        return C1509t4.j().f20620c.a();
    }

    public final void a(final Context context, final AppMetricaConfig appMetricaConfig) {
        I2 i22 = this.f19886f;
        i22.f18349f.a(context);
        i22.f18345b.a(appMetricaConfig);
        Om om = this.f19887g;
        Context applicationContext = context.getApplicationContext();
        om.f18743e.a(applicationContext);
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(appMetricaConfig.apiKey);
        if (((Boolean) WrapUtils.getOrDefault(appMetricaConfig.sessionsAutoTrackingEnabled, Boolean.TRUE)).booleanValue()) {
            orCreatePublicLogger.info("Session auto tracking enabled", new Object[0]);
            om.f18742d.a();
        } else {
            orCreatePublicLogger.info("Session auto tracking disabled", new Object[0]);
        }
        om.f18739a.getClass();
        C1381o0 a10 = C1381o0.a(applicationContext);
        a10.f20250d.a(appMetricaConfig, a10);
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new Runnable() { // from class: io.appmetrica.analytics.impl.up
            @Override // java.lang.Runnable
            public final void run() {
                C1282k1.this.b(context, appMetricaConfig);
            }
        });
        this.f19881a.getClass();
        synchronized (C1381o0.class) {
            C1381o0.f20245f = true;
        }
    }

    public final String b() {
        this.f19881a.getClass();
        C1381o0 c1381o0 = C1381o0.f20244e;
        if (c1381o0 == null) {
            return null;
        }
        return c1381o0.f().e();
    }

    public final C1567vc d() {
        this.f19881a.getClass();
        return C1381o0.f20244e.f().i();
    }

    public final void e() {
        d().f20803a.a(this.f19888h.a());
    }

    public final void f() {
        this.f19886f.f18344a.a(null);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new M0(this));
    }

    public final void c(Activity activity) {
        this.f19886f.f18344a.a(null);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new X0(this, activity));
    }

    public final void b(Context context, AppMetricaConfig appMetricaConfig) {
        C1406p0 c1406p0 = this.f19881a;
        Context applicationContext = context.getApplicationContext();
        c1406p0.getClass();
        C1381o0 a10 = C1381o0.a(applicationContext);
        a10.f().a(this.f19884d.b(appMetricaConfig));
        Context context2 = a10.f20247a;
        ((L9) C1509t4.j().f20620c.a()).execute(new RunnableC1357n1(context2));
    }

    public final void e(String str) {
        this.f19886f.getClass();
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new K0(this, str));
    }

    public final void d(String str) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18353j.a(str);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new F0(this, str));
    }

    public C1282k1() {
        this(C1509t4.j().d(), new mo());
    }

    public final void c(String str, String str2) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18362s.a(str);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new RunnableC1158f1(this, str, str2));
    }

    public C1282k1(C1406p0 c1406p0, mo moVar) {
        this(c1406p0, new I2(c1406p0), new Sk(c1406p0), moVar, new Om(c1406p0, moVar), C1424pi.a(), C1509t4.j().h(), C1509t4.j().n());
    }

    public final void d(String str, String str2) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        if (i22.f18358o.a(str).f19201a) {
            this.f19887g.getClass();
            IHandlerExecutor c10 = c();
            ((L9) c10).f18518b.post(new U0(this, str, str2));
        }
    }

    public final void b(String str) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18362s.a(str);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new RunnableC1133e1(this, str));
    }

    public final void c(boolean z10) {
        this.f19886f.getClass();
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new H0(this, z10));
    }

    public final void b(Activity activity) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18346c.a(activity);
        this.f19887g.getClass();
        Intent a10 = Om.a(activity);
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new C0(this, a10));
    }

    public final void c(String str) {
        if (this.f19885e.a((Void) null).f19201a && this.f19886f.f18357n.a(str).f19201a) {
            this.f19887g.getClass();
            IHandlerExecutor c10 = c();
            ((L9) c10).f18518b.post(new V0(this, str));
        }
    }

    public final void a(Activity activity) {
        this.f19886f.f18344a.a(null);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new RunnableC1108d1(this, activity));
    }

    public final void b(boolean z10) {
        this.f19886f.getClass();
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new J0(this, z10));
    }

    public final void a(Application application) {
        this.f19886f.f18348e.a(application);
        this.f19887g.f18741c.a(application);
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new Runnable() { // from class: io.appmetrica.analytics.impl.vp
            @Override // java.lang.Runnable
            public final void run() {
                C1282k1.this.e();
            }
        });
    }

    public final void b(String str, String str2) {
        this.f19886f.f18355l.a(str);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new S0(this, str, str2));
    }

    public final void a(String str, Map<String, Object> map) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18362s.a(str);
        this.f19887g.getClass();
        List listFromMap = CollectionUtils.getListFromMap(map);
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new RunnableC1183g1(this, str, listFromMap));
    }

    public final void b(final Object... objArr) {
        this.f19886f.f18344a.a(null);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new Runnable() { // from class: io.appmetrica.analytics.impl.tp
            @Override // java.lang.Runnable
            public final void run() {
                C1282k1.a(objArr);
            }
        });
    }

    public final void b(Context context) {
        this.f19886f.f18349f.a(context);
        this.f19887g.f18743e.a(context);
        this.f19881a.getClass();
        C1381o0.a(context);
    }

    public final void a(String str, Throwable th) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18363t.a(str);
        this.f19887g.getClass();
        if (th == null) {
            th = new P1();
            th.fillInStackTrace();
        }
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new RunnableC1208h1(this, str, th));
    }

    public final void a(String str, String str2, Throwable th) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18364u.a(str);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new RunnableC1233i1(this, str, str2, th));
    }

    public final void a(Throwable th) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18365v.a(th);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new RunnableC1257j1(this, th));
    }

    public final void a(String str) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18352i.a(str);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new D0(this, str));
    }

    public final void a(Intent intent) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18347d.a(intent);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new E0(this, intent));
    }

    public final void a(Location location) {
        this.f19886f.getClass();
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new G0(this, location));
    }

    public final void a(boolean z10) {
        this.f19886f.getClass();
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new I0(this, z10));
    }

    public final void a(UserProfile userProfile) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18366w.a(userProfile);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new L0(this, userProfile));
    }

    public final void a(Revenue revenue) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18367x.a(revenue);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new N0(this, revenue));
    }

    public final void a(AdRevenue adRevenue) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18368y.a(adRevenue);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new O0(this, adRevenue));
    }

    public final void a(ECommerceEvent eCommerceEvent) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18369z.a(eCommerceEvent);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new P0(this, eCommerceEvent));
    }

    public final void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18350g.a(deferredDeeplinkParametersListener);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new Q0(this, deferredDeeplinkParametersListener));
    }

    public final void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18350g.a(deferredDeeplinkListener);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new R0(this, deferredDeeplinkListener));
    }

    public final InterfaceC1118db a(Context context, String str) {
        I2 i22 = this.f19886f;
        i22.f18349f.a(context);
        i22.f18354k.a(str);
        Om om = this.f19887g;
        om.f18743e.a(context.getApplicationContext());
        return this.f19883c.a(context.getApplicationContext(), str);
    }

    public final void a(Context context, ReporterConfig reporterConfig) {
        I2 i22 = this.f19886f;
        i22.f18349f.a(context);
        i22.f18351h.a(reporterConfig);
        Om om = this.f19887g;
        om.f18743e.a(context.getApplicationContext());
        C1424pi c1424pi = this.f19883c;
        Context applicationContext = context.getApplicationContext();
        if (((C1225hi) c1424pi.f20386a.get(reporterConfig.apiKey)) == null) {
            synchronized (c1424pi.f20386a) {
                if (((C1225hi) c1424pi.f20386a.get(reporterConfig.apiKey)) == null) {
                    String str = reporterConfig.apiKey;
                    IHandlerExecutor a10 = C1509t4.j().f20620c.a();
                    c1424pi.f20387b.getClass();
                    if (C1381o0.f20244e == null) {
                        ((L9) a10).f18518b.post(new RunnableC1374ni(c1424pi, applicationContext));
                    }
                    C1225hi c1225hi = new C1225hi(applicationContext.getApplicationContext(), str, new C1406p0());
                    c1424pi.f20386a.put(str, c1225hi);
                    c1225hi.a(reporterConfig);
                }
            }
        }
    }

    public final void a(WebView webView) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18356m.a(webView);
        mo moVar = this.f19887g.f18740b;
        moVar.getClass();
        try {
            if (webView.getSettings().getJavaScriptEnabled()) {
                webView.addJavascriptInterface(new AppMetricaJsInterface(this), "AppMetrica");
                webView.addJavascriptInterface(new AppMetricaInitializerJsInterface(this), "AppMetricaInitializer");
                jo joVar = new jo();
                synchronized (moVar) {
                    PublicLogger publicLogger = moVar.f20146b;
                    if (publicLogger == null) {
                        moVar.f20145a.add(joVar);
                    } else {
                        joVar.consume(publicLogger);
                    }
                }
            } else {
                moVar.a(new ko());
            }
        } catch (Throwable th) {
            moVar.a(new lo(th));
        }
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new T0(this));
    }

    public final IdentifiersResult a(Context context) {
        this.f19886f.f18349f.a(context);
        Om om = this.f19887g;
        Context applicationContext = context.getApplicationContext();
        om.f18743e.a(applicationContext);
        om.f18744f.a(applicationContext);
        return C1509t4.j().a(context.getApplicationContext()).a();
    }

    public final void a(String str, String str2) {
        this.f19886f.getClass();
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new W0(this, str, str2));
    }

    public final void a() {
        this.f19886f.getClass();
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new Y0(this));
    }

    public final void a(Context context, StartupParamsCallback startupParamsCallback, List<String> list) {
        I2 i22 = this.f19886f;
        i22.f18349f.a(context);
        i22.f18359p.a(startupParamsCallback);
        Om om = this.f19887g;
        om.f18743e.a(context.getApplicationContext());
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new Z0(this, context, startupParamsCallback, list));
    }

    public final void a(AnrListener anrListener) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18360q.a(anrListener);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new RunnableC1033a1(this, anrListener));
    }

    public final void a(ExternalAttribution externalAttribution) {
        I2 i22 = this.f19886f;
        i22.f18344a.a(null);
        i22.f18361r.a(externalAttribution);
        this.f19887g.getClass();
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new RunnableC1058b1(this, externalAttribution));
    }

    public static /* synthetic */ void a(Object[] objArr) {
        ModuleAdRevenueProcessor a10 = C1509t4.j().l().a();
        if (a10 != null) {
            a10.process(objArr);
        }
    }

    public final void a(Map<Thread, StackTraceElement[]> map) {
        this.f19886f.A.a(map);
        this.f19887g.getClass();
        List listFromMap = CollectionUtils.getListFromMap(map);
        IHandlerExecutor c10 = c();
        ((L9) c10).f18518b.post(new RunnableC1083c1(this, listFromMap));
    }

    public static Ua a(C1282k1 c1282k1) {
        return c1282k1.d().f20803a;
    }
}
