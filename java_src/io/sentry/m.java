package io.sentry;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public final class m implements b7 {

    /* renamed from: f  reason: collision with root package name */
    private final boolean f23254f;

    /* renamed from: g  reason: collision with root package name */
    private final s5 f23255g;

    /* renamed from: a  reason: collision with root package name */
    private final Object f23249a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private volatile Timer f23250b = null;

    /* renamed from: c  reason: collision with root package name */
    private final Map f23251c = new ConcurrentHashMap();

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f23256h = new AtomicBoolean(false);

    /* renamed from: i  reason: collision with root package name */
    private long f23257i = 0;

    /* renamed from: d  reason: collision with root package name */
    private final List f23252d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private final List f23253e = new ArrayList();

    /* loaded from: classes2.dex */
    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            for (t0 t0Var : m.this.f23252d) {
                t0Var.e();
            }
        }
    }

    /* loaded from: classes2.dex */
    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - m.this.f23257i >= 10) {
                m.this.f23257i = currentTimeMillis;
                r2 r2Var = new r2();
                for (t0 t0Var : m.this.f23252d) {
                    t0Var.c(r2Var);
                }
                for (List list : m.this.f23251c.values()) {
                    list.add(r2Var);
                }
            }
        }
    }

    public m(s5 s5Var) {
        boolean z10 = false;
        this.f23255g = (s5) io.sentry.util.q.c(s5Var, "The options object is required.");
        for (r0 r0Var : s5Var.getPerformanceCollectors()) {
            if (r0Var instanceof t0) {
                this.f23252d.add((t0) r0Var);
            }
            if (r0Var instanceof s0) {
                this.f23253e.add((s0) r0Var);
            }
        }
        if (this.f23252d.isEmpty() && this.f23253e.isEmpty()) {
            z10 = true;
        }
        this.f23254f = z10;
    }

    @Override // io.sentry.b7
    public void a(z0 z0Var) {
        for (s0 s0Var : this.f23253e) {
            s0Var.a(z0Var);
        }
    }

    @Override // io.sentry.b7
    public void b(z0 z0Var) {
        for (s0 s0Var : this.f23253e) {
            s0Var.b(z0Var);
        }
    }

    @Override // io.sentry.b7
    /* renamed from: c */
    public List j(a1 a1Var) {
        this.f23255g.getLogger().c(j5.DEBUG, "stop collecting performance info for transactions %s (%s)", a1Var.getName(), a1Var.o().k().toString());
        List list = (List) this.f23251c.remove(a1Var.m().toString());
        for (s0 s0Var : this.f23253e) {
            s0Var.a(a1Var);
        }
        if (this.f23251c.isEmpty()) {
            close();
        }
        return list;
    }

    @Override // io.sentry.b7
    public void close() {
        this.f23255g.getLogger().c(j5.DEBUG, "stop collecting all performance info for transactions", new Object[0]);
        this.f23251c.clear();
        for (s0 s0Var : this.f23253e) {
            s0Var.clear();
        }
        if (this.f23256h.getAndSet(false)) {
            synchronized (this.f23249a) {
                if (this.f23250b != null) {
                    this.f23250b.cancel();
                    this.f23250b = null;
                }
            }
        }
    }

    @Override // io.sentry.b7
    public void d(final a1 a1Var) {
        if (this.f23254f) {
            this.f23255g.getLogger().c(j5.INFO, "No collector found. Performance stats will not be captured during transactions.", new Object[0]);
            return;
        }
        for (s0 s0Var : this.f23253e) {
            s0Var.b(a1Var);
        }
        if (!this.f23251c.containsKey(a1Var.m().toString())) {
            this.f23251c.put(a1Var.m().toString(), new ArrayList());
            try {
                this.f23255g.getExecutorService().c(new Runnable() { // from class: io.sentry.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        m.this.j(a1Var);
                    }
                }, 30000L);
            } catch (RejectedExecutionException e10) {
                this.f23255g.getLogger().b(j5.ERROR, "Failed to call the executor. Performance collector will not be automatically finished. Did you call Sentry.close()?", e10);
            }
        }
        if (!this.f23256h.getAndSet(true)) {
            synchronized (this.f23249a) {
                if (this.f23250b == null) {
                    this.f23250b = new Timer(true);
                }
                this.f23250b.schedule(new a(), 0L);
                this.f23250b.scheduleAtFixedRate(new b(), 100L, 100L);
            }
        }
    }
}
