package x7;

import android.os.SystemClock;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import m6.l;
import n2.f;
import n2.i;
import n2.k;
import n7.g;
import q7.g0;
import q7.k1;
import q7.t0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final double f32520a;

    /* renamed from: b  reason: collision with root package name */
    private final double f32521b;

    /* renamed from: c  reason: collision with root package name */
    private final long f32522c;

    /* renamed from: d  reason: collision with root package name */
    private final long f32523d;

    /* renamed from: e  reason: collision with root package name */
    private final int f32524e;

    /* renamed from: f  reason: collision with root package name */
    private final BlockingQueue f32525f;

    /* renamed from: g  reason: collision with root package name */
    private final ThreadPoolExecutor f32526g;

    /* renamed from: h  reason: collision with root package name */
    private final i f32527h;

    /* renamed from: i  reason: collision with root package name */
    private final t0 f32528i;

    /* renamed from: j  reason: collision with root package name */
    private int f32529j;

    /* renamed from: k  reason: collision with root package name */
    private long f32530k;

    /* loaded from: classes.dex */
    private final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final g0 f32531a;

        /* renamed from: b  reason: collision with root package name */
        private final l f32532b;

        @Override // java.lang.Runnable
        public void run() {
            e.this.p(this.f32531a, this.f32532b);
            e.this.f32528i.e();
            double g10 = e.this.g();
            g f10 = g.f();
            f10.b("Delay for: " + String.format(Locale.US, "%.2f", Double.valueOf(g10 / 1000.0d)) + " s for report: " + this.f32531a.d());
            e.q(g10);
        }

        private b(g0 g0Var, l lVar) {
            this.f32531a = g0Var;
            this.f32532b = lVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(i iVar, y7.d dVar, t0 t0Var) {
        this(dVar.f33037f, dVar.f33038g, dVar.f33039h * 1000, iVar, t0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double g() {
        return Math.min(3600000.0d, (60000.0d / this.f32520a) * Math.pow(this.f32521b, h()));
    }

    private int h() {
        int max;
        if (this.f32530k == 0) {
            this.f32530k = o();
        }
        int o10 = (int) ((o() - this.f32530k) / this.f32522c);
        if (l()) {
            max = Math.min(100, this.f32529j + o10);
        } else {
            max = Math.max(0, this.f32529j - o10);
        }
        if (this.f32529j != max) {
            this.f32529j = max;
            this.f32530k = o();
        }
        return max;
    }

    private boolean k() {
        if (this.f32525f.size() < this.f32524e) {
            return true;
        }
        return false;
    }

    private boolean l() {
        if (this.f32525f.size() == this.f32524e) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(CountDownLatch countDownLatch) {
        try {
            p2.l.a(this.f32527h, f.HIGHEST);
        } catch (Exception unused) {
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(l lVar, boolean z10, g0 g0Var, Exception exc) {
        if (exc != null) {
            lVar.d(exc);
            return;
        }
        if (z10) {
            j();
        }
        lVar.e(g0Var);
    }

    private long o() {
        return System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(final g0 g0Var, final l lVar) {
        final boolean z10;
        g f10 = g.f();
        f10.b("Sending report through Google DataTransport: " + g0Var.d());
        if (SystemClock.elapsedRealtime() - this.f32523d < 2000) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f32527h.a(n2.d.h(g0Var.b()), new k() { // from class: x7.c
            @Override // n2.k
            public final void a(Exception exc) {
                e.this.n(lVar, z10, g0Var, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q(double d10) {
        try {
            Thread.sleep((long) d10);
        } catch (InterruptedException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l i(g0 g0Var, boolean z10) {
        synchronized (this.f32525f) {
            l lVar = new l();
            if (z10) {
                this.f32528i.d();
                if (k()) {
                    g f10 = g.f();
                    f10.b("Enqueueing report: " + g0Var.d());
                    g f11 = g.f();
                    f11.b("Queue size: " + this.f32525f.size());
                    this.f32526g.execute(new b(g0Var, lVar));
                    g f12 = g.f();
                    f12.b("Closing task for report: " + g0Var.d());
                    lVar.e(g0Var);
                    return lVar;
                }
                h();
                g f13 = g.f();
                f13.b("Dropping report due to queue being full: " + g0Var.d());
                this.f32528i.c();
                lVar.e(g0Var);
                return lVar;
            }
            p(g0Var, lVar);
            return lVar;
        }
    }

    public void j() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        new Thread(new Runnable() { // from class: x7.d
            @Override // java.lang.Runnable
            public final void run() {
                e.this.m(countDownLatch);
            }
        }).start();
        k1.c(countDownLatch, 2L, TimeUnit.SECONDS);
    }

    e(double d10, double d11, long j10, i iVar, t0 t0Var) {
        this.f32520a = d10;
        this.f32521b = d11;
        this.f32522c = j10;
        this.f32527h = iVar;
        this.f32528i = t0Var;
        this.f32523d = SystemClock.elapsedRealtime();
        int i10 = (int) d10;
        this.f32524e = i10;
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(i10);
        this.f32525f = arrayBlockingQueue;
        this.f32526g = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, arrayBlockingQueue);
        this.f32529j = 0;
        this.f32530k = 0L;
    }
}
