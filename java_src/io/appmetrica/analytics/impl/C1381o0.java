package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.Location;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* renamed from: io.appmetrica.analytics.impl.o0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1381o0 implements InterfaceC1168fb {

    /* renamed from: e  reason: collision with root package name */
    public static volatile C1381o0 f20244e = null;

    /* renamed from: f  reason: collision with root package name */
    public static volatile boolean f20245f = false;

    /* renamed from: g  reason: collision with root package name */
    public static volatile boolean f20246g;

    /* renamed from: a  reason: collision with root package name */
    public final Context f20247a;

    /* renamed from: b  reason: collision with root package name */
    public final C1256j0 f20248b;

    /* renamed from: c  reason: collision with root package name */
    public final FutureTask f20249c;

    /* renamed from: d  reason: collision with root package name */
    public final Na f20250d;

    public C1381o0(Context context) {
        this.f20247a = context;
        C1256j0 c10 = C1509t4.j().c();
        this.f20248b = c10;
        this.f20250d = c10.a(context, C1509t4.j().f());
        this.f20249c = new FutureTask(new Callable() { // from class: io.appmetrica.analytics.impl.yp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return C1381o0.this.p();
            }
        });
    }

    public static C1381o0 a(Context context) {
        C1381o0 c1381o0 = f20244e;
        if (c1381o0 == null) {
            synchronized (C1381o0.class) {
                c1381o0 = f20244e;
                if (c1381o0 == null) {
                    c1381o0 = new C1381o0(context);
                    c1381o0.j();
                    C1509t4.j().f20620c.a().execute(new RunnableC1356n0(c1381o0));
                    f20244e = c1381o0;
                }
            }
        }
        return c1381o0;
    }

    public static void b(boolean z10) {
        c().b(z10);
    }

    public static void clearAppEnvironment() {
        c().clearAppEnvironment();
    }

    public static synchronized boolean k() {
        boolean z10;
        synchronized (C1381o0.class) {
            z10 = f20245f;
        }
        return z10;
    }

    public static boolean l() {
        return f20246g;
    }

    public static synchronized boolean m() {
        boolean z10;
        synchronized (C1381o0.class) {
            C1381o0 c1381o0 = f20244e;
            if (c1381o0 != null && c1381o0.f20249c.isDone()) {
                if (c1381o0.f().i() != null) {
                    z10 = true;
                }
            }
            z10 = false;
        }
        return z10;
    }

    public static synchronized void n() {
        synchronized (C1381o0.class) {
            f20244e = null;
            f20245f = false;
            f20246g = false;
        }
    }

    public static void putAppEnvironmentValue(String str, String str2) {
        c().putAppEnvironmentValue(str, str2);
    }

    public static synchronized void q() {
        synchronized (C1381o0.class) {
            f20245f = true;
        }
    }

    public static void r() {
        f20246g = true;
    }

    public static C1381o0 s() {
        return f20244e;
    }

    public static void setDataSendingEnabled(boolean z10) {
        c().setDataSendingEnabled(z10);
    }

    public static void setUserProfileID(String str) {
        c().setUserProfileID(str);
    }

    public final void c(AppMetricaConfig appMetricaConfig) {
        this.f20250d.a(appMetricaConfig, this);
    }

    public final void d(AppMetricaConfig appMetricaConfig) {
        f().a(appMetricaConfig);
        C1509t4.j().f20620c.a().execute(new RunnableC1357n1(this.f20247a));
    }

    public final String e() {
        return f().e();
    }

    public final Oa f() {
        try {
            return (Oa) this.f20249c.get();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public final Map<String, String> g() {
        return f().g();
    }

    public final AdvIdentifiersResult h() {
        return f().h();
    }

    public final C1567vc i() {
        return f().i();
    }

    public final void j() {
        C1260j4 c1260j4 = C1509t4.j().f20620c;
        Runnable runnable = new Runnable() { // from class: io.appmetrica.analytics.impl.zp
            @Override // java.lang.Runnable
            public final void run() {
                C1381o0.this.o();
            }
        };
        c1260j4.f19837a.getClass();
        new InterruptionSafeThread(runnable, "IAA-INIT_CORE-" + Fd.f18227a.incrementAndGet()).start();
    }

    public final void o() {
        C1509t4.j().f20634q.a(this.f20247a);
        new C1360n4(this.f20247a).a(this.f20247a);
        C1509t4.j().a(this.f20247a).a();
        this.f20249c.run();
    }

    public final Oa p() {
        Oa oa2;
        C1256j0 c1256j0 = this.f20248b;
        Context context = this.f20247a;
        Na na2 = this.f20250d;
        synchronized (c1256j0) {
            if (c1256j0.f19823d == null) {
                if (c1256j0.a(context)) {
                    c1256j0.f19823d = new C1530u0();
                } else {
                    c1256j0.f19823d = new C1480s0(context, na2);
                }
            }
            oa2 = c1256j0.f19823d;
        }
        return oa2;
    }

    public final void b(AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        f().a(appMetricaLibraryAdapterConfig);
        C1509t4.j().f20620c.a().execute(new RunnableC1357n1(this.f20247a));
    }

    public final InterfaceC1118db c(ReporterConfig reporterConfig) {
        return f().c(reporterConfig);
    }

    public static Tc c() {
        if (m()) {
            return f20244e.f();
        }
        return C1509t4.j().f20619b;
    }

    public final C1266ja d() {
        return f().d();
    }

    public final C1559v4 b() {
        return this.f20250d.a();
    }

    public static void a(Location location) {
        c().a(location);
    }

    public static void a(boolean z10) {
        c().a(z10);
    }

    public static void a(String str, String str2) {
        c().a(str, str2);
    }

    public final void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        f().a(deferredDeeplinkParametersListener);
    }

    public final void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        f().a(deferredDeeplinkListener);
    }

    public final void a(ReporterConfig reporterConfig) {
        f().a(reporterConfig);
    }

    public final void a(StartupParamsCallback startupParamsCallback, List<String> list) {
        f().a(startupParamsCallback, list);
    }

    public static synchronized void a(C1381o0 c1381o0) {
        synchronized (C1381o0.class) {
            f20244e = c1381o0;
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1168fb
    public final InterfaceC1143eb a() {
        return f().a();
    }
}
