package io.appmetrica.analytics.impl;

import android.os.Handler;
import android.os.Looper;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: io.appmetrica.analytics.impl.e  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1131e {

    /* renamed from: g  reason: collision with root package name */
    public static final long f19548g = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: h  reason: collision with root package name */
    public static final String f19549h = "WatchDog-" + Fd.f18227a.incrementAndGet();

    /* renamed from: a  reason: collision with root package name */
    public final CopyOnWriteArrayList f19550a;

    /* renamed from: b  reason: collision with root package name */
    public final AtomicInteger f19551b;

    /* renamed from: c  reason: collision with root package name */
    public final Handler f19552c;

    /* renamed from: d  reason: collision with root package name */
    public C1106d f19553d;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicBoolean f19554e;

    /* renamed from: f  reason: collision with root package name */
    public final Runnable f19555f;

    public C1131e(Ob ob2) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f19550a = copyOnWriteArrayList;
        this.f19551b = new AtomicInteger();
        this.f19552c = new Handler(Looper.getMainLooper());
        this.f19554e = new AtomicBoolean();
        this.f19555f = new Runnable() { // from class: io.appmetrica.analytics.impl.pp
            @Override // java.lang.Runnable
            public final void run() {
                C1131e.this.a();
            }
        };
        copyOnWriteArrayList.add(ob2);
    }

    public final /* synthetic */ void a() {
        this.f19554e.set(true);
    }

    public final synchronized void b() {
        C1106d c1106d = this.f19553d;
        if (c1106d != null) {
            c1106d.f19497a.set(false);
            this.f19553d = null;
            PublicLogger.getAnonymousInstance().info("Stop ANR monitoring", new Object[0]);
        }
    }

    public final synchronized void a(int i10) {
        AtomicInteger atomicInteger = this.f19551b;
        Integer valueOf = Integer.valueOf(i10);
        int i11 = 5;
        if (valueOf != null && valueOf.intValue() >= 5) {
            i11 = valueOf.intValue();
        }
        atomicInteger.set(i11);
        if (this.f19553d == null) {
            C1106d c1106d = new C1106d(this);
            this.f19553d = c1106d;
            try {
                c1106d.setName(f19549h);
            } catch (SecurityException unused) {
            }
            this.f19553d.start();
            PublicLogger.getAnonymousInstance().info("Start ANR monitoring with timeout: %s seconds", Integer.valueOf(i10));
        }
    }
}
