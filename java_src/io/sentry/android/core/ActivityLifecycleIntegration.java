package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import io.sentry.a7;
import io.sentry.android.core.performance.g;
import io.sentry.b0;
import io.sentry.d3;
import io.sentry.e3;
import io.sentry.h2;
import io.sentry.j5;
import io.sentry.m5;
import io.sentry.p6;
import io.sentry.s5;
import io.sentry.t1;
import io.sentry.x6;
import io.sentry.y3;
import io.sentry.y6;
import io.sentry.z6;
import java.io.Closeable;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class ActivityLifecycleIntegration implements io.sentry.e1, Closeable, Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final Application f22018a;

    /* renamed from: b  reason: collision with root package name */
    private final p0 f22019b;

    /* renamed from: c  reason: collision with root package name */
    private io.sentry.o0 f22020c;

    /* renamed from: d  reason: collision with root package name */
    private SentryAndroidOptions f22021d;

    /* renamed from: g  reason: collision with root package name */
    private boolean f22024g;

    /* renamed from: j  reason: collision with root package name */
    private io.sentry.z0 f22027j;

    /* renamed from: r  reason: collision with root package name */
    private final h f22035r;

    /* renamed from: e  reason: collision with root package name */
    private boolean f22022e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f22023f = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f22025h = false;

    /* renamed from: i  reason: collision with root package name */
    private io.sentry.b0 f22026i = null;

    /* renamed from: k  reason: collision with root package name */
    private final WeakHashMap f22028k = new WeakHashMap();

    /* renamed from: l  reason: collision with root package name */
    private final WeakHashMap f22029l = new WeakHashMap();

    /* renamed from: m  reason: collision with root package name */
    private final WeakHashMap f22030m = new WeakHashMap();

    /* renamed from: n  reason: collision with root package name */
    private y3 f22031n = new m5(new Date(0), 0);

    /* renamed from: o  reason: collision with root package name */
    private long f22032o = 0;

    /* renamed from: p  reason: collision with root package name */
    private Future f22033p = null;

    /* renamed from: q  reason: collision with root package name */
    private final WeakHashMap f22034q = new WeakHashMap();

    public ActivityLifecycleIntegration(Application application, p0 p0Var, h hVar) {
        this.f22018a = (Application) io.sentry.util.q.c(application, "Application is required");
        this.f22019b = (p0) io.sentry.util.q.c(p0Var, "BuildInfoProvider is required");
        this.f22035r = (h) io.sentry.util.q.c(hVar, "ActivityFramesTracker is required");
        if (p0Var.d() >= 29) {
            this.f22024g = true;
        }
    }

    private String A0(String str) {
        return str + " initial display";
    }

    private boolean D0(SentryAndroidOptions sentryAndroidOptions) {
        if (sentryAndroidOptions.isTracingEnabled() && sentryAndroidOptions.isEnableAutoActivityLifecycleTracing()) {
            return true;
        }
        return false;
    }

    private void E(io.sentry.z0 z0Var) {
        if (z0Var != null && !z0Var.c()) {
            z0Var.i();
        }
    }

    private void H(io.sentry.z0 z0Var, y3 y3Var) {
        P(z0Var, y3Var, null);
    }

    private boolean J0(Activity activity) {
        return this.f22034q.containsKey(activity);
    }

    private void P(io.sentry.z0 z0Var, y3 y3Var, p6 p6Var) {
        if (z0Var != null && !z0Var.c()) {
            if (p6Var == null) {
                if (z0Var.d() != null) {
                    p6Var = z0Var.d();
                } else {
                    p6Var = p6.OK;
                }
            }
            z0Var.r(p6Var, y3Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T0(io.sentry.u0 u0Var, io.sentry.a1 a1Var, io.sentry.a1 a1Var2) {
        if (a1Var2 == null) {
            u0Var.E(a1Var);
            return;
        }
        SentryAndroidOptions sentryAndroidOptions = this.f22021d;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(j5.DEBUG, "Transaction '%s' won't be bound to the Scope since there's one already in there.", a1Var.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void U0(io.sentry.a1 a1Var, io.sentry.u0 u0Var, io.sentry.a1 a1Var2) {
        if (a1Var2 == a1Var) {
            u0Var.h();
        }
    }

    private void W(io.sentry.z0 z0Var, p6 p6Var) {
        if (z0Var != null && !z0Var.c()) {
            z0Var.g(p6Var);
        }
    }

    private void X(final io.sentry.a1 a1Var, io.sentry.z0 z0Var, io.sentry.z0 z0Var2) {
        if (a1Var == null || a1Var.c()) {
            return;
        }
        W(z0Var, p6.DEADLINE_EXCEEDED);
        a1(z0Var2, z0Var);
        u();
        p6 d10 = a1Var.d();
        if (d10 == null) {
            d10 = p6.OK;
        }
        a1Var.g(d10);
        io.sentry.o0 o0Var = this.f22020c;
        if (o0Var != null) {
            o0Var.y(new e3() { // from class: io.sentry.android.core.k
                @Override // io.sentry.e3
                public final void a(io.sentry.u0 u0Var) {
                    ActivityLifecycleIntegration.this.V0(a1Var, u0Var);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z0(WeakReference weakReference, String str, io.sentry.a1 a1Var) {
        Activity activity = (Activity) weakReference.get();
        if (activity != null) {
            this.f22035r.n(activity, a1Var.m());
            return;
        }
        SentryAndroidOptions sentryAndroidOptions = this.f22021d;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(j5.WARNING, "Unable to track activity frames as the Activity %s has been destroyed.", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c1 */
    public void Y0(io.sentry.z0 z0Var, io.sentry.z0 z0Var2) {
        io.sentry.android.core.performance.g p10 = io.sentry.android.core.performance.g.p();
        io.sentry.android.core.performance.h j10 = p10.j();
        io.sentry.android.core.performance.h q10 = p10.q();
        if (j10.s() && j10.r()) {
            j10.A();
        }
        if (q10.s() && q10.r()) {
            q10.A();
        }
        x();
        SentryAndroidOptions sentryAndroidOptions = this.f22021d;
        if (sentryAndroidOptions != null && z0Var2 != null) {
            y3 a10 = sentryAndroidOptions.getDateProvider().a();
            long millis = TimeUnit.NANOSECONDS.toMillis(a10.b(z0Var2.t()));
            Long valueOf = Long.valueOf(millis);
            t1.a aVar = t1.a.MILLISECOND;
            z0Var2.j("time_to_initial_display", valueOf, aVar);
            if (z0Var != null && z0Var.c()) {
                z0Var.f(a10);
                z0Var2.j("time_to_full_display", Long.valueOf(millis), aVar);
            }
            H(z0Var2, a10);
            return;
        }
        E(z0Var2);
    }

    private String d0(Activity activity) {
        return activity.getClass().getSimpleName();
    }

    private void d1(io.sentry.z0 z0Var) {
        if (z0Var != null) {
            z0Var.o().m("auto.ui.activity");
        }
    }

    private void e1(Activity activity) {
        y3 y3Var;
        Boolean bool;
        y3 y3Var2;
        boolean z10;
        final WeakReference weakReference = new WeakReference(activity);
        if (this.f22020c != null && !J0(activity)) {
            if (!this.f22022e) {
                this.f22034q.put(activity, h2.u());
                io.sentry.util.a0.h(this.f22020c);
                return;
            }
            f1();
            final String d02 = d0(activity);
            io.sentry.android.core.performance.h k10 = io.sentry.android.core.performance.g.p().k(this.f22021d);
            boolean z11 = false;
            x6 x6Var = null;
            if (x0.u() && k10.s()) {
                y3Var = k10.m();
                if (io.sentry.android.core.performance.g.p().l() == g.a.COLD) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                bool = Boolean.valueOf(z10);
            } else {
                y3Var = null;
                bool = null;
            }
            a7 a7Var = new a7();
            a7Var.n(30000L);
            if (this.f22021d.isEnableActivityLifecycleTracingAutoFinish()) {
                a7Var.o(this.f22021d.getIdleTimeout());
                a7Var.d(true);
            }
            a7Var.r(true);
            a7Var.q(new z6() { // from class: io.sentry.android.core.o
                @Override // io.sentry.z6
                public final void a(io.sentry.a1 a1Var) {
                    ActivityLifecycleIntegration.this.Z0(weakReference, d02, a1Var);
                }
            });
            if (!this.f22025h && y3Var != null && bool != null) {
                x6 i10 = io.sentry.android.core.performance.g.p().i();
                io.sentry.android.core.performance.g.p().A(null);
                x6Var = i10;
                y3Var2 = y3Var;
            } else {
                y3Var2 = this.f22031n;
            }
            a7Var.p(y3Var2);
            if (x6Var != null) {
                z11 = true;
            }
            a7Var.m(z11);
            final io.sentry.a1 w10 = this.f22020c.w(new y6(d02, io.sentry.protocol.a0.COMPONENT, "ui.load", x6Var), a7Var);
            d1(w10);
            if (!this.f22025h && y3Var != null && bool != null) {
                io.sentry.z0 h10 = w10.h(o0(bool.booleanValue()), k0(bool.booleanValue()), y3Var, io.sentry.d1.SENTRY);
                this.f22027j = h10;
                d1(h10);
                x();
            }
            String A0 = A0(d02);
            io.sentry.d1 d1Var = io.sentry.d1.SENTRY;
            final io.sentry.z0 h11 = w10.h("ui.load.initial_display", A0, y3Var2, d1Var);
            this.f22028k.put(activity, h11);
            d1(h11);
            if (this.f22023f && this.f22026i != null && this.f22021d != null) {
                final io.sentry.z0 h12 = w10.h("ui.load.full_display", t0(d02), y3Var2, d1Var);
                d1(h12);
                try {
                    this.f22029l.put(activity, h12);
                    this.f22033p = this.f22021d.getExecutorService().c(new Runnable() { // from class: io.sentry.android.core.p
                        @Override // java.lang.Runnable
                        public final void run() {
                            ActivityLifecycleIntegration.this.a1(h12, h11);
                        }
                    }, 25000L);
                } catch (RejectedExecutionException e10) {
                    this.f22021d.getLogger().b(j5.ERROR, "Failed to call the executor. Time to full display span will not be finished automatically. Did you call Sentry.close()?", e10);
                }
            }
            this.f22020c.y(new e3() { // from class: io.sentry.android.core.q
                @Override // io.sentry.e3
                public final void a(io.sentry.u0 u0Var) {
                    ActivityLifecycleIntegration.this.b1(w10, u0Var);
                }
            });
            this.f22034q.put(activity, w10);
        }
    }

    private void f1() {
        for (Map.Entry entry : this.f22034q.entrySet()) {
            X((io.sentry.a1) entry.getValue(), (io.sentry.z0) this.f22028k.get(entry.getKey()), (io.sentry.z0) this.f22029l.get(entry.getKey()));
        }
    }

    private void g1(Activity activity, boolean z10) {
        if (this.f22022e && z10) {
            X((io.sentry.a1) this.f22034q.get(activity), null, null);
        }
    }

    private String k0(boolean z10) {
        return z10 ? "Cold Start" : "Warm Start";
    }

    private String o0(boolean z10) {
        return z10 ? "app.start.cold" : "app.start.warm";
    }

    private String q0(io.sentry.z0 z0Var) {
        String description = z0Var.getDescription();
        if (description != null && description.endsWith(" - Deadline Exceeded")) {
            return description;
        }
        return z0Var.getDescription() + " - Deadline Exceeded";
    }

    private String t0(String str) {
        return str + " full display";
    }

    private void u() {
        Future future = this.f22033p;
        if (future != null) {
            future.cancel(false);
            this.f22033p = null;
        }
    }

    private void v() {
        this.f22025h = false;
        this.f22030m.clear();
    }

    private void x() {
        y3 i10 = io.sentry.android.core.performance.g.p().k(this.f22021d).i();
        if (this.f22022e && i10 != null) {
            H(this.f22027j, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public void a1(io.sentry.z0 z0Var, io.sentry.z0 z0Var2) {
        y3 y3Var;
        if (z0Var != null && !z0Var.c()) {
            z0Var.l(q0(z0Var));
            if (z0Var2 != null) {
                y3Var = z0Var2.p();
            } else {
                y3Var = null;
            }
            if (y3Var == null) {
                y3Var = z0Var.t();
            }
            P(z0Var, y3Var, p6.DEADLINE_EXCEEDED);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22018a.unregisterActivityLifecycleCallbacks(this);
        SentryAndroidOptions sentryAndroidOptions = this.f22021d;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(j5.DEBUG, "ActivityLifecycleIntegration removed.", new Object[0]);
        }
        this.f22035r.p();
    }

    @Override // io.sentry.e1
    public void f(io.sentry.o0 o0Var, s5 s5Var) {
        SentryAndroidOptions sentryAndroidOptions;
        if (s5Var instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) s5Var;
        } else {
            sentryAndroidOptions = null;
        }
        this.f22021d = (SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.f22020c = (io.sentry.o0) io.sentry.util.q.c(o0Var, "Hub is required");
        this.f22022e = D0(this.f22021d);
        this.f22026i = this.f22021d.getFullyDisplayedReporter();
        this.f22023f = this.f22021d.isEnableTimeToFullDisplayTracing();
        this.f22018a.registerActivityLifecycleCallbacks(this);
        this.f22021d.getLogger().c(j5.DEBUG, "ActivityLifecycleIntegration installed.", new Object[0]);
        io.sentry.util.k.a("ActivityLifecycle");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityCreated(Activity activity, Bundle bundle) {
        io.sentry.b0 b0Var;
        SentryAndroidOptions sentryAndroidOptions;
        if (!this.f22024g) {
            onActivityPreCreated(activity, bundle);
        }
        if (this.f22020c != null && (sentryAndroidOptions = this.f22021d) != null && sentryAndroidOptions.isEnableScreenTracking()) {
            final String a10 = io.sentry.android.core.internal.util.d.a(activity);
            this.f22020c.y(new e3() { // from class: io.sentry.android.core.l
                @Override // io.sentry.e3
                public final void a(io.sentry.u0 u0Var) {
                    u0Var.v(a10);
                }
            });
        }
        e1(activity);
        final io.sentry.z0 z0Var = (io.sentry.z0) this.f22029l.get(activity);
        this.f22025h = true;
        if (this.f22022e && z0Var != null && (b0Var = this.f22026i) != null) {
            b0Var.b(new b0.a() { // from class: io.sentry.android.core.m
            });
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityDestroyed(Activity activity) {
        this.f22030m.remove(activity);
        if (this.f22022e) {
            W(this.f22027j, p6.CANCELLED);
            io.sentry.z0 z0Var = (io.sentry.z0) this.f22028k.get(activity);
            W(z0Var, p6.DEADLINE_EXCEEDED);
            a1((io.sentry.z0) this.f22029l.get(activity), z0Var);
            u();
            g1(activity, true);
            this.f22027j = null;
            this.f22028k.remove(activity);
            this.f22029l.remove(activity);
        }
        this.f22034q.remove(activity);
        if (this.f22034q.isEmpty() && !activity.isChangingConfigurations()) {
            v();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityPaused(Activity activity) {
        if (!this.f22024g) {
            onActivityPrePaused(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostCreated(Activity activity, Bundle bundle) {
        if (this.f22027j == null) {
            this.f22030m.remove(activity);
            return;
        }
        io.sentry.android.core.performance.b bVar = (io.sentry.android.core.performance.b) this.f22030m.get(activity);
        if (bVar != null) {
            bVar.b().A();
            io.sentry.android.core.performance.h b10 = bVar.b();
            b10.v(activity.getClass().getName() + ".onCreate");
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostStarted(Activity activity) {
        io.sentry.android.core.performance.b bVar = (io.sentry.android.core.performance.b) this.f22030m.remove(activity);
        if (this.f22027j != null && bVar != null) {
            bVar.f().A();
            io.sentry.android.core.performance.h f10 = bVar.f();
            f10.v(activity.getClass().getName() + ".onStart");
            io.sentry.android.core.performance.g.p().e(bVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        y3 a10;
        if (this.f22025h) {
            return;
        }
        io.sentry.o0 o0Var = this.f22020c;
        if (o0Var != null) {
            a10 = o0Var.B().getDateProvider().a();
        } else {
            a10 = t.a();
        }
        this.f22031n = a10;
        this.f22032o = SystemClock.uptimeMillis();
        io.sentry.android.core.performance.b bVar = new io.sentry.android.core.performance.b();
        bVar.b().x(this.f22032o);
        this.f22030m.put(activity, bVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPrePaused(Activity activity) {
        y3 a10;
        this.f22025h = true;
        io.sentry.o0 o0Var = this.f22020c;
        if (o0Var != null) {
            a10 = o0Var.B().getDateProvider().a();
        } else {
            a10 = t.a();
        }
        this.f22031n = a10;
        this.f22032o = SystemClock.uptimeMillis();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreStarted(Activity activity) {
        io.sentry.android.core.performance.b bVar;
        if (this.f22027j != null && (bVar = (io.sentry.android.core.performance.b) this.f22030m.get(activity)) != null) {
            bVar.f().x(SystemClock.uptimeMillis());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityResumed(Activity activity) {
        if (!this.f22024g) {
            onActivityPostStarted(activity);
        }
        if (this.f22022e) {
            final io.sentry.z0 z0Var = (io.sentry.z0) this.f22028k.get(activity);
            final io.sentry.z0 z0Var2 = (io.sentry.z0) this.f22029l.get(activity);
            if (activity.getWindow() != null) {
                io.sentry.android.core.internal.util.k.f(activity, new Runnable() { // from class: io.sentry.android.core.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActivityLifecycleIntegration.this.X0(z0Var2, z0Var);
                    }
                }, this.f22019b);
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.sentry.android.core.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActivityLifecycleIntegration.this.Y0(z0Var2, z0Var);
                    }
                });
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStarted(Activity activity) {
        if (!this.f22024g) {
            onActivityPostCreated(activity, null);
            onActivityPreStarted(activity);
        }
        if (this.f22022e) {
            this.f22035r.e(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public void b1(final io.sentry.u0 u0Var, final io.sentry.a1 a1Var) {
        u0Var.D(new d3.c() { // from class: io.sentry.android.core.r
            @Override // io.sentry.d3.c
            public final void a(io.sentry.a1 a1Var2) {
                ActivityLifecycleIntegration.this.T0(u0Var, a1Var, a1Var2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public void V0(final io.sentry.u0 u0Var, final io.sentry.a1 a1Var) {
        u0Var.D(new d3.c() { // from class: io.sentry.android.core.n
            @Override // io.sentry.d3.c
            public final void a(io.sentry.a1 a1Var2) {
                ActivityLifecycleIntegration.U0(io.sentry.a1.this, u0Var, a1Var2);
            }
        });
    }
}
