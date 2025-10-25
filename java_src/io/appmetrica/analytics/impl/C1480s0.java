package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreutils.internal.ApiKeyUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.s0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1480s0 implements Oa {

    /* renamed from: a  reason: collision with root package name */
    public final Context f20556a;

    /* renamed from: b  reason: collision with root package name */
    public final Na f20557b;

    /* renamed from: c  reason: collision with root package name */
    public final Te f20558c;

    /* renamed from: d  reason: collision with root package name */
    public final C1676zl f20559d;

    /* renamed from: e  reason: collision with root package name */
    public final C1223hg f20560e;

    /* renamed from: f  reason: collision with root package name */
    public final C1645yf f20561f;

    /* renamed from: g  reason: collision with root package name */
    public final C1299ki f20562g;

    /* renamed from: h  reason: collision with root package name */
    public final C1598wi f20563h;

    /* renamed from: i  reason: collision with root package name */
    public final P7 f20564i;

    /* renamed from: j  reason: collision with root package name */
    public final Jk f20565j;

    /* renamed from: k  reason: collision with root package name */
    public volatile C1567vc f20566k;

    /* renamed from: l  reason: collision with root package name */
    public final C1132e0 f20567l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f20568m;

    public C1480s0(Context context, Na na2) {
        this.f20556a = context;
        this.f20557b = na2;
        Te b10 = C1509t4.j().b(context);
        this.f20558c = b10;
        C1668zd.a();
        C1509t4 j10 = C1509t4.j();
        j10.l().a(new C1086c4(context));
        C1645yf a10 = AbstractC1505t0.a(context, AbstractC1505t0.a(na2.b(), this));
        this.f20561f = a10;
        P7 h10 = j10.h();
        this.f20564i = h10;
        C1598wi a11 = AbstractC1505t0.a(a10, context, na2.getDefaultExecutor());
        this.f20563h = a11;
        h10.a(a11);
        C1676zl a12 = AbstractC1505t0.a(context, a11, b10, na2.b());
        this.f20559d = a12;
        a11.a(a12);
        this.f20560e = AbstractC1505t0.a(a11, b10, na2.b());
        this.f20562g = AbstractC1505t0.a(context, a10, a11, na2.b(), a12);
        this.f20565j = j10.n();
        this.f20567l = new C1132e0(b10);
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final InterfaceC1118db c(ReporterConfig reporterConfig) {
        return this.f20562g.b(reporterConfig);
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void clearAppEnvironment() {
        j().clearAppEnvironment();
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final C1266ja d() {
        return this.f20559d.e();
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final String e() {
        return this.f20559d.d();
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final Map<String, String> g() {
        return this.f20559d.b();
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final AdvIdentifiersResult h() {
        return this.f20559d.a();
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final C1567vc i() {
        return this.f20566k;
    }

    public final Ua j() {
        C1567vc c1567vc = this.f20566k;
        kotlin.jvm.internal.m.b(c1567vc);
        return c1567vc.f20803a;
    }

    public final C1299ki k() {
        return this.f20562g;
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void putAppEnvironmentValue(String str, String str2) {
        j().putAppEnvironmentValue(str, str2);
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void setDataSendingEnabled(boolean z10) {
        j().setDataSendingEnabled(z10);
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void setUserProfileID(String str) {
        j().setUserProfileID(str);
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final void a(AppMetricaConfig appMetricaConfig) {
        boolean z10;
        PublicLogger orCreateMainPublicLogger = LoggerStorage.getOrCreateMainPublicLogger(appMetricaConfig.apiKey);
        boolean a10 = a(orCreateMainPublicLogger, appMetricaConfig, new C1431q0(this, appMetricaConfig, orCreateMainPublicLogger));
        if (a10 || this.f20568m) {
            z10 = false;
        } else {
            a(appMetricaConfig, orCreateMainPublicLogger);
            z10 = true;
        }
        if (!a10 && !z10) {
            orCreateMainPublicLogger.warning("AppMetrica SDK already has been activated", new Object[0]);
        } else {
            this.f20558c.a(appMetricaConfig);
        }
        if (a10) {
            ImportantLogger.INSTANCE.info("AppMetrica", "Activate AppMetrica with APIKey " + ApiKeyUtils.createPartialApiKey(appMetricaConfig.apiKey), new Object[0]);
        }
        if (z10) {
            ImportantLogger.INSTANCE.info("AppMetrica", "Upgrade AppMetrica anonymous mode to normal with APIKey " + ApiKeyUtils.createPartialApiKey(appMetricaConfig.apiKey), new Object[0]);
        }
        this.f20568m = true;
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void b(boolean z10) {
        j().b(z10);
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final void a(AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        C1132e0 c1132e0 = this.f20567l;
        AppMetricaConfig f10 = c1132e0.f19556a.f();
        if (f10 == null) {
            C1331m0 c1331m0 = c1132e0.f19557b;
            c1331m0.getClass();
            AppMetricaConfig.Builder newConfigBuilder = AppMetricaConfig.newConfigBuilder("629a824d-c717-4ba5-bc0f-3f3968554d01");
            if (c1331m0.f20073a.c() && kotlin.jvm.internal.m.a(c1331m0.f20074b.f20290a, Boolean.TRUE)) {
                newConfigBuilder.handleFirstActivationAsUpdate(true);
            }
            Boolean bool = appMetricaLibraryAdapterConfig.advIdentifiersTracking;
            if (bool == null) {
                bool = Boolean.FALSE;
            }
            newConfigBuilder.withAdvIdentifiersTracking(bool.booleanValue());
            f10 = newConfigBuilder.build();
        }
        PublicLogger mainPublicOrAnonymousLogger = LoggerStorage.getMainPublicOrAnonymousLogger();
        if (a(mainPublicOrAnonymousLogger, f10, new C1455r0(this, f10, mainPublicOrAnonymousLogger))) {
            ImportantLogger.INSTANCE.info("AppMetrica", "Activate AppMetrica in anonymous mode", new Object[0]);
        }
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.L6
    public final void a(int i10, Bundle bundle) {
        this.f20559d.b(bundle, null);
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        this.f20560e.a(deferredDeeplinkParametersListener);
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        this.f20560e.a(deferredDeeplinkListener);
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final void a(ReporterConfig reporterConfig) {
        this.f20562g.a(reporterConfig);
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final void a(StartupParamsCallback startupParamsCallback, List<String> list) {
        this.f20559d.a(startupParamsCallback, list, AbstractC1491sb.c(this.f20561f.f20987a.getAsString("PROCESS_CFG_CLIDS")));
    }

    public final boolean a(PublicLogger publicLogger, AppMetricaConfig appMetricaConfig, Ic ic2) {
        if (this.f20566k == null) {
            a(appMetricaConfig, publicLogger);
            this.f20560e.a();
            C1517tc a10 = ic2.a();
            K7 k72 = new K7(a10);
            C1567vc c1567vc = new C1567vc(a10, k72);
            this.f20557b.c().a(k72);
            this.f20566k = c1567vc;
            B5 b52 = this.f20565j.f18448b;
            synchronized (b52) {
                b52.f17985a = a10;
                Iterator it = b52.f17986b.iterator();
                while (it.hasNext()) {
                    ((Zd) it.next()).consume(a10);
                }
                b52.f17986b.clear();
            }
            return true;
        }
        ic2.a();
        return false;
    }

    public final void a(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger) {
        Boolean bool = appMetricaConfig.logs;
        Boolean bool2 = Boolean.TRUE;
        if (bool2.equals(bool)) {
            publicLogger.setEnabled(true);
            PublicLogger.Companion.getAnonymousInstance().setEnabled(true);
        } else {
            publicLogger.setEnabled(false);
            PublicLogger.Companion.getAnonymousInstance().setEnabled(false);
        }
        if (((Boolean) WrapUtils.getOrDefault(appMetricaConfig.crashReporting, bool2)).booleanValue()) {
            this.f20557b.d().a(this.f20556a, appMetricaConfig, this);
            this.f20557b.d().b();
            publicLogger.info("Register application crash handler", new Object[0]);
        } else {
            this.f20557b.d().a();
            publicLogger.info("Disable all crash handlers", new Object[0]);
        }
        if (((Boolean) WrapUtils.getOrDefault(appMetricaConfig.sessionsAutoTrackingEnabled, bool2)).booleanValue()) {
            this.f20565j.a();
        } else {
            Jk jk = this.f20565j;
            synchronized (jk) {
                if (jk.f18453g) {
                    jk.f18447a.unregisterListener(jk.f18449c, ActivityEvent.RESUMED);
                    jk.f18447a.unregisterListener(jk.f18450d, ActivityEvent.PAUSED);
                    jk.f18453g = false;
                }
            }
        }
        this.f20561f.d(appMetricaConfig);
        C1676zl c1676zl = this.f20559d;
        c1676zl.f21077e = publicLogger;
        c1676zl.b(appMetricaConfig.customHosts);
        C1676zl c1676zl2 = this.f20559d;
        Object obj = appMetricaConfig.additionalConfig.get("YMM_clids");
        c1676zl2.a(obj instanceof Map ? (Map) obj : null);
        String str = (String) appMetricaConfig.additionalConfig.get("YMM_distributionReferrer");
        this.f20559d.a(str);
        if (str != null) {
            this.f20559d.b("api");
        }
        this.f20563h.a(appMetricaConfig.locationTracking, appMetricaConfig.dataSendingEnabled, appMetricaConfig.advIdentifiersTracking);
        this.f20559d.i();
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void a(Location location) {
        j().a(location);
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void a(boolean z10) {
        j().a(z10);
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Tc
    public final void a(String str, String str2) {
        j().a(str, str2);
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.InterfaceC1168fb
    public final InterfaceC1143eb a() {
        return this.f20562g;
    }
}
