package com.google.android.gms.measurement.internal;

import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class s6 extends a8 {

    /* renamed from: k  reason: collision with root package name */
    private static final AtomicLong f8000k = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: c  reason: collision with root package name */
    private r6 f8001c;

    /* renamed from: d  reason: collision with root package name */
    private r6 f8002d;

    /* renamed from: e  reason: collision with root package name */
    private final PriorityBlockingQueue f8003e;

    /* renamed from: f  reason: collision with root package name */
    private final BlockingQueue f8004f;

    /* renamed from: g  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f8005g;

    /* renamed from: h  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f8006h;

    /* renamed from: i  reason: collision with root package name */
    private final Object f8007i;

    /* renamed from: j  reason: collision with root package name */
    private final Semaphore f8008j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s6(w6 w6Var) {
        super(w6Var);
        this.f8007i = new Object();
        this.f8008j = new Semaphore(2);
        this.f8003e = new PriorityBlockingQueue();
        this.f8004f = new LinkedBlockingQueue();
        this.f8005g = new p6(this, "Thread death: Uncaught exception on worker thread");
        this.f8006h = new p6(this, "Thread death: Uncaught exception on network thread");
    }

    private final void F(q6 q6Var) {
        synchronized (this.f8007i) {
            PriorityBlockingQueue priorityBlockingQueue = this.f8003e;
            priorityBlockingQueue.add(q6Var);
            r6 r6Var = this.f8001c;
            if (r6Var == null) {
                r6 r6Var2 = new r6(this, "Measurement Worker", priorityBlockingQueue);
                this.f8001c = r6Var2;
                r6Var2.setUncaughtExceptionHandler(this.f8005g);
                this.f8001c.start();
            } else {
                r6Var.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void A(r6 r6Var) {
        this.f8002d = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object B() {
        return this.f8007i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Semaphore C() {
        return this.f8008j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ boolean D() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.z7
    public final void g() {
        if (Thread.currentThread() == this.f8002d) {
            return;
        }
        throw new IllegalStateException("Call expected from network thread");
    }

    @Override // com.google.android.gms.measurement.internal.z7
    public final void h() {
        if (Thread.currentThread() == this.f8001c) {
            return;
        }
        throw new IllegalStateException("Call expected from worker thread");
    }

    @Override // com.google.android.gms.measurement.internal.a8
    protected final boolean i() {
        return false;
    }

    public final void o() {
        if (Thread.currentThread() != this.f8001c) {
            return;
        }
        throw new IllegalStateException("Call not expected from worker thread");
    }

    public final boolean p() {
        if (Thread.currentThread() == this.f8001c) {
            return true;
        }
        return false;
    }

    public final boolean q() {
        if (Thread.currentThread() == this.f8002d) {
            return true;
        }
        return false;
    }

    public final Future r(Callable callable) {
        l();
        n5.q.k(callable);
        q6 q6Var = new q6(this, callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f8001c) {
            if (!this.f8003e.isEmpty()) {
                this.f8322a.a().r().a("Callable skipped the worker queue.");
            }
            q6Var.run();
        } else {
            F(q6Var);
        }
        return q6Var;
    }

    public final Future s(Callable callable) {
        l();
        n5.q.k(callable);
        q6 q6Var = new q6(this, callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f8001c) {
            q6Var.run();
        } else {
            F(q6Var);
        }
        return q6Var;
    }

    public final void t(Runnable runnable) {
        l();
        n5.q.k(runnable);
        F(new q6(this, runnable, false, "Task exception on worker thread"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object u(AtomicReference atomicReference, long j10, String str, Runnable runnable) {
        synchronized (atomicReference) {
            this.f8322a.b().t(runnable);
            try {
                atomicReference.wait(j10);
            } catch (InterruptedException unused) {
                n5 r10 = this.f8322a.a().r();
                StringBuilder sb2 = new StringBuilder(str.length() + 24);
                sb2.append("Interrupted waiting for ");
                sb2.append(str);
                r10.a(sb2.toString());
                return null;
            }
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            this.f8322a.a().r().a("Timed out waiting for ".concat(str));
        }
        return obj;
    }

    public final void v(Runnable runnable) {
        l();
        n5.q.k(runnable);
        F(new q6(this, runnable, true, "Task exception on worker thread"));
    }

    public final void w(Runnable runnable) {
        l();
        n5.q.k(runnable);
        q6 q6Var = new q6(this, runnable, false, "Task exception on network thread");
        synchronized (this.f8007i) {
            BlockingQueue blockingQueue = this.f8004f;
            blockingQueue.add(q6Var);
            r6 r6Var = this.f8002d;
            if (r6Var == null) {
                r6 r6Var2 = new r6(this, "Measurement Network", blockingQueue);
                this.f8002d = r6Var2;
                r6Var2.setUncaughtExceptionHandler(this.f8006h);
                this.f8002d.start();
            } else {
                r6Var.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ r6 x() {
        return this.f8001c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void y(r6 r6Var) {
        this.f8001c = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ r6 z() {
        return this.f8002d;
    }
}
