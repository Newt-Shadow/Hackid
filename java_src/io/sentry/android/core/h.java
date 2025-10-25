package io.sentry.android.core;

import android.app.Activity;
import android.util.SparseIntArray;
import androidx.core.app.FrameMetricsAggregator;
import io.sentry.ILogger;
import io.sentry.j5;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private FrameMetricsAggregator f22260a;

    /* renamed from: b  reason: collision with root package name */
    private final SentryAndroidOptions f22261b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f22262c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f22263d;

    /* renamed from: e  reason: collision with root package name */
    private final o1 f22264e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f22265a;

        /* renamed from: b  reason: collision with root package name */
        private final int f22266b;

        /* renamed from: c  reason: collision with root package name */
        private final int f22267c;

        private b(int i10, int i11, int i12) {
            this.f22265a = i10;
            this.f22266b = i11;
            this.f22267c = i12;
        }
    }

    public h(n1 n1Var, SentryAndroidOptions sentryAndroidOptions, o1 o1Var) {
        this.f22260a = null;
        this.f22262c = new ConcurrentHashMap();
        this.f22263d = new WeakHashMap();
        if (n1Var.a("androidx.core.app.FrameMetricsAggregator", sentryAndroidOptions.getLogger())) {
            this.f22260a = new FrameMetricsAggregator();
        }
        this.f22261b = sentryAndroidOptions;
        this.f22264e = o1Var;
    }

    private b f() {
        FrameMetricsAggregator frameMetricsAggregator;
        int i10;
        int i11;
        SparseIntArray sparseIntArray;
        if (!h() || (frameMetricsAggregator = this.f22260a) == null) {
            return null;
        }
        SparseIntArray[] b10 = frameMetricsAggregator.b();
        int i12 = 0;
        if (b10 != null && b10.length > 0 && (sparseIntArray = b10[0]) != null) {
            int i13 = 0;
            i10 = 0;
            i11 = 0;
            while (i12 < sparseIntArray.size()) {
                int keyAt = sparseIntArray.keyAt(i12);
                int valueAt = sparseIntArray.valueAt(i12);
                i13 += valueAt;
                if (keyAt > 700) {
                    i11 += valueAt;
                } else if (keyAt > 16) {
                    i10 += valueAt;
                }
                i12++;
            }
            i12 = i13;
        } else {
            i10 = 0;
            i11 = 0;
        }
        return new b(i12, i10, i11);
    }

    private b g(Activity activity) {
        b f10;
        b bVar = (b) this.f22263d.remove(activity);
        if (bVar == null || (f10 = f()) == null) {
            return null;
        }
        return new b(f10.f22265a - bVar.f22265a, f10.f22266b - bVar.f22266b, f10.f22267c - bVar.f22267c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(Activity activity) {
        this.f22260a.a(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(Runnable runnable, String str) {
        try {
            runnable.run();
        } catch (Throwable unused) {
            if (str != null) {
                ILogger logger = this.f22261b.getLogger();
                j5 j5Var = j5.WARNING;
                logger.c(j5Var, "Failed to execute " + str, new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(Activity activity) {
        this.f22260a.c(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        this.f22260a.e();
    }

    private void m(final Runnable runnable, final String str) {
        try {
            if (io.sentry.android.core.internal.util.c.b().a()) {
                runnable.run();
            } else {
                this.f22264e.b(new Runnable() { // from class: io.sentry.android.core.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.j(runnable, str);
                    }
                });
            }
        } catch (Throwable unused) {
            if (str != null) {
                ILogger logger = this.f22261b.getLogger();
                j5 j5Var = j5.WARNING;
                logger.c(j5Var, "Failed to execute " + str, new Object[0]);
            }
        }
    }

    private void o(Activity activity) {
        b f10 = f();
        if (f10 != null) {
            this.f22263d.put(activity, f10);
        }
    }

    public synchronized void e(final Activity activity) {
        if (!h()) {
            return;
        }
        m(new Runnable() { // from class: io.sentry.android.core.d
            @Override // java.lang.Runnable
            public final void run() {
                h.this.i(activity);
            }
        }, "FrameMetricsAggregator.add");
        o(activity);
    }

    public boolean h() {
        if (this.f22260a != null && this.f22261b.isEnableFramesTracking() && !this.f22261b.isEnablePerformanceV2()) {
            return true;
        }
        return false;
    }

    public synchronized void n(final Activity activity, io.sentry.protocol.r rVar) {
        if (!h()) {
            return;
        }
        m(new Runnable() { // from class: io.sentry.android.core.e
            @Override // java.lang.Runnable
            public final void run() {
                h.this.k(activity);
            }
        }, null);
        b g10 = g(activity);
        if (g10 != null && (g10.f22265a != 0 || g10.f22266b != 0 || g10.f22267c != 0)) {
            io.sentry.protocol.h hVar = new io.sentry.protocol.h(Integer.valueOf(g10.f22265a), "none");
            io.sentry.protocol.h hVar2 = new io.sentry.protocol.h(Integer.valueOf(g10.f22266b), "none");
            io.sentry.protocol.h hVar3 = new io.sentry.protocol.h(Integer.valueOf(g10.f22267c), "none");
            HashMap hashMap = new HashMap();
            hashMap.put("frames_total", hVar);
            hashMap.put("frames_slow", hVar2);
            hashMap.put("frames_frozen", hVar3);
            this.f22262c.put(rVar, hashMap);
        }
    }

    public synchronized void p() {
        if (h()) {
            m(new Runnable() { // from class: io.sentry.android.core.f
                @Override // java.lang.Runnable
                public final void run() {
                    h.this.l();
                }
            }, "FrameMetricsAggregator.stop");
            this.f22260a.d();
        }
        this.f22262c.clear();
    }

    public synchronized Map q(io.sentry.protocol.r rVar) {
        if (!h()) {
            return null;
        }
        Map map = (Map) this.f22262c.get(rVar);
        this.f22262c.remove(rVar);
        return map;
    }

    public h(n1 n1Var, SentryAndroidOptions sentryAndroidOptions) {
        this(n1Var, sentryAndroidOptions, new o1());
    }
}
