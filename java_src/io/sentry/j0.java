package io.sentry;

import io.sentry.d3;
import io.sentry.metrics.d;
import io.sentry.r6;
import java.io.Closeable;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public final class j0 implements o0, d.a {

    /* renamed from: a  reason: collision with root package name */
    private volatile io.sentry.protocol.r f23189a;

    /* renamed from: b  reason: collision with root package name */
    private final s5 f23190b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f23191c;

    /* renamed from: d  reason: collision with root package name */
    private final r6 f23192d;

    /* renamed from: e  reason: collision with root package name */
    private final w6 f23193e;

    /* renamed from: f  reason: collision with root package name */
    private final Map f23194f;

    /* renamed from: g  reason: collision with root package name */
    private final b7 f23195g;

    /* renamed from: h  reason: collision with root package name */
    private final io.sentry.metrics.d f23196h;

    public j0(s5 s5Var) {
        this(s5Var, G(s5Var));
    }

    private u0 E(u0 u0Var, e3 e3Var) {
        if (e3Var != null) {
            try {
                u0 r10 = u0Var.r();
                e3Var.a(r10);
                return r10;
            } catch (Throwable th) {
                this.f23190b.getLogger().b(j5.ERROR, "Error in the 'ScopeCallback' callback.", th);
            }
        }
        return u0Var;
    }

    private io.sentry.protocol.r F(z4 z4Var, c0 c0Var, e3 e3Var) {
        io.sentry.protocol.r rVar = io.sentry.protocol.r.f23462b;
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'captureEvent' call is a no-op.", new Object[0]);
            return rVar;
        } else if (z4Var == null) {
            this.f23190b.getLogger().c(j5.WARNING, "captureEvent called with null parameter.", new Object[0]);
            return rVar;
        } else {
            try {
                k(z4Var);
                r6.a a10 = this.f23192d.a();
                rVar = a10.a().e(z4Var, E(a10.c(), e3Var), c0Var);
                this.f23189a = rVar;
                return rVar;
            } catch (Throwable th) {
                ILogger logger = this.f23190b.getLogger();
                j5 j5Var = j5.ERROR;
                logger.b(j5Var, "Error while capturing event with id: " + z4Var.G(), th);
                return rVar;
            }
        }
    }

    private static r6.a G(s5 s5Var) {
        L(s5Var);
        return new r6.a(s5Var, new w3(s5Var), new d3(s5Var));
    }

    private a1 H(y6 y6Var, a7 a7Var) {
        final a1 a1Var;
        io.sentry.util.q.c(y6Var, "transactionContext is required");
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'startTransaction' returns a no-op.", new Object[0]);
            a1Var = h2.u();
        } else if (!this.f23190b.getInstrumenter().equals(y6Var.s())) {
            this.f23190b.getLogger().c(j5.DEBUG, "Returning no-op for instrumenter %s as the SDK has been configured to use instrumenter %s", y6Var.s(), this.f23190b.getInstrumenter());
            a1Var = h2.u();
        } else if (!this.f23190b.isTracingEnabled()) {
            this.f23190b.getLogger().c(j5.INFO, "Tracing is disabled and this 'startTransaction' returns a no-op.", new Object[0]);
            a1Var = h2.u();
        } else {
            a7Var.e();
            x6 b10 = this.f23193e.b(new c3(y6Var, null));
            y6Var.n(b10);
            d6 d6Var = new d6(y6Var, this, a7Var, this.f23195g);
            if (b10.d().booleanValue() && b10.b().booleanValue()) {
                b1 transactionProfiler = this.f23190b.getTransactionProfiler();
                if (!transactionProfiler.isRunning()) {
                    transactionProfiler.start();
                    transactionProfiler.b(d6Var);
                } else if (a7Var.j()) {
                    transactionProfiler.b(d6Var);
                }
            }
            a1Var = d6Var;
        }
        if (a7Var.k()) {
            y(new e3() { // from class: io.sentry.i0
                @Override // io.sentry.e3
                public final void a(u0 u0Var) {
                    u0Var.E(a1.this);
                }
            });
        }
        return a1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(x0 x0Var) {
        x0Var.a(this.f23190b.getShutdownTimeoutMillis());
    }

    private static void L(s5 s5Var) {
        io.sentry.util.q.c(s5Var, "SentryOptions is required.");
        if (s5Var.getDsn() != null && !s5Var.getDsn().isEmpty()) {
            return;
        }
        throw new IllegalArgumentException("Hub requires a DSN to be instantiated. Considering using the NoOpHub if no DSN is available.");
    }

    private void k(z4 z4Var) {
        io.sentry.util.r rVar;
        z0 z0Var;
        if (this.f23190b.isTracingEnabled() && z4Var.O() != null && (rVar = (io.sentry.util.r) this.f23194f.get(io.sentry.util.d.a(z4Var.O()))) != null) {
            WeakReference weakReference = (WeakReference) rVar.a();
            if (z4Var.C().f() == null && weakReference != null && (z0Var = (z0) weakReference.get()) != null) {
                z4Var.C().n(z0Var.o());
            }
            String str = (String) rVar.b();
            if (z4Var.v0() == null && str != null) {
                z4Var.G0(str);
            }
        }
    }

    @Override // io.sentry.o0
    public void A(Throwable th, z0 z0Var, String str) {
        io.sentry.util.q.c(th, "throwable is required");
        io.sentry.util.q.c(z0Var, "span is required");
        io.sentry.util.q.c(str, "transactionName is required");
        Throwable a10 = io.sentry.util.d.a(th);
        if (!this.f23194f.containsKey(a10)) {
            this.f23194f.put(a10, new io.sentry.util.r(new WeakReference(z0Var), str));
        }
    }

    @Override // io.sentry.o0
    public s5 B() {
        return this.f23192d.a().b();
    }

    @Override // io.sentry.o0
    public io.sentry.protocol.r C(io.sentry.protocol.y yVar, v6 v6Var, c0 c0Var, u2 u2Var) {
        io.sentry.util.q.c(yVar, "transaction is required");
        io.sentry.protocol.r rVar = io.sentry.protocol.r.f23462b;
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'captureTransaction' call is a no-op.", new Object[0]);
            return rVar;
        } else if (!yVar.r0()) {
            this.f23190b.getLogger().c(j5.WARNING, "Transaction: %s is not finished and this 'captureTransaction' call is a no-op.", yVar.G());
            return rVar;
        } else if (!Boolean.TRUE.equals(Boolean.valueOf(yVar.s0()))) {
            this.f23190b.getLogger().c(j5.DEBUG, "Transaction %s was dropped due to sampling decision.", yVar.G());
            if (this.f23190b.getBackpressureMonitor().a() > 0) {
                io.sentry.clientreport.h clientReportRecorder = this.f23190b.getClientReportRecorder();
                io.sentry.clientreport.f fVar = io.sentry.clientreport.f.BACKPRESSURE;
                clientReportRecorder.a(fVar, i.Transaction);
                this.f23190b.getClientReportRecorder().c(fVar, i.Span, yVar.q0().size() + 1);
                return rVar;
            }
            io.sentry.clientreport.h clientReportRecorder2 = this.f23190b.getClientReportRecorder();
            io.sentry.clientreport.f fVar2 = io.sentry.clientreport.f.SAMPLE_RATE;
            clientReportRecorder2.a(fVar2, i.Transaction);
            this.f23190b.getClientReportRecorder().c(fVar2, i.Span, yVar.q0().size() + 1);
            return rVar;
        } else {
            try {
                r6.a a10 = this.f23192d.a();
                return a10.a().d(yVar, v6Var, a10.c(), c0Var, u2Var);
            } catch (Throwable th) {
                ILogger logger = this.f23190b.getLogger();
                j5 j5Var = j5.ERROR;
                logger.b(j5Var, "Error while capturing transaction with id: " + yVar.G(), th);
                return rVar;
            }
        }
    }

    @Override // io.sentry.o0
    public io.sentry.protocol.r D(z4 z4Var, c0 c0Var) {
        return F(z4Var, c0Var, null);
    }

    @Override // io.sentry.o0
    public void a(String str) {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'removeExtra' call is a no-op.", new Object[0]);
        } else if (str == null) {
            this.f23190b.getLogger().c(j5.WARNING, "removeExtra called with null parameter.", new Object[0]);
        } else {
            this.f23192d.a().c().a(str);
        }
    }

    @Override // io.sentry.o0
    public void b(String str, String str2) {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'setExtra' call is a no-op.", new Object[0]);
        } else if (str != null && str2 != null) {
            this.f23192d.a().c().b(str, str2);
        } else {
            this.f23190b.getLogger().c(j5.WARNING, "setExtra called with null parameter.", new Object[0]);
        }
    }

    @Override // io.sentry.o0
    public void c(String str) {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'removeTag' call is a no-op.", new Object[0]);
        } else if (str == null) {
            this.f23190b.getLogger().c(j5.WARNING, "removeTag called with null parameter.", new Object[0]);
        } else {
            this.f23192d.a().c().c(str);
        }
    }

    @Override // io.sentry.o0
    public void d(String str, String str2) {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'setTag' call is a no-op.", new Object[0]);
        } else if (str != null && str2 != null) {
            this.f23192d.a().c().d(str, str2);
        } else {
            this.f23190b.getLogger().c(j5.WARNING, "setTag called with null parameter.", new Object[0]);
        }
    }

    @Override // io.sentry.o0
    public void e() {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'endSession' call is a no-op.", new Object[0]);
            return;
        }
        r6.a a10 = this.f23192d.a();
        f6 e10 = a10.c().e();
        if (e10 != null) {
            a10.a().a(e10, io.sentry.util.j.e(new io.sentry.hints.m()));
        }
    }

    @Override // io.sentry.o0
    public void f() {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'startSession' call is a no-op.", new Object[0]);
            return;
        }
        r6.a a10 = this.f23192d.a();
        d3.d f10 = a10.c().f();
        if (f10 != null) {
            if (f10.b() != null) {
                a10.a().a(f10.b(), io.sentry.util.j.e(new io.sentry.hints.m()));
            }
            a10.a().a(f10.a(), io.sentry.util.j.e(new io.sentry.hints.o()));
            return;
        }
        this.f23190b.getLogger().c(j5.WARNING, "Session could not be started.", new Object[0]);
    }

    @Override // io.sentry.o0
    public void i(boolean z10) {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'close' call is a no-op.", new Object[0]);
            return;
        }
        try {
            for (e1 e1Var : this.f23190b.getIntegrations()) {
                if (e1Var instanceof Closeable) {
                    try {
                        ((Closeable) e1Var).close();
                    } catch (IOException e10) {
                        this.f23190b.getLogger().c(j5.WARNING, "Failed to close the integration {}.", e1Var, e10);
                    }
                }
            }
            y(new e3() { // from class: io.sentry.g0
                @Override // io.sentry.e3
                public final void a(u0 u0Var) {
                    u0Var.clear();
                }
            });
            this.f23190b.getTransactionProfiler().close();
            this.f23190b.getTransactionPerformanceCollector().close();
            final x0 executorService = this.f23190b.getExecutorService();
            if (z10) {
                executorService.submit(new Runnable() { // from class: io.sentry.h0
                    @Override // java.lang.Runnable
                    public final void run() {
                        j0.this.J(executorService);
                    }
                });
            } else {
                executorService.a(this.f23190b.getShutdownTimeoutMillis());
            }
            this.f23192d.a().a().i(z10);
        } catch (Throwable th) {
            this.f23190b.getLogger().b(j5.ERROR, "Error while closing the Hub.", th);
        }
        this.f23191c = false;
    }

    @Override // io.sentry.o0
    public boolean isEnabled() {
        return this.f23191c;
    }

    @Override // io.sentry.o0
    public io.sentry.transport.z l() {
        return this.f23192d.a().a().l();
    }

    @Override // io.sentry.o0
    public boolean m() {
        return this.f23192d.a().a().m();
    }

    @Override // io.sentry.o0
    public void n(io.sentry.protocol.b0 b0Var) {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'setUser' call is a no-op.", new Object[0]);
        } else {
            this.f23192d.a().c().n(b0Var);
        }
    }

    @Override // io.sentry.o0
    public void o(long j10) {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'flush' call is a no-op.", new Object[0]);
            return;
        }
        try {
            this.f23192d.a().a().o(j10);
        } catch (Throwable th) {
            this.f23190b.getLogger().b(j5.ERROR, "Error in the 'client.flush'.", th);
        }
    }

    @Override // io.sentry.o0
    public void p(e eVar, c0 c0Var) {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'addBreadcrumb' call is a no-op.", new Object[0]);
        } else if (eVar == null) {
            this.f23190b.getLogger().c(j5.WARNING, "addBreadcrumb called with null parameter.", new Object[0]);
        } else {
            this.f23192d.a().c().p(eVar, c0Var);
        }
    }

    @Override // io.sentry.o0
    public void q() {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'clearBreadcrumbs' call is a no-op.", new Object[0]);
        } else {
            this.f23192d.a().c().q();
        }
    }

    @Override // io.sentry.o0
    /* renamed from: r */
    public o0 clone() {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Disabled Hub cloned.", new Object[0]);
        }
        return new j0(this.f23190b, new r6(this.f23192d));
    }

    @Override // io.sentry.o0
    public a1 s() {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'getTransaction' call is a no-op.", new Object[0]);
            return null;
        }
        return this.f23192d.a().c().s();
    }

    @Override // io.sentry.o0
    public void t(e eVar) {
        p(eVar, new c0());
    }

    @Override // io.sentry.o0
    public io.sentry.protocol.r u(a4 a4Var, c0 c0Var) {
        io.sentry.util.q.c(a4Var, "SentryEnvelope is required.");
        io.sentry.protocol.r rVar = io.sentry.protocol.r.f23462b;
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'captureEnvelope' call is a no-op.", new Object[0]);
            return rVar;
        }
        try {
            io.sentry.protocol.r u10 = this.f23192d.a().a().u(a4Var, c0Var);
            if (u10 != null) {
                return u10;
            }
            return rVar;
        } catch (Throwable th) {
            this.f23190b.getLogger().b(j5.ERROR, "Error while capturing envelope.", th);
            return rVar;
        }
    }

    @Override // io.sentry.o0
    public a1 w(y6 y6Var, a7 a7Var) {
        return H(y6Var, a7Var);
    }

    @Override // io.sentry.o0
    public void y(e3 e3Var) {
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'configureScope' call is a no-op.", new Object[0]);
            return;
        }
        try {
            e3Var.a(this.f23192d.a().c());
        } catch (Throwable th) {
            this.f23190b.getLogger().b(j5.ERROR, "Error in the 'configureScope' callback.", th);
        }
    }

    @Override // io.sentry.o0
    public io.sentry.protocol.r z(t5 t5Var, c0 c0Var) {
        io.sentry.protocol.r rVar = io.sentry.protocol.r.f23462b;
        if (!isEnabled()) {
            this.f23190b.getLogger().c(j5.WARNING, "Instance is disabled and this 'captureReplay' call is a no-op.", new Object[0]);
            return rVar;
        }
        try {
            r6.a a10 = this.f23192d.a();
            return a10.a().b(t5Var, a10.c(), c0Var);
        } catch (Throwable th) {
            this.f23190b.getLogger().b(j5.ERROR, "Error while capturing replay", th);
            return rVar;
        }
    }

    private j0(s5 s5Var, r6 r6Var) {
        this.f23194f = Collections.synchronizedMap(new WeakHashMap());
        L(s5Var);
        this.f23190b = s5Var;
        this.f23193e = new w6(s5Var);
        this.f23192d = r6Var;
        this.f23189a = io.sentry.protocol.r.f23462b;
        this.f23195g = s5Var.getTransactionPerformanceCollector();
        this.f23191c = true;
        this.f23196h = new io.sentry.metrics.d(this);
    }

    private j0(s5 s5Var, r6.a aVar) {
        this(s5Var, new r6(s5Var.getLogger(), aVar));
    }
}
