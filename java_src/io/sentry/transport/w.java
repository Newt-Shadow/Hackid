package io.sentry.transport;

import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.y3;
import io.sentry.z3;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
final class w extends ThreadPoolExecutor {

    /* renamed from: f  reason: collision with root package name */
    private static final long f23729f = io.sentry.j.h(2000);

    /* renamed from: a  reason: collision with root package name */
    private final int f23730a;

    /* renamed from: b  reason: collision with root package name */
    private y3 f23731b;

    /* renamed from: c  reason: collision with root package name */
    private final ILogger f23732c;

    /* renamed from: d  reason: collision with root package name */
    private final z3 f23733d;

    /* renamed from: e  reason: collision with root package name */
    private final a0 f23734e;

    /* loaded from: classes2.dex */
    static final class a implements Future {
        a() {
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z10) {
            return true;
        }

        @Override // java.util.concurrent.Future
        public Object get() {
            throw new CancellationException();
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return true;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return true;
        }

        @Override // java.util.concurrent.Future
        public Object get(long j10, TimeUnit timeUnit) {
            throw new CancellationException();
        }
    }

    public w(int i10, int i11, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler, ILogger iLogger, z3 z3Var) {
        super(i10, i10, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, rejectedExecutionHandler);
        this.f23731b = null;
        this.f23734e = new a0();
        this.f23730a = i11;
        this.f23732c = iLogger;
        this.f23733d = z3Var;
    }

    public boolean a() {
        y3 y3Var = this.f23731b;
        if (y3Var == null || this.f23733d.a().b(y3Var) >= f23729f) {
            return false;
        }
        return true;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        try {
            super.afterExecute(runnable, th);
        } finally {
            this.f23734e.a();
        }
    }

    public boolean b() {
        if (this.f23734e.b() < this.f23730a) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(long j10) {
        try {
            this.f23734e.d(j10, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            this.f23732c.b(j5.ERROR, "Failed to wait till idle", e10);
            Thread.currentThread().interrupt();
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future submit(Runnable runnable) {
        if (b()) {
            this.f23734e.c();
            return super.submit(runnable);
        }
        this.f23731b = this.f23733d.a();
        this.f23732c.c(j5.WARNING, "Submit cancelled", new Object[0]);
        return new a();
    }
}
