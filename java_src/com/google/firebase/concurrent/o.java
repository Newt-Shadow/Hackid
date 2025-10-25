package com.google.firebase.concurrent;

import com.google.firebase.concurrent.p;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o implements ScheduledExecutorService {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f8759a;

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledExecutorService f8760b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(ExecutorService executorService, ScheduledExecutorService scheduledExecutorService) {
        this.f8759a = executorService;
        this.f8760b = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n(Runnable runnable, p.b bVar) {
        try {
            runnable.run();
            bVar.set(null);
        } catch (Exception e10) {
            bVar.a(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(final Runnable runnable, final p.b bVar) {
        this.f8759a.execute(new Runnable() { // from class: com.google.firebase.concurrent.d
            @Override // java.lang.Runnable
            public final void run() {
                o.n(runnable, bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ScheduledFuture p(final Runnable runnable, long j10, TimeUnit timeUnit, final p.b bVar) {
        return this.f8760b.schedule(new Runnable() { // from class: com.google.firebase.concurrent.k
            @Override // java.lang.Runnable
            public final void run() {
                o.this.o(runnable, bVar);
            }
        }, j10, timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q(Callable callable, p.b bVar) {
        try {
            bVar.set(callable.call());
        } catch (Exception e10) {
            bVar.a(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Future r(final Callable callable, final p.b bVar) {
        return this.f8759a.submit(new Runnable() { // from class: com.google.firebase.concurrent.m
            @Override // java.lang.Runnable
            public final void run() {
                o.q(callable, bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ScheduledFuture s(final Callable callable, long j10, TimeUnit timeUnit, final p.b bVar) {
        return this.f8760b.schedule(new Callable() { // from class: com.google.firebase.concurrent.l
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Future r10;
                r10 = o.this.r(callable, bVar);
                return r10;
            }
        }, j10, timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void t(Runnable runnable, p.b bVar) {
        try {
            runnable.run();
        } catch (Exception e10) {
            bVar.a(e10);
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(final Runnable runnable, final p.b bVar) {
        this.f8759a.execute(new Runnable() { // from class: com.google.firebase.concurrent.n
            @Override // java.lang.Runnable
            public final void run() {
                o.t(runnable, bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ScheduledFuture v(final Runnable runnable, long j10, long j11, TimeUnit timeUnit, final p.b bVar) {
        return this.f8760b.scheduleAtFixedRate(new Runnable() { // from class: com.google.firebase.concurrent.i
            @Override // java.lang.Runnable
            public final void run() {
                o.this.u(runnable, bVar);
            }
        }, j10, j11, timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(final Runnable runnable, final p.b bVar) {
        this.f8759a.execute(new Runnable() { // from class: com.google.firebase.concurrent.e
            @Override // java.lang.Runnable
            public final void run() {
                o.y(runnable, bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ScheduledFuture x(final Runnable runnable, long j10, long j11, TimeUnit timeUnit, final p.b bVar) {
        return this.f8760b.scheduleWithFixedDelay(new Runnable() { // from class: com.google.firebase.concurrent.j
            @Override // java.lang.Runnable
            public final void run() {
                o.this.w(runnable, bVar);
            }
        }, j10, j11, timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void y(Runnable runnable, p.b bVar) {
        try {
            runnable.run();
        } catch (Exception e10) {
            bVar.a(e10);
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j10, TimeUnit timeUnit) {
        return this.f8759a.awaitTermination(j10, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f8759a.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public List invokeAll(Collection collection) {
        return this.f8759a.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public Object invokeAny(Collection collection) {
        return this.f8759a.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f8759a.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f8759a.isTerminated();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture schedule(final Runnable runnable, final long j10, final TimeUnit timeUnit) {
        return new p(new p.c() { // from class: com.google.firebase.concurrent.f
            @Override // com.google.firebase.concurrent.p.c
            public final ScheduledFuture a(p.b bVar) {
                ScheduledFuture p10;
                p10 = o.this.p(runnable, j10, timeUnit, bVar);
                return p10;
            }
        });
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture scheduleAtFixedRate(final Runnable runnable, final long j10, final long j11, final TimeUnit timeUnit) {
        return new p(new p.c() { // from class: com.google.firebase.concurrent.h
            @Override // com.google.firebase.concurrent.p.c
            public final ScheduledFuture a(p.b bVar) {
                ScheduledFuture v10;
                v10 = o.this.v(runnable, j10, j11, timeUnit, bVar);
                return v10;
            }
        });
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture scheduleWithFixedDelay(final Runnable runnable, final long j10, final long j11, final TimeUnit timeUnit) {
        return new p(new p.c() { // from class: com.google.firebase.concurrent.g
            @Override // com.google.firebase.concurrent.p.c
            public final ScheduledFuture a(p.b bVar) {
                ScheduledFuture x10;
                x10 = o.this.x(runnable, j10, j11, timeUnit, bVar);
                return x10;
            }
        });
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override // java.util.concurrent.ExecutorService
    public List shutdownNow() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override // java.util.concurrent.ExecutorService
    public Future submit(Callable callable) {
        return this.f8759a.submit(callable);
    }

    @Override // java.util.concurrent.ExecutorService
    public List invokeAll(Collection collection, long j10, TimeUnit timeUnit) {
        return this.f8759a.invokeAll(collection, j10, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public Object invokeAny(Collection collection, long j10, TimeUnit timeUnit) {
        return this.f8759a.invokeAny(collection, j10, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture schedule(final Callable callable, final long j10, final TimeUnit timeUnit) {
        return new p(new p.c() { // from class: com.google.firebase.concurrent.c
            @Override // com.google.firebase.concurrent.p.c
            public final ScheduledFuture a(p.b bVar) {
                ScheduledFuture s10;
                s10 = o.this.s(callable, j10, timeUnit, bVar);
                return s10;
            }
        });
    }

    @Override // java.util.concurrent.ExecutorService
    public Future submit(Runnable runnable, Object obj) {
        return this.f8759a.submit(runnable, obj);
    }

    @Override // java.util.concurrent.ExecutorService
    public Future submit(Runnable runnable) {
        return this.f8759a.submit(runnable);
    }
}
