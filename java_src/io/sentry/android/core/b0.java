package io.sentry.android.core;

import android.os.Debug;
import android.os.Process;
import android.os.SystemClock;
import io.sentry.ILogger;
import io.sentry.android.core.internal.util.t;
import io.sentry.j5;
import io.sentry.r2;
import java.io.File;
import java.util.ArrayDeque;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class b0 {

    /* renamed from: b  reason: collision with root package name */
    private final File f22137b;

    /* renamed from: c  reason: collision with root package name */
    private final int f22138c;

    /* renamed from: f  reason: collision with root package name */
    private String f22141f;

    /* renamed from: g  reason: collision with root package name */
    private final io.sentry.android.core.internal.util.t f22142g;

    /* renamed from: l  reason: collision with root package name */
    private final p0 f22147l;

    /* renamed from: m  reason: collision with root package name */
    private final io.sentry.x0 f22148m;

    /* renamed from: n  reason: collision with root package name */
    private final ILogger f22149n;

    /* renamed from: a  reason: collision with root package name */
    private long f22136a = 0;

    /* renamed from: d  reason: collision with root package name */
    private Future f22139d = null;

    /* renamed from: e  reason: collision with root package name */
    private File f22140e = null;

    /* renamed from: h  reason: collision with root package name */
    private final ArrayDeque f22143h = new ArrayDeque();

    /* renamed from: i  reason: collision with root package name */
    private final ArrayDeque f22144i = new ArrayDeque();

    /* renamed from: j  reason: collision with root package name */
    private final ArrayDeque f22145j = new ArrayDeque();

    /* renamed from: k  reason: collision with root package name */
    private final Map f22146k = new HashMap();

    /* renamed from: o  reason: collision with root package name */
    private boolean f22150o = false;

    /* loaded from: classes2.dex */
    class a implements t.b {

        /* renamed from: a  reason: collision with root package name */
        float f22151a = 0.0f;

        a() {
        }

        @Override // io.sentry.android.core.internal.util.t.b
        public void d(long j10, long j11, long j12, long j13, boolean z10, boolean z11, float f10) {
            long nanoTime = ((j11 - System.nanoTime()) + SystemClock.elapsedRealtimeNanos()) - b0.this.f22136a;
            if (nanoTime < 0) {
                return;
            }
            if (z11) {
                b0.this.f22145j.addLast(new io.sentry.profilemeasurements.b(Long.valueOf(nanoTime), Long.valueOf(j12)));
            } else if (z10) {
                b0.this.f22144i.addLast(new io.sentry.profilemeasurements.b(Long.valueOf(nanoTime), Long.valueOf(j12)));
            }
            if (f10 != this.f22151a) {
                this.f22151a = f10;
                b0.this.f22143h.addLast(new io.sentry.profilemeasurements.b(Long.valueOf(nanoTime), Float.valueOf(f10)));
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final long f22153a;

        /* renamed from: b  reason: collision with root package name */
        public final long f22154b;

        /* renamed from: c  reason: collision with root package name */
        public final File f22155c;

        /* renamed from: d  reason: collision with root package name */
        public final Map f22156d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f22157e;

        public b(long j10, long j11, boolean z10, File file, Map map) {
            this.f22153a = j10;
            this.f22155c = file;
            this.f22154b = j11;
            this.f22156d = map;
            this.f22157e = z10;
        }
    }

    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public final long f22158a;

        /* renamed from: b  reason: collision with root package name */
        public final long f22159b;

        /* renamed from: c  reason: collision with root package name */
        public final Date f22160c;

        public c(long j10, long j11, Date date) {
            this.f22158a = j10;
            this.f22159b = j11;
            this.f22160c = date;
        }
    }

    public b0(String str, int i10, io.sentry.android.core.internal.util.t tVar, io.sentry.x0 x0Var, ILogger iLogger, p0 p0Var) {
        this.f22137b = new File((String) io.sentry.util.q.c(str, "TracesFilesDirPath is required"));
        this.f22138c = i10;
        this.f22149n = (ILogger) io.sentry.util.q.c(iLogger, "Logger is required");
        this.f22148m = (io.sentry.x0) io.sentry.util.q.c(x0Var, "ExecutorService is required.");
        this.f22142g = (io.sentry.android.core.internal.util.t) io.sentry.util.q.c(tVar, "SentryFrameMetricsCollector is required");
        this.f22147l = (p0) io.sentry.util.q.c(p0Var, "The BuildInfoProvider is required.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        g(true, null);
    }

    private void i(List list) {
        if (this.f22147l.d() < 21) {
            return;
        }
        long elapsedRealtimeNanos = (SystemClock.elapsedRealtimeNanos() - this.f22136a) - TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
        if (list != null) {
            ArrayDeque arrayDeque = new ArrayDeque(list.size());
            ArrayDeque arrayDeque2 = new ArrayDeque(list.size());
            ArrayDeque arrayDeque3 = new ArrayDeque(list.size());
            synchronized (list) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    r2 r2Var = (r2) it.next();
                    io.sentry.g c10 = r2Var.c();
                    io.sentry.u1 d10 = r2Var.d();
                    if (c10 != null) {
                        arrayDeque3.add(new io.sentry.profilemeasurements.b(Long.valueOf(TimeUnit.MILLISECONDS.toNanos(c10.b()) + elapsedRealtimeNanos), Double.valueOf(c10.a())));
                    }
                    if (d10 != null && d10.b() > -1) {
                        arrayDeque.add(new io.sentry.profilemeasurements.b(Long.valueOf(TimeUnit.MILLISECONDS.toNanos(d10.a()) + elapsedRealtimeNanos), Long.valueOf(d10.b())));
                    }
                    if (d10 != null && d10.c() > -1) {
                        arrayDeque2.add(new io.sentry.profilemeasurements.b(Long.valueOf(TimeUnit.MILLISECONDS.toNanos(d10.a()) + elapsedRealtimeNanos), Long.valueOf(d10.c())));
                    }
                }
            }
            if (!arrayDeque3.isEmpty()) {
                this.f22146k.put("cpu_usage", new io.sentry.profilemeasurements.a("percent", arrayDeque3));
            }
            if (!arrayDeque.isEmpty()) {
                this.f22146k.put("memory_footprint", new io.sentry.profilemeasurements.a("byte", arrayDeque));
            }
            if (!arrayDeque2.isEmpty()) {
                this.f22146k.put("memory_native_footprint", new io.sentry.profilemeasurements.a("byte", arrayDeque2));
            }
        }
    }

    public synchronized void f() {
        Future future = this.f22139d;
        if (future != null) {
            future.cancel(true);
            this.f22139d = null;
        }
        if (this.f22150o) {
            g(true, null);
        }
    }

    public synchronized b g(boolean z10, List list) {
        if (!this.f22150o) {
            this.f22149n.c(j5.WARNING, "Profiler not running", new Object[0]);
            return null;
        } else if (this.f22147l.d() < 21) {
            return null;
        } else {
            Debug.stopMethodTracing();
            this.f22150o = false;
            this.f22142g.n(this.f22141f);
            long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            long elapsedCpuTime = Process.getElapsedCpuTime();
            if (this.f22140e == null) {
                this.f22149n.c(j5.ERROR, "Trace file does not exists", new Object[0]);
                return null;
            }
            if (!this.f22144i.isEmpty()) {
                this.f22146k.put("slow_frame_renders", new io.sentry.profilemeasurements.a("nanosecond", this.f22144i));
            }
            if (!this.f22145j.isEmpty()) {
                this.f22146k.put("frozen_frame_renders", new io.sentry.profilemeasurements.a("nanosecond", this.f22145j));
            }
            if (!this.f22143h.isEmpty()) {
                this.f22146k.put("screen_frame_rates", new io.sentry.profilemeasurements.a("hz", this.f22143h));
            }
            i(list);
            Future future = this.f22139d;
            if (future != null) {
                future.cancel(true);
                this.f22139d = null;
            }
            return new b(elapsedRealtimeNanos, elapsedCpuTime, z10, this.f22140e, this.f22146k);
        }
    }

    public synchronized c j() {
        int i10 = this.f22138c;
        if (i10 == 0) {
            this.f22149n.c(j5.WARNING, "Disabling profiling because intervaUs is set to %d", Integer.valueOf(i10));
            return null;
        } else if (this.f22150o) {
            this.f22149n.c(j5.WARNING, "Profiling has already started...", new Object[0]);
            return null;
        } else if (this.f22147l.d() < 21) {
            return null;
        } else {
            File file = this.f22137b;
            this.f22140e = new File(file, UUID.randomUUID() + ".trace");
            this.f22146k.clear();
            this.f22143h.clear();
            this.f22144i.clear();
            this.f22145j.clear();
            this.f22141f = this.f22142g.m(new a());
            try {
                this.f22139d = this.f22148m.c(new Runnable() { // from class: io.sentry.android.core.a0
                    @Override // java.lang.Runnable
                    public final void run() {
                        b0.this.h();
                    }
                }, 30000L);
            } catch (RejectedExecutionException e10) {
                this.f22149n.b(j5.ERROR, "Failed to call the executor. Profiling will not be automatically finished. Did you call Sentry.close()?", e10);
            }
            this.f22136a = SystemClock.elapsedRealtimeNanos();
            Date c10 = io.sentry.j.c();
            long elapsedCpuTime = Process.getElapsedCpuTime();
            Debug.startMethodTracingSampling(this.f22140e.getPath(), 3000000, this.f22138c);
            this.f22150o = true;
            return new c(this.f22136a, elapsedCpuTime, c10);
        }
    }
}
