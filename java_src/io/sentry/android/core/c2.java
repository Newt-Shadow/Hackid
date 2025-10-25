package io.sentry.android.core;

import io.sentry.android.core.internal.util.t;
import io.sentry.g2;
import io.sentry.h2;
import io.sentry.m5;
import io.sentry.y3;
import java.util.Comparator;
import java.util.Date;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class c2 implements io.sentry.s0, t.b {

    /* renamed from: h  reason: collision with root package name */
    private static final long f22182h = TimeUnit.SECONDS.toNanos(1);

    /* renamed from: i  reason: collision with root package name */
    private static final m5 f22183i = new m5(new Date(0), 0);

    /* renamed from: a  reason: collision with root package name */
    private final boolean f22184a;

    /* renamed from: c  reason: collision with root package name */
    private final io.sentry.android.core.internal.util.t f22186c;

    /* renamed from: d  reason: collision with root package name */
    private volatile String f22187d;

    /* renamed from: b  reason: collision with root package name */
    private final Object f22185b = new Object();

    /* renamed from: e  reason: collision with root package name */
    private final SortedSet f22188e = new TreeSet(new Comparator() { // from class: io.sentry.android.core.b2
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int j10;
            j10 = c2.j((io.sentry.z0) obj, (io.sentry.z0) obj2);
            return j10;
        }
    });

    /* renamed from: f  reason: collision with root package name */
    private final ConcurrentSkipListSet f22189f = new ConcurrentSkipListSet();

    /* renamed from: g  reason: collision with root package name */
    private long f22190g = 16666666;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a implements Comparable {

        /* renamed from: a  reason: collision with root package name */
        private final long f22191a;

        /* renamed from: b  reason: collision with root package name */
        private final long f22192b;

        /* renamed from: c  reason: collision with root package name */
        private final long f22193c;

        /* renamed from: d  reason: collision with root package name */
        private final long f22194d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f22195e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f22196f;

        /* renamed from: g  reason: collision with root package name */
        private final long f22197g;

        a(long j10) {
            this(j10, j10, 0L, 0L, false, false, 0L);
        }

        @Override // java.lang.Comparable
        /* renamed from: n */
        public int compareTo(a aVar) {
            return Long.compare(this.f22192b, aVar.f22192b);
        }

        a(long j10, long j11, long j12, long j13, boolean z10, boolean z11, long j14) {
            this.f22191a = j10;
            this.f22192b = j11;
            this.f22193c = j12;
            this.f22194d = j13;
            this.f22195e = z10;
            this.f22196f = z11;
            this.f22197g = j14;
        }
    }

    public c2(SentryAndroidOptions sentryAndroidOptions, io.sentry.android.core.internal.util.t tVar) {
        boolean z10;
        this.f22186c = tVar;
        if (sentryAndroidOptions.isEnablePerformanceV2() && sentryAndroidOptions.isEnableFramesTracking()) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f22184a = z10;
    }

    private static int g(a2 a2Var, long j10, long j11, long j12) {
        long max = Math.max(0L, j11 - j12);
        if (io.sentry.android.core.internal.util.t.h(max, j10)) {
            a2Var.a(max, Math.max(0L, max - j10), true, io.sentry.android.core.internal.util.t.g(max));
            return 1;
        }
        return 0;
    }

    private void h(io.sentry.z0 z0Var) {
        synchronized (this.f22185b) {
            if (!this.f22188e.remove(z0Var)) {
                return;
            }
            y3 p10 = z0Var.p();
            if (p10 == null) {
                return;
            }
            long k10 = k(z0Var.t());
            long k11 = k(p10);
            long j10 = k11 - k10;
            long j11 = 0;
            if (j10 <= 0) {
                return;
            }
            a2 a2Var = new a2();
            long j12 = this.f22190g;
            if (!this.f22189f.isEmpty()) {
                for (a aVar : this.f22189f.tailSet((ConcurrentSkipListSet) new a(k10))) {
                    if (aVar.f22191a > k11) {
                        break;
                    }
                    if (aVar.f22191a >= k10 && aVar.f22192b <= k11) {
                        a2Var.a(aVar.f22193c, aVar.f22194d, aVar.f22195e, aVar.f22196f);
                    } else if ((k10 > aVar.f22191a && k10 < aVar.f22192b) || (k11 > aVar.f22191a && k11 < aVar.f22192b)) {
                        long min = Math.min(aVar.f22194d - Math.max(j11, Math.max(j11, k10 - aVar.f22191a) - aVar.f22197g), j10);
                        long min2 = Math.min(k11, aVar.f22192b) - Math.max(k10, aVar.f22191a);
                        a2Var.a(min2, min, io.sentry.android.core.internal.util.t.h(min2, aVar.f22197g), io.sentry.android.core.internal.util.t.g(min2));
                    }
                    j12 = aVar.f22197g;
                    j11 = 0;
                }
            }
            long j13 = j12;
            int f10 = a2Var.f();
            long f11 = this.f22186c.f();
            if (f11 != -1) {
                f10 = f10 + g(a2Var, j13, k11, f11) + i(a2Var, j13, j10);
            }
            double e10 = (a2Var.e() + a2Var.c()) / 1.0E9d;
            z0Var.b("frames.total", Integer.valueOf(f10));
            z0Var.b("frames.slow", Integer.valueOf(a2Var.d()));
            z0Var.b("frames.frozen", Integer.valueOf(a2Var.b()));
            z0Var.b("frames.delay", Double.valueOf(e10));
            if (z0Var instanceof io.sentry.a1) {
                z0Var.q("frames_total", Integer.valueOf(f10));
                z0Var.q("frames_slow", Integer.valueOf(a2Var.d()));
                z0Var.q("frames_frozen", Integer.valueOf(a2Var.b()));
                z0Var.q("frames_delay", Double.valueOf(e10));
            }
        }
    }

    private static int i(a2 a2Var, long j10, long j11) {
        long g10 = j11 - a2Var.g();
        if (g10 > 0) {
            return (int) Math.ceil(g10 / j10);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int j(io.sentry.z0 z0Var, io.sentry.z0 z0Var2) {
        int compareTo = z0Var.t().compareTo(z0Var2.t());
        if (compareTo != 0) {
            return compareTo;
        }
        return z0Var.o().h().toString().compareTo(z0Var2.o().h().toString());
    }

    private static long k(y3 y3Var) {
        if (y3Var instanceof m5) {
            return y3Var.b(f22183i);
        }
        return System.nanoTime() - (io.sentry.j.h(System.currentTimeMillis()) - y3Var.l());
    }

    @Override // io.sentry.s0
    public void a(io.sentry.z0 z0Var) {
        if (!this.f22184a || (z0Var instanceof g2) || (z0Var instanceof h2)) {
            return;
        }
        synchronized (this.f22185b) {
            if (!this.f22188e.contains(z0Var)) {
                return;
            }
            h(z0Var);
            synchronized (this.f22185b) {
                if (this.f22188e.isEmpty()) {
                    clear();
                } else {
                    this.f22189f.headSet((ConcurrentSkipListSet) new a(k(((io.sentry.z0) this.f22188e.first()).t()))).clear();
                }
            }
        }
    }

    @Override // io.sentry.s0
    public void b(io.sentry.z0 z0Var) {
        if (!this.f22184a || (z0Var instanceof g2) || (z0Var instanceof h2)) {
            return;
        }
        synchronized (this.f22185b) {
            this.f22188e.add(z0Var);
            if (this.f22187d == null) {
                this.f22187d = this.f22186c.m(this);
            }
        }
    }

    @Override // io.sentry.s0
    public void clear() {
        synchronized (this.f22185b) {
            if (this.f22187d != null) {
                this.f22186c.n(this.f22187d);
                this.f22187d = null;
            }
            this.f22189f.clear();
            this.f22188e.clear();
        }
    }

    @Override // io.sentry.android.core.internal.util.t.b
    public void d(long j10, long j11, long j12, long j13, boolean z10, boolean z11, float f10) {
        if (this.f22189f.size() > 3600) {
            return;
        }
        long j14 = (long) (f22182h / f10);
        this.f22190g = j14;
        if (z10 || z11) {
            this.f22189f.add(new a(j10, j11, j12, j13, z10, z11, j14));
        }
    }
}
