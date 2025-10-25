package io.sentry.transport;

import io.sentry.ILogger;
import io.sentry.UncaughtExceptionHandlerIntegration;
import io.sentry.a3;
import io.sentry.a4;
import io.sentry.c0;
import io.sentry.j5;
import io.sentry.s5;
import io.sentry.transport.e;
import io.sentry.util.j;
import io.sentry.z3;
import java.io.IOException;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class e implements q {

    /* renamed from: a  reason: collision with root package name */
    private final w f23696a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.cache.g f23697b;

    /* renamed from: c  reason: collision with root package name */
    private final s5 f23698c;

    /* renamed from: d  reason: collision with root package name */
    private final z f23699d;

    /* renamed from: e  reason: collision with root package name */
    private final r f23700e;

    /* renamed from: f  reason: collision with root package name */
    private final o f23701f;

    /* renamed from: g  reason: collision with root package name */
    private volatile Runnable f23702g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private int f23703a;

        private b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SentryAsyncConnection-");
            int i10 = this.f23703a;
            this.f23703a = i10 + 1;
            sb2.append(i10);
            Thread thread = new Thread(runnable, sb2.toString());
            thread.setDaemon(true);
            return thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final a4 f23704a;

        /* renamed from: b  reason: collision with root package name */
        private final c0 f23705b;

        /* renamed from: c  reason: collision with root package name */
        private final io.sentry.cache.g f23706c;

        /* renamed from: d  reason: collision with root package name */
        private final b0 f23707d = b0.a();

        c(a4 a4Var, c0 c0Var, io.sentry.cache.g gVar) {
            this.f23704a = (a4) io.sentry.util.q.c(a4Var, "Envelope is required.");
            this.f23705b = c0Var;
            this.f23706c = (io.sentry.cache.g) io.sentry.util.q.c(gVar, "EnvelopeCache is required.");
        }

        private b0 j() {
            b0 b0Var = this.f23707d;
            this.f23704a.b().d(null);
            this.f23706c.W(this.f23704a, this.f23705b);
            io.sentry.util.j.o(this.f23705b, io.sentry.hints.f.class, new j.a() { // from class: io.sentry.transport.g
                @Override // io.sentry.util.j.a
                public final void accept(Object obj) {
                    e.c.this.k((io.sentry.hints.f) obj);
                }
            });
            if (e.this.f23700e.a()) {
                final a4 d10 = e.this.f23698c.getClientReportRecorder().d(this.f23704a);
                try {
                    d10.b().d(io.sentry.j.j(e.this.f23698c.getDateProvider().a().l()));
                    b0 h10 = e.this.f23701f.h(d10);
                    if (h10.d()) {
                        this.f23706c.z(this.f23704a);
                        return h10;
                    }
                    String str = "The transport failed to send the envelope with response code " + h10.c();
                    e.this.f23698c.getLogger().c(j5.ERROR, str, new Object[0]);
                    if (h10.c() >= 400 && h10.c() != 429) {
                        io.sentry.util.j.n(this.f23705b, io.sentry.hints.k.class, new j.c() { // from class: io.sentry.transport.h
                            @Override // io.sentry.util.j.c
                            public final void accept(Object obj) {
                                e.c.this.l(d10, obj);
                            }
                        });
                    }
                    throw new IllegalStateException(str);
                } catch (IOException e10) {
                    io.sentry.util.j.p(this.f23705b, io.sentry.hints.k.class, new j.a() { // from class: io.sentry.transport.i
                        @Override // io.sentry.util.j.a
                        public final void accept(Object obj) {
                            ((io.sentry.hints.k) obj).d(true);
                        }
                    }, new j.b() { // from class: io.sentry.transport.j
                        @Override // io.sentry.util.j.b
                        public final void a(Object obj, Class cls) {
                            e.c.this.n(d10, obj, cls);
                        }
                    });
                    throw new IllegalStateException("Sending the event failed.", e10);
                }
            }
            io.sentry.util.j.p(this.f23705b, io.sentry.hints.k.class, new j.a() { // from class: io.sentry.transport.k
                @Override // io.sentry.util.j.a
                public final void accept(Object obj) {
                    ((io.sentry.hints.k) obj).d(true);
                }
            }, new j.b() { // from class: io.sentry.transport.l
                @Override // io.sentry.util.j.b
                public final void a(Object obj, Class cls) {
                    e.c.this.p(obj, cls);
                }
            });
            return b0Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(io.sentry.hints.f fVar) {
            if (fVar.f(this.f23704a.b().a())) {
                fVar.b();
                e.this.f23698c.getLogger().c(j5.DEBUG, "Disk flush envelope fired", new Object[0]);
                return;
            }
            e.this.f23698c.getLogger().c(j5.DEBUG, "Not firing envelope flush as there's an ongoing transaction", new Object[0]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(a4 a4Var, Object obj) {
            e.this.f23698c.getClientReportRecorder().b(io.sentry.clientreport.f.NETWORK_ERROR, a4Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(a4 a4Var, Object obj, Class cls) {
            io.sentry.util.n.a(cls, obj, e.this.f23698c.getLogger());
            e.this.f23698c.getClientReportRecorder().b(io.sentry.clientreport.f.NETWORK_ERROR, a4Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(Object obj, Class cls) {
            io.sentry.util.n.a(cls, obj, e.this.f23698c.getLogger());
            e.this.f23698c.getClientReportRecorder().b(io.sentry.clientreport.f.NETWORK_ERROR, this.f23704a);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(b0 b0Var, io.sentry.hints.p pVar) {
            e.this.f23698c.getLogger().c(j5.DEBUG, "Marking envelope submission result: %s", Boolean.valueOf(b0Var.d()));
            pVar.c(b0Var.d());
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.f23702g = this;
            final b0 b0Var = this.f23707d;
            try {
                b0Var = j();
                e.this.f23698c.getLogger().c(j5.DEBUG, "Envelope flushed", new Object[0]);
            } finally {
            }
        }
    }

    public e(s5 s5Var, z zVar, r rVar, a3 a3Var) {
        this(k(s5Var.getMaxQueueSize(), s5Var.getEnvelopeDiskCache(), s5Var.getLogger(), s5Var.getDateProvider()), s5Var, zVar, rVar, new o(s5Var, a3Var, zVar));
    }

    private static w k(int i10, final io.sentry.cache.g gVar, final ILogger iLogger, z3 z3Var) {
        return new w(1, i10, new b(), new RejectedExecutionHandler() { // from class: io.sentry.transport.b
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                e.q(io.sentry.cache.g.this, iLogger, runnable, threadPoolExecutor);
            }
        }, iLogger, z3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q(io.sentry.cache.g gVar, ILogger iLogger, Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        if (runnable instanceof c) {
            c cVar = (c) runnable;
            if (!io.sentry.util.j.h(cVar.f23705b, io.sentry.hints.e.class)) {
                gVar.W(cVar.f23704a, cVar.f23705b);
            }
            w(cVar.f23705b, true);
            iLogger.c(j5.WARNING, "Envelope rejected", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(io.sentry.hints.g gVar) {
        gVar.a();
        this.f23698c.getLogger().c(j5.DEBUG, "Envelope enqueued", new Object[0]);
    }

    private static void w(c0 c0Var, final boolean z10) {
        io.sentry.util.j.o(c0Var, io.sentry.hints.p.class, new j.a() { // from class: io.sentry.transport.c
            @Override // io.sentry.util.j.a
            public final void accept(Object obj) {
                ((io.sentry.hints.p) obj).c(false);
            }
        });
        io.sentry.util.j.o(c0Var, io.sentry.hints.k.class, new j.a() { // from class: io.sentry.transport.d
            @Override // io.sentry.util.j.a
            public final void accept(Object obj) {
                ((io.sentry.hints.k) obj).d(z10);
            }
        });
    }

    @Override // io.sentry.transport.q
    public void V(a4 a4Var, c0 c0Var) {
        io.sentry.cache.g gVar = this.f23697b;
        boolean z10 = false;
        if (io.sentry.util.j.h(c0Var, io.sentry.hints.e.class)) {
            gVar = s.d();
            this.f23698c.getLogger().c(j5.DEBUG, "Captured Envelope is already cached", new Object[0]);
            z10 = true;
        }
        a4 g10 = this.f23699d.g(a4Var, c0Var);
        if (g10 == null) {
            if (z10) {
                this.f23697b.z(a4Var);
                return;
            }
            return;
        }
        if (io.sentry.util.j.h(c0Var, UncaughtExceptionHandlerIntegration.a.class)) {
            g10 = this.f23698c.getClientReportRecorder().d(g10);
        }
        Future submit = this.f23696a.submit(new c(g10, c0Var, gVar));
        if (submit != null && submit.isCancelled()) {
            this.f23698c.getClientReportRecorder().b(io.sentry.clientreport.f.QUEUE_OVERFLOW, g10);
        } else {
            io.sentry.util.j.o(c0Var, io.sentry.hints.g.class, new j.a() { // from class: io.sentry.transport.a
                @Override // io.sentry.util.j.a
                public final void accept(Object obj) {
                    e.this.v((io.sentry.hints.g) obj);
                }
            });
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        i(false);
    }

    @Override // io.sentry.transport.q
    public void i(boolean z10) {
        long flushTimeoutMillis;
        this.f23699d.close();
        this.f23696a.shutdown();
        this.f23698c.getLogger().c(j5.DEBUG, "Shutting down", new Object[0]);
        if (z10) {
            flushTimeoutMillis = 0;
        } else {
            try {
                flushTimeoutMillis = this.f23698c.getFlushTimeoutMillis();
            } catch (InterruptedException unused) {
                this.f23698c.getLogger().c(j5.DEBUG, "Thread interrupted while closing the connection.", new Object[0]);
                Thread.currentThread().interrupt();
                return;
            }
        }
        if (!this.f23696a.awaitTermination(flushTimeoutMillis, TimeUnit.MILLISECONDS)) {
            ILogger logger = this.f23698c.getLogger();
            j5 j5Var = j5.WARNING;
            logger.c(j5Var, "Failed to shutdown the async connection async sender  within " + flushTimeoutMillis + " ms. Trying to force it now.", new Object[0]);
            this.f23696a.shutdownNow();
            if (this.f23702g != null) {
                this.f23696a.getRejectedExecutionHandler().rejectedExecution(this.f23702g, this.f23696a);
            }
        }
    }

    @Override // io.sentry.transport.q
    public z l() {
        return this.f23699d;
    }

    @Override // io.sentry.transport.q
    public boolean m() {
        boolean k10 = this.f23699d.k();
        boolean a10 = this.f23696a.a();
        if (!k10 && !a10) {
            return true;
        }
        return false;
    }

    @Override // io.sentry.transport.q
    public void o(long j10) {
        this.f23696a.c(j10);
    }

    public e(w wVar, s5 s5Var, z zVar, r rVar, o oVar) {
        this.f23702g = null;
        this.f23696a = (w) io.sentry.util.q.c(wVar, "executor is required");
        this.f23697b = (io.sentry.cache.g) io.sentry.util.q.c(s5Var.getEnvelopeDiskCache(), "envelopeCache is required");
        this.f23698c = (s5) io.sentry.util.q.c(s5Var, "options is required");
        this.f23699d = (z) io.sentry.util.q.c(zVar, "rateLimiter is required");
        this.f23700e = (r) io.sentry.util.q.c(rVar, "transportGate is required");
        this.f23701f = (o) io.sentry.util.q.c(oVar, "httpConnection is required");
    }
}
