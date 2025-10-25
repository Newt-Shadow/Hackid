package td;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class l1 extends k1 implements u0 {

    /* renamed from: d  reason: collision with root package name */
    private final Executor f30662d;

    public l1(Executor executor) {
        this.f30662d = executor;
        if (T0() instanceof ScheduledThreadPoolExecutor) {
            ((ScheduledThreadPoolExecutor) T0()).setRemoveOnCancelPolicy(true);
        }
    }

    private final void J0(ad.i iVar, RejectedExecutionException rejectedExecutionException) {
        w1.c(iVar, i1.a("The task was rejected", rejectedExecutionException));
    }

    private final ScheduledFuture U0(ScheduledExecutorService scheduledExecutorService, Runnable runnable, ad.i iVar, long j10) {
        try {
            return scheduledExecutorService.schedule(runnable, j10, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e10) {
            J0(iVar, e10);
            return null;
        }
    }

    public Executor T0() {
        return this.f30662d;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ExecutorService executorService;
        Executor T0 = T0();
        if (T0 instanceof ExecutorService) {
            executorService = (ExecutorService) T0;
        } else {
            executorService = null;
        }
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public boolean equals(Object obj) {
        if ((obj instanceof l1) && ((l1) obj).T0() == T0()) {
            return true;
        }
        return false;
    }

    @Override // td.u0
    public void h(long j10, l lVar) {
        ScheduledExecutorService scheduledExecutorService;
        Executor T0 = T0();
        ScheduledFuture scheduledFuture = null;
        if (T0 instanceof ScheduledExecutorService) {
            scheduledExecutorService = (ScheduledExecutorService) T0;
        } else {
            scheduledExecutorService = null;
        }
        if (scheduledExecutorService != null) {
            scheduledFuture = U0(scheduledExecutorService, new j2(this, lVar), lVar.getContext(), j10);
        }
        if (scheduledFuture != null) {
            p.c(lVar, new j(scheduledFuture));
        } else {
            q0.f30683i.h(j10, lVar);
        }
    }

    public int hashCode() {
        return System.identityHashCode(T0());
    }

    @Override // td.i0
    public void q0(ad.i iVar, Runnable runnable) {
        try {
            Executor T0 = T0();
            c.a();
            T0.execute(runnable);
        } catch (RejectedExecutionException e10) {
            c.a();
            J0(iVar, e10);
            z0.b().q0(iVar, runnable);
        }
    }

    @Override // td.i0
    public String toString() {
        return T0().toString();
    }
}
