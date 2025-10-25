package io.appmetrica.analytics.impl;

import android.app.Activity;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;
/* loaded from: classes2.dex */
public final class Jk {

    /* renamed from: a  reason: collision with root package name */
    public final C1355n f18447a;

    /* renamed from: b  reason: collision with root package name */
    public final B5 f18448b;

    /* renamed from: c  reason: collision with root package name */
    public final ActivityLifecycleListener f18449c;

    /* renamed from: d  reason: collision with root package name */
    public final ActivityLifecycleListener f18450d;

    /* renamed from: e  reason: collision with root package name */
    public final C1405p f18451e;

    /* renamed from: f  reason: collision with root package name */
    public final C1305l f18452f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f18453g;

    public Jk(C1355n c1355n, C1305l c1305l) {
        this(c1355n, c1305l, new B5(), new C1405p());
    }

    public final void a(final Activity activity, ActivityEvent activityEvent) {
        synchronized (this) {
            if (this.f18453g) {
                B5 b52 = this.f18448b;
                Zd zd2 = new Zd() { // from class: io.appmetrica.analytics.impl.uo
                    @Override // io.appmetrica.analytics.impl.Zd
                    public final void consume(Object obj) {
                        Jk.this.a(activity, (C1517tc) obj);
                    }
                };
                b52.getClass();
                C1509t4.j().f20620c.a().execute(new A5(b52, zd2));
            }
        }
    }

    public final void b(final Activity activity, ActivityEvent activityEvent) {
        synchronized (this) {
            if (this.f18453g) {
                B5 b52 = this.f18448b;
                Zd zd2 = new Zd() { // from class: io.appmetrica.analytics.impl.xo
                    @Override // io.appmetrica.analytics.impl.Zd
                    public final void consume(Object obj) {
                        Jk.this.b(activity, (C1517tc) obj);
                    }
                };
                b52.getClass();
                C1509t4.j().f20620c.a().execute(new A5(b52, zd2));
            }
        }
    }

    public Jk(C1355n c1355n, C1305l c1305l, B5 b52, C1405p c1405p) {
        this.f18453g = false;
        this.f18447a = c1355n;
        this.f18452f = c1305l;
        this.f18448b = b52;
        this.f18451e = c1405p;
        this.f18449c = new ActivityLifecycleListener() { // from class: io.appmetrica.analytics.impl.vo
            @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
            public final void onEvent(Activity activity, ActivityEvent activityEvent) {
                Jk.this.a(activity, activityEvent);
            }
        };
        this.f18450d = new ActivityLifecycleListener() { // from class: io.appmetrica.analytics.impl.wo
            @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
            public final void onEvent(Activity activity, ActivityEvent activityEvent) {
                Jk.this.b(activity, activityEvent);
            }
        };
    }

    public final synchronized EnumC1330m a() {
        if (!this.f18453g) {
            this.f18447a.registerListener(this.f18449c, ActivityEvent.RESUMED);
            this.f18447a.registerListener(this.f18450d, ActivityEvent.PAUSED);
            this.f18453g = true;
        }
        return this.f18447a.f20151b;
    }

    public final void b(Activity activity, C1517tc c1517tc) {
        if (this.f18451e.a(activity, EnumC1380o.PAUSED)) {
            c1517tc.b(activity);
        }
    }

    public final void a(Activity activity, C1517tc c1517tc) {
        if (this.f18451e.a(activity, EnumC1380o.RESUMED)) {
            c1517tc.a(activity);
        }
    }
}
