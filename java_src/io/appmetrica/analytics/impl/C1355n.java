package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleRegistry;
import java.util.Collection;
/* renamed from: io.appmetrica.analytics.impl.n  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1355n extends L7 implements ActivityLifecycleRegistry {

    /* renamed from: a  reason: collision with root package name */
    public Application f20150a;

    /* renamed from: b  reason: collision with root package name */
    public volatile EnumC1330m f20151b = EnumC1330m.f20070d;

    /* renamed from: c  reason: collision with root package name */
    public final Ba f20152c = new Ba(true);

    public final synchronized void a(Context context) {
        if (this.f20150a == null) {
            try {
                this.f20150a = (Application) context.getApplicationContext();
            } catch (Throwable unused) {
            }
        }
        b();
    }

    public final synchronized void b() {
        EnumC1330m enumC1330m = this.f20151b;
        EnumC1330m enumC1330m2 = EnumC1330m.f20068b;
        if (enumC1330m != enumC1330m2 && !this.f20152c.f17991a.isEmpty()) {
            if (this.f20150a == null) {
                this.f20151b = EnumC1330m.f20069c;
                return;
            }
            this.f20151b = enumC1330m2;
            this.f20150a.registerActivityLifecycleCallbacks(this);
        }
    }

    public final synchronized void c() {
        if (this.f20151b == EnumC1330m.f20068b && this.f20152c.f17991a.isEmpty()) {
            this.f20151b = EnumC1330m.f20070d;
            Application application = this.f20150a;
            if (application != null) {
                application.unregisterActivityLifecycleCallbacks(this);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(activity, ActivityEvent.CREATED);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(activity, ActivityEvent.DESTROYED);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(activity, ActivityEvent.PAUSED);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity, ActivityEvent.RESUMED);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(activity, ActivityEvent.STARTED);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(activity, ActivityEvent.STOPPED);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0004, code lost:
        if (r6.length == 0) goto L3;
     */
    @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleRegistry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void registerListener(io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener r5, io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent... r6) {
        /*
            r4 = this;
            monitor-enter(r4)
            if (r6 == 0) goto L6
            int r0 = r6.length     // Catch: java.lang.Throwable -> L1d
            if (r0 != 0) goto La
        L6:
            io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent[] r6 = io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent.values()     // Catch: java.lang.Throwable -> L1d
        La:
            int r0 = r6.length     // Catch: java.lang.Throwable -> L1d
            r1 = 0
        Lc:
            if (r1 >= r0) goto L18
            r2 = r6[r1]     // Catch: java.lang.Throwable -> L1d
            io.appmetrica.analytics.impl.Ba r3 = r4.f20152c     // Catch: java.lang.Throwable -> L1d
            r3.a(r2, r5)     // Catch: java.lang.Throwable -> L1d
            int r1 = r1 + 1
            goto Lc
        L18:
            r4.b()     // Catch: java.lang.Throwable -> L1d
            monitor-exit(r4)
            return
        L1d:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1355n.registerListener(io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener, io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent[]):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0004, code lost:
        if (r8.length == 0) goto L3;
     */
    @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleRegistry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void unregisterListener(io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener r7, io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent... r8) {
        /*
            r6 = this;
            monitor-enter(r6)
            if (r8 == 0) goto L6
            int r0 = r8.length     // Catch: java.lang.Throwable -> L3e
            if (r0 != 0) goto La
        L6:
            io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent[] r8 = io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent.values()     // Catch: java.lang.Throwable -> L3e
        La:
            int r0 = r8.length     // Catch: java.lang.Throwable -> L3e
            r1 = 0
        Lc:
            if (r1 >= r0) goto L39
            r2 = r8[r1]     // Catch: java.lang.Throwable -> L3e
            io.appmetrica.analytics.impl.Ba r3 = r6.f20152c     // Catch: java.lang.Throwable -> L3e
            java.util.HashMap r4 = r3.f17991a     // Catch: java.lang.Throwable -> L3e
            java.lang.Object r4 = r4.get(r2)     // Catch: java.lang.Throwable -> L3e
            java.util.Collection r4 = (java.util.Collection) r4     // Catch: java.lang.Throwable -> L3e
            if (r4 == 0) goto L36
            boolean r5 = r4.remove(r7)     // Catch: java.lang.Throwable -> L3e
            if (r5 == 0) goto L36
            boolean r5 = r4.isEmpty()     // Catch: java.lang.Throwable -> L3e
            if (r5 == 0) goto L31
            boolean r5 = r3.f17992b     // Catch: java.lang.Throwable -> L3e
            if (r5 == 0) goto L31
            java.util.HashMap r3 = r3.f17991a     // Catch: java.lang.Throwable -> L3e
            r3.remove(r2)     // Catch: java.lang.Throwable -> L3e
        L31:
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L3e
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L3e
        L36:
            int r1 = r1 + 1
            goto Lc
        L39:
            r6.c()     // Catch: java.lang.Throwable -> L3e
            monitor-exit(r6)
            return
        L3e:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1355n.unregisterListener(io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener, io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent[]):void");
    }

    public final synchronized void a(Application application) {
        if (this.f20150a == null) {
            this.f20150a = application;
        }
        b();
    }

    public final EnumC1330m a() {
        return this.f20151b;
    }

    public final void a(Activity activity, ActivityEvent activityEvent) {
        Collection<ActivityLifecycleListener> collection;
        synchronized (this) {
            collection = (Collection) this.f20152c.f17991a.get(activityEvent);
        }
        if (collection != null) {
            for (ActivityLifecycleListener activityLifecycleListener : collection) {
                activityLifecycleListener.onEvent(activity, activityEvent);
            }
        }
    }
}
