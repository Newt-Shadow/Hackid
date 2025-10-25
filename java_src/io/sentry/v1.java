package io.sentry;

import io.sentry.s5;
import java.io.Closeable;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class v1 implements p0, Runnable, Closeable {

    /* renamed from: j  reason: collision with root package name */
    private static final Charset f23813j = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final ILogger f23814a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.metrics.b f23815b;

    /* renamed from: c  reason: collision with root package name */
    private final z3 f23816c;

    /* renamed from: d  reason: collision with root package name */
    private volatile x0 f23817d;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f23818e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f23819f;

    /* renamed from: g  reason: collision with root package name */
    private final NavigableMap f23820g;

    /* renamed from: h  reason: collision with root package name */
    private final AtomicInteger f23821h;

    /* renamed from: i  reason: collision with root package name */
    private final int f23822i;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public v1(io.sentry.s5 r8, io.sentry.metrics.b r9) {
        /*
            r7 = this;
            io.sentry.ILogger r2 = r8.getLogger()
            io.sentry.z3 r3 = r8.getDateProvider()
            r4 = 100000(0x186a0, float:1.4013E-40)
            r8.getBeforeEmitMetricCallback()
            r5 = 0
            io.sentry.x0 r6 = io.sentry.e2.f()
            r0 = r7
            r1 = r9
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.v1.<init>(io.sentry.s5, io.sentry.metrics.b):void");
    }

    private static int b(Map map) {
        Iterator it = map.values().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        android.support.v4.media.session.b.a(it.next());
        throw null;
    }

    private Set c(boolean z10) {
        if (z10) {
            return this.f23820g.keySet();
        }
        return this.f23820g.headMap(Long.valueOf(io.sentry.metrics.e.c(io.sentry.metrics.e.b(f()))), true).keySet();
    }

    private boolean e() {
        if (this.f23820g.size() + this.f23821h.get() >= this.f23822i) {
            return true;
        }
        return false;
    }

    private long f() {
        return TimeUnit.NANOSECONDS.toMillis(this.f23816c.a().l());
    }

    public void a(boolean z10) {
        if (!z10 && e()) {
            this.f23814a.c(j5.INFO, "Metrics: total weight exceeded, flushing all buckets", new Object[0]);
            z10 = true;
        }
        this.f23819f = false;
        Set<Long> c10 = c(z10);
        if (c10.isEmpty()) {
            this.f23814a.c(j5.DEBUG, "Metrics: nothing to flush", new Object[0]);
            return;
        }
        ILogger iLogger = this.f23814a;
        j5 j5Var = j5.DEBUG;
        iLogger.c(j5Var, "Metrics: flushing " + c10.size() + " buckets", new Object[0]);
        HashMap hashMap = new HashMap();
        int i10 = 0;
        for (Long l10 : c10) {
            long longValue = l10.longValue();
            Map map = (Map) this.f23820g.remove(Long.valueOf(longValue));
            if (map != null) {
                synchronized (map) {
                    this.f23821h.addAndGet(-b(map));
                    i10 += map.size();
                    hashMap.put(Long.valueOf(longValue), map);
                }
            }
        }
        if (i10 == 0) {
            this.f23814a.c(j5.DEBUG, "Metrics: only empty buckets found", new Object[0]);
            return;
        }
        this.f23814a.c(j5.DEBUG, "Metrics: capturing metrics", new Object[0]);
        this.f23815b.c(new io.sentry.metrics.a(hashMap));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.f23818e = true;
            this.f23817d.a(0L);
        }
        a(true);
    }

    @Override // java.lang.Runnable
    public void run() {
        a(false);
        synchronized (this) {
            if (!this.f23818e && !this.f23820g.isEmpty()) {
                this.f23817d.c(this, 5000L);
            }
        }
    }

    public v1(io.sentry.metrics.b bVar, ILogger iLogger, z3 z3Var, int i10, s5.b bVar2, x0 x0Var) {
        this.f23818e = false;
        this.f23819f = false;
        this.f23820g = new ConcurrentSkipListMap();
        this.f23821h = new AtomicInteger();
        this.f23815b = bVar;
        this.f23814a = iLogger;
        this.f23816c = z3Var;
        this.f23822i = i10;
        this.f23817d = x0Var;
    }
}
