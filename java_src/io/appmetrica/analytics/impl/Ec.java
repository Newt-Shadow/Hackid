package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.PreloadInfo;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* loaded from: classes2.dex */
public final class Ec {

    /* renamed from: a  reason: collision with root package name */
    public final Context f18164a;

    /* renamed from: b  reason: collision with root package name */
    public final C1598wi f18165b;

    /* renamed from: c  reason: collision with root package name */
    public final Hd f18166c;

    /* renamed from: d  reason: collision with root package name */
    public final Y9 f18167d;

    /* renamed from: e  reason: collision with root package name */
    public final Gh f18168e;

    /* renamed from: f  reason: collision with root package name */
    public final C1184g2 f18169f;

    /* renamed from: g  reason: collision with root package name */
    public final C1467rc f18170g;

    /* renamed from: h  reason: collision with root package name */
    public final C1405p f18171h;

    /* renamed from: i  reason: collision with root package name */
    public final He f18172i;

    /* renamed from: j  reason: collision with root package name */
    public final C1628xn f18173j;

    /* renamed from: k  reason: collision with root package name */
    public final Cg f18174k;

    /* renamed from: l  reason: collision with root package name */
    public final G6 f18175l;

    /* renamed from: m  reason: collision with root package name */
    public final W f18176m;

    public Ec(Context context, C1645yf c1645yf, C1598wi c1598wi, C1676zl c1676zl) {
        this.f18164a = context;
        this.f18165b = c1598wi;
        this.f18166c = new Hd(c1645yf);
        Y9 y92 = new Y9(context);
        this.f18167d = y92;
        this.f18168e = new Gh(c1645yf, new CounterConfiguration(CounterConfigurationReporterType.MAIN));
        this.f18169f = new C1184g2();
        this.f18170g = C1509t4.j().m();
        this.f18171h = new C1405p();
        this.f18172i = new He(y92);
        this.f18173j = new C1628xn();
        this.f18174k = new Cg();
        this.f18175l = new G6();
        this.f18176m = new W();
    }

    public final W a() {
        return this.f18176m;
    }

    public final Context b() {
        return this.f18164a;
    }

    public final G6 c() {
        return this.f18175l;
    }

    public final Y9 d() {
        return this.f18167d;
    }

    public final He e() {
        return this.f18172i;
    }

    public final C1467rc f() {
        return this.f18170g;
    }

    public final Cg g() {
        return this.f18174k;
    }

    public final Gh h() {
        return this.f18168e;
    }

    public final C1598wi i() {
        return this.f18165b;
    }

    public final C1628xn j() {
        return this.f18173j;
    }

    public final void a(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger) {
        this.f18168e.f19320b.applyFromConfig(appMetricaConfig);
        Gh gh = this.f18168e;
        String str = appMetricaConfig.userProfileID;
        synchronized (gh) {
            gh.f18274f = str;
        }
        Gh gh2 = this.f18168e;
        PreloadInfo preloadInfo = appMetricaConfig.preloadInfo;
        Boolean bool = (Boolean) appMetricaConfig.additionalConfig.get("YMM_preloadInfoAutoTracking");
        gh2.f18272d = new C1495sf(preloadInfo, publicLogger, bool != null ? bool.booleanValue() : false);
        StringBuilder sb2 = new StringBuilder("Actual session timeout is ");
        Integer num = appMetricaConfig.sessionTimeout;
        if (num == null) {
            num = 10;
        }
        sb2.append(num.intValue());
        publicLogger.info(sb2.toString(), new Object[0]);
    }
}
