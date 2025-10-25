package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.plugins.IPluginReporter;
import io.appmetrica.analytics.profile.UserProfile;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.hi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1225hi implements InterfaceC1118db {

    /* renamed from: a  reason: collision with root package name */
    public final C1406p0 f19748a;

    /* renamed from: b  reason: collision with root package name */
    public final Bh f19749b;

    /* renamed from: c  reason: collision with root package name */
    public final IHandlerExecutor f19750c;

    /* renamed from: d  reason: collision with root package name */
    public final Context f19751d;

    /* renamed from: e  reason: collision with root package name */
    public final ReporterConfig f19752e;

    /* renamed from: f  reason: collision with root package name */
    public final C1449qi f19753f;

    /* renamed from: g  reason: collision with root package name */
    public final Me f19754g;

    public C1225hi(ICommonExecutor iCommonExecutor, Context context, String str) {
        this(context.getApplicationContext(), str, new C1406p0());
    }

    public static InterfaceC1118db a(C1406p0 c1406p0, Context context, ReporterConfig reporterConfig) {
        c1406p0.getClass();
        return C1381o0.a(context).f().c(reporterConfig);
    }

    public final void c(String str) {
        ReporterConfig build = ReporterConfig.newConfigBuilder(str).build();
        this.f19749b.getClass();
        this.f19753f.getClass();
        this.f19750c.execute(new Uh(this, build));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void clearAppEnvironment() {
        this.f19749b.getClass();
        this.f19753f.getClass();
        this.f19750c.execute(new RunnableC1150ei(this));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final IPluginReporter getPluginExtension() {
        return this.f19754g;
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void pauseSession() {
        this.f19749b.getClass();
        this.f19753f.getClass();
        this.f19750c.execute(new Mh(this));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void putAppEnvironmentValue(String str, String str2) {
        this.f19749b.getClass();
        this.f19753f.getClass();
        this.f19750c.execute(new RunnableC1125di(this, str, str2));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportAdRevenue(AdRevenue adRevenue) {
        this.f19749b.f18014h.a(adRevenue);
        this.f19753f.getClass();
        this.f19750c.execute(new Qh(this, adRevenue));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportAnr(Map<Thread, StackTraceElement[]> map) {
        this.f19749b.f18016j.a(map);
        this.f19753f.getClass();
        this.f19750c.execute(new RunnableC1050ai(this, CollectionUtils.getListFromMap(map)));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportECommerce(ECommerceEvent eCommerceEvent) {
        this.f19749b.f18015i.a(eCommerceEvent);
        this.f19753f.getClass();
        this.f19750c.execute(new Sh(this, eCommerceEvent));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportError(String str, Throwable th) {
        this.f19749b.f18008b.a(str);
        this.f19753f.getClass();
        if (th == null) {
            th = new P1();
            th.fillInStackTrace();
        }
        this.f19750c.execute(new Ih(this, str, th));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(String str) {
        this.f19749b.f18007a.a(str);
        this.f19753f.getClass();
        this.f19750c.execute(new RunnableC1175fi(this, str));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportRevenue(Revenue revenue) {
        this.f19749b.f18013g.a(revenue);
        this.f19753f.getClass();
        this.f19750c.execute(new Ph(this, revenue));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportUnhandledException(Throwable th) {
        this.f19749b.f18011e.a(th);
        this.f19753f.getClass();
        this.f19750c.execute(new Kh(this, th));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportUserProfile(UserProfile userProfile) {
        this.f19749b.f18012f.a(userProfile);
        this.f19753f.getClass();
        this.f19750c.execute(new Oh(this, userProfile));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void resumeSession() {
        this.f19749b.getClass();
        this.f19753f.getClass();
        this.f19750c.execute(new Lh(this));
    }

    @Override // io.appmetrica.analytics.IReporter, io.appmetrica.analytics.IModuleReporter
    public final void sendEventsBuffer() {
        this.f19749b.getClass();
        this.f19753f.getClass();
        this.f19750c.execute(new RunnableC1100ci(this));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void setDataSendingEnabled(boolean z10) {
        this.f19749b.getClass();
        this.f19753f.getClass();
        this.f19750c.execute(new Th(this, z10));
    }

    @Override // io.appmetrica.analytics.IModuleReporter
    public final void setSessionExtra(String str, byte[] bArr) {
        this.f19749b.getClass();
        this.f19753f.getClass();
        this.f19750c.execute(new Xh(this, str, bArr));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void setUserProfileID(String str) {
        this.f19749b.getClass();
        this.f19753f.getClass();
        this.f19750c.execute(new Nh(this, str));
    }

    public C1225hi(Context context, String str, C1406p0 c1406p0) {
        this(context, new Bh(), c1406p0, new C1449qi(), ReporterConfig.newConfigBuilder(str).build());
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1118db, io.appmetrica.analytics.impl.InterfaceC1193gb
    public final void a(C1603wn c1603wn) {
        this.f19749b.f18010d.a(c1603wn);
        this.f19753f.getClass();
        this.f19750c.execute(new Zh(this, c1603wn));
    }

    public C1225hi(Context context, Bh bh, C1406p0 c1406p0, C1449qi c1449qi, ReporterConfig reporterConfig) {
        this(context, bh, c1406p0, c1449qi, reporterConfig, new Me(new Rh(c1406p0, context, reporterConfig)));
    }

    @Override // io.appmetrica.analytics.IModuleReporter
    public final void reportAdRevenue(AdRevenue adRevenue, boolean z10) {
        this.f19749b.f18014h.a(adRevenue);
        this.f19753f.getClass();
        this.f19750c.execute(new Yh(this, adRevenue, z10));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(String str, String str2) {
        this.f19749b.f18007a.a(str);
        this.f19753f.getClass();
        this.f19750c.execute(new RunnableC1200gi(this, str, str2));
    }

    public C1225hi(Context context, Bh bh, C1406p0 c1406p0, C1449qi c1449qi, ReporterConfig reporterConfig, Me me2) {
        this.f19750c = C1509t4.j().f().a();
        this.f19751d = context;
        this.f19749b = bh;
        this.f19748a = c1406p0;
        this.f19753f = c1449qi;
        this.f19752e = reporterConfig;
        this.f19754g = me2;
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportError(String str, String str2) {
        reportError(str, str2, null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportError(String str, String str2, Throwable th) {
        this.f19749b.f18009c.a(str);
        this.f19753f.getClass();
        this.f19750c.execute(new Jh(this, str, str2, th));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1118db, io.appmetrica.analytics.impl.Z
    public final void a(P p10) {
        this.f19749b.getClass();
        this.f19753f.getClass();
        this.f19750c.execute(new RunnableC1075bi(this, p10));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(String str, Map<String, Object> map) {
        this.f19749b.f18007a.a(str);
        this.f19753f.getClass();
        this.f19750c.execute(new Hh(this, str, CollectionUtils.getListFromMap(map)));
    }

    public final void a(ReporterConfig reporterConfig) {
        this.f19749b.getClass();
        this.f19753f.getClass();
        this.f19750c.execute(new Vh(this, reporterConfig));
    }

    @Override // io.appmetrica.analytics.IModuleReporter
    public final void reportEvent(ModuleEvent moduleEvent) {
        this.f19749b.getClass();
        this.f19753f.getClass();
        this.f19750c.execute(new Wh(this, moduleEvent));
    }
}
