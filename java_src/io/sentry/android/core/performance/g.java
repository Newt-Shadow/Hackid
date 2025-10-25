package io.sentry.android.core.performance;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.internal.util.k;
import io.sentry.android.core.p0;
import io.sentry.android.core.x0;
import io.sentry.b1;
import io.sentry.x6;
import io.sentry.z1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class g extends io.sentry.android.core.performance.a {

    /* renamed from: n  reason: collision with root package name */
    private static long f22442n = SystemClock.uptimeMillis();

    /* renamed from: o  reason: collision with root package name */
    private static volatile g f22443o;

    /* renamed from: a  reason: collision with root package name */
    private a f22444a = a.UNKNOWN;

    /* renamed from: h  reason: collision with root package name */
    private b1 f22451h = null;

    /* renamed from: i  reason: collision with root package name */
    private x6 f22452i = null;

    /* renamed from: j  reason: collision with root package name */
    private boolean f22453j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f22454k = true;

    /* renamed from: l  reason: collision with root package name */
    private final AtomicInteger f22455l = new AtomicInteger();

    /* renamed from: m  reason: collision with root package name */
    private final AtomicBoolean f22456m = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    private final h f22446c = new h();

    /* renamed from: d  reason: collision with root package name */
    private final h f22447d = new h();

    /* renamed from: e  reason: collision with root package name */
    private final h f22448e = new h();

    /* renamed from: f  reason: collision with root package name */
    private final Map f22449f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    private final List f22450g = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private boolean f22445b = x0.u();

    /* loaded from: classes2.dex */
    public enum a {
        UNKNOWN,
        COLD,
        WARM
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void v() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.sentry.android.core.performance.f
            @Override // java.lang.Runnable
            public final void run() {
                g.this.s();
            }
        });
    }

    public static g p() {
        if (f22443o == null) {
            synchronized (g.class) {
                if (f22443o == null) {
                    f22443o = new g();
                }
            }
        }
        return f22443o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        if (this.f22455l.get() == 0) {
            this.f22445b = false;
            b1 b1Var = this.f22451h;
            if (b1Var != null && b1Var.isRunning()) {
                this.f22451h.close();
                this.f22451h = null;
            }
        }
    }

    public void A(x6 x6Var) {
        this.f22452i = x6Var;
    }

    public boolean B() {
        if (this.f22454k && this.f22445b) {
            return true;
        }
        return false;
    }

    public void e(b bVar) {
        this.f22450g.add(bVar);
    }

    public List g() {
        ArrayList arrayList = new ArrayList(this.f22450g);
        Collections.sort(arrayList);
        return arrayList;
    }

    public b1 h() {
        return this.f22451h;
    }

    public x6 i() {
        return this.f22452i;
    }

    public h j() {
        return this.f22446c;
    }

    public h k(SentryAndroidOptions sentryAndroidOptions) {
        if (this.f22444a != a.UNKNOWN && this.f22445b) {
            if (sentryAndroidOptions.isEnablePerformanceV2()) {
                h j10 = j();
                if (j10.s() && j10.f() <= TimeUnit.MINUTES.toMillis(1L)) {
                    return j10;
                }
            }
            h q10 = q();
            if (q10.s() && q10.f() <= TimeUnit.MINUTES.toMillis(1L)) {
                return q10;
            }
        }
        return new h();
    }

    public a l() {
        return this.f22444a;
    }

    public h m() {
        return this.f22448e;
    }

    public long n() {
        return f22442n;
    }

    public List o() {
        ArrayList arrayList = new ArrayList(this.f22449f.values());
        Collections.sort(arrayList);
        return arrayList;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        a aVar;
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.f22455l.incrementAndGet() == 1 && !this.f22456m.get()) {
            long p10 = uptimeMillis - this.f22446c.p();
            if (this.f22445b && p10 <= TimeUnit.MINUTES.toMillis(1L)) {
                if (bundle == null) {
                    aVar = a.COLD;
                } else {
                    aVar = a.WARM;
                }
                this.f22444a = aVar;
            } else {
                this.f22444a = a.WARM;
                this.f22454k = true;
                this.f22446c.u();
                this.f22446c.z();
                this.f22446c.x(uptimeMillis);
                f22442n = uptimeMillis;
                this.f22449f.clear();
                this.f22448e.u();
            }
        }
        this.f22445b = true;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (this.f22455l.decrementAndGet() == 0 && !activity.isChangingConfigurations()) {
            this.f22445b = false;
            this.f22454k = true;
            this.f22456m.set(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (this.f22456m.get()) {
            return;
        }
        if (activity.getWindow() != null) {
            k.f(activity, new Runnable() { // from class: io.sentry.android.core.performance.c
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.t();
                }
            }, new p0(z1.e()));
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.sentry.android.core.performance.d
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.u();
                }
            });
        }
    }

    public h q() {
        return this.f22447d;
    }

    public boolean r() {
        return this.f22445b;
    }

    public void w() {
        this.f22454k = false;
        this.f22449f.clear();
        this.f22450g.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public synchronized void u() {
        if (!this.f22456m.getAndSet(true)) {
            g p10 = p();
            p10.q().A();
            p10.j().A();
        }
    }

    public void y(Application application) {
        if (this.f22453j) {
            return;
        }
        boolean z10 = true;
        this.f22453j = true;
        if (!this.f22445b && !x0.u()) {
            z10 = false;
        }
        this.f22445b = z10;
        application.registerActivityLifecycleCallbacks(f22443o);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.sentry.android.core.performance.e
            @Override // java.lang.Runnable
            public final void run() {
                g.this.v();
            }
        });
    }

    public void z(b1 b1Var) {
        this.f22451h = b1Var;
    }
}
