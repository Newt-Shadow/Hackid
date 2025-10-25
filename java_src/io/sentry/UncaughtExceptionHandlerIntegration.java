package io.sentry;

import io.sentry.c7;
import java.io.Closeable;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public final class UncaughtExceptionHandlerIntegration implements e1, Thread.UncaughtExceptionHandler, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f21969a;

    /* renamed from: b  reason: collision with root package name */
    private o0 f21970b;

    /* renamed from: c  reason: collision with root package name */
    private s5 f21971c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f21972d;

    /* renamed from: e  reason: collision with root package name */
    private final c7 f21973e;

    /* loaded from: classes2.dex */
    public static class a extends io.sentry.hints.d implements io.sentry.hints.l, io.sentry.hints.q {

        /* renamed from: d  reason: collision with root package name */
        private final AtomicReference f21974d;

        public a(long j10, ILogger iLogger) {
            super(j10, iLogger);
            this.f21974d = new AtomicReference();
        }

        @Override // io.sentry.hints.f
        public boolean f(io.sentry.protocol.r rVar) {
            io.sentry.protocol.r rVar2 = (io.sentry.protocol.r) this.f21974d.get();
            if (rVar2 != null && rVar2.equals(rVar)) {
                return true;
            }
            return false;
        }

        @Override // io.sentry.hints.f
        public void h(io.sentry.protocol.r rVar) {
            this.f21974d.set(rVar);
        }
    }

    public UncaughtExceptionHandlerIntegration() {
        this(c7.a.c());
    }

    static Throwable a(Thread thread, Throwable th) {
        io.sentry.protocol.i iVar = new io.sentry.protocol.i();
        iVar.i(Boolean.FALSE);
        iVar.j("UncaughtExceptionHandler");
        return new io.sentry.exception.a(iVar, th, thread);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this == this.f21973e.b()) {
            this.f21973e.a(this.f21969a);
            s5 s5Var = this.f21971c;
            if (s5Var != null) {
                s5Var.getLogger().c(j5.DEBUG, "UncaughtExceptionHandlerIntegration removed.", new Object[0]);
            }
        }
    }

    @Override // io.sentry.e1
    public void f(o0 o0Var, s5 s5Var) {
        if (this.f21972d) {
            s5Var.getLogger().c(j5.ERROR, "Attempt to register a UncaughtExceptionHandlerIntegration twice.", new Object[0]);
            return;
        }
        this.f21972d = true;
        this.f21970b = (o0) io.sentry.util.q.c(o0Var, "Hub is required");
        s5 s5Var2 = (s5) io.sentry.util.q.c(s5Var, "SentryOptions is required");
        this.f21971c = s5Var2;
        ILogger logger = s5Var2.getLogger();
        j5 j5Var = j5.DEBUG;
        logger.c(j5Var, "UncaughtExceptionHandlerIntegration enabled: %s", Boolean.valueOf(this.f21971c.isEnableUncaughtExceptionHandler()));
        if (this.f21971c.isEnableUncaughtExceptionHandler()) {
            Thread.UncaughtExceptionHandler b10 = this.f21973e.b();
            if (b10 != null) {
                ILogger logger2 = this.f21971c.getLogger();
                logger2.c(j5Var, "default UncaughtExceptionHandler class='" + b10.getClass().getName() + "'", new Object[0]);
                if (b10 instanceof UncaughtExceptionHandlerIntegration) {
                    this.f21969a = ((UncaughtExceptionHandlerIntegration) b10).f21969a;
                } else {
                    this.f21969a = b10;
                }
            }
            this.f21973e.a(this);
            this.f21971c.getLogger().c(j5Var, "UncaughtExceptionHandlerIntegration installed.", new Object[0]);
            io.sentry.util.k.a("UncaughtExceptionHandler");
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        s5 s5Var = this.f21971c;
        if (s5Var != null && this.f21970b != null) {
            s5Var.getLogger().c(j5.INFO, "Uncaught exception received.", new Object[0]);
            try {
                a aVar = new a(this.f21971c.getFlushTimeoutMillis(), this.f21971c.getLogger());
                z4 z4Var = new z4(a(thread, th));
                z4Var.B0(j5.FATAL);
                if (this.f21970b.s() == null && z4Var.G() != null) {
                    aVar.h(z4Var.G());
                }
                c0 e10 = io.sentry.util.j.e(aVar);
                boolean equals = this.f21970b.D(z4Var, e10).equals(io.sentry.protocol.r.f23462b);
                io.sentry.hints.h f10 = io.sentry.util.j.f(e10);
                if ((!equals || io.sentry.hints.h.MULTITHREADED_DEDUPLICATION.equals(f10)) && !aVar.e()) {
                    this.f21971c.getLogger().c(j5.WARNING, "Timed out waiting to flush event to disk before crashing. Event: %s", z4Var.G());
                }
            } catch (Throwable th2) {
                this.f21971c.getLogger().b(j5.ERROR, "Error sending uncaught exception to Sentry.", th2);
            }
            if (this.f21969a != null) {
                this.f21971c.getLogger().c(j5.INFO, "Invoking inner uncaught exception handler.", new Object[0]);
                this.f21969a.uncaughtException(thread, th);
            } else if (this.f21971c.isPrintUncaughtStackTrace()) {
                th.printStackTrace();
            }
        }
    }

    UncaughtExceptionHandlerIntegration(c7 c7Var) {
        this.f21972d = false;
        this.f21973e = (c7) io.sentry.util.q.c(c7Var, "threadAdapter is required.");
    }
}
