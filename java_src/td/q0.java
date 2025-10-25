package td;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import td.e1;
/* loaded from: classes2.dex */
public final class q0 extends e1 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* renamed from: i  reason: collision with root package name */
    public static final q0 f30683i;

    /* renamed from: j  reason: collision with root package name */
    private static final long f30684j;

    static {
        Long l10;
        q0 q0Var = new q0();
        f30683i = q0Var;
        d1.Y0(q0Var, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l10 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l10 = 1000L;
        }
        f30684j = timeUnit.toNanos(l10.longValue());
    }

    private q0() {
    }

    private final boolean A1() {
        int i10 = debugStatus;
        if (i10 != 2 && i10 != 3) {
            return false;
        }
        return true;
    }

    private final synchronized boolean B1() {
        if (A1()) {
            return false;
        }
        debugStatus = 1;
        kotlin.jvm.internal.m.c(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return true;
    }

    private final void C1() {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    private final synchronized void x1() {
        if (!A1()) {
            return;
        }
        debugStatus = 3;
        s1();
        kotlin.jvm.internal.m.c(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
    }

    private final synchronized Thread y1() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
            _thread = thread;
            thread.setContextClassLoader(f30683i.getClass().getClassLoader());
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    private final boolean z1() {
        if (debugStatus == 4) {
            return true;
        }
        return false;
    }

    @Override // td.f1
    protected Thread e1() {
        Thread thread = _thread;
        if (thread == null) {
            return y1();
        }
        return thread;
    }

    @Override // td.f1
    protected void f1(long j10, e1.b bVar) {
        C1();
    }

    @Override // td.e1
    public void k1(Runnable runnable) {
        if (z1()) {
            C1();
        }
        super.k1(runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean q12;
        o2.f30679a.d(this);
        c.a();
        try {
            if (!B1()) {
                if (!q12) {
                    return;
                }
                return;
            }
            long j10 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long b12 = b1();
                if (b12 == Long.MAX_VALUE) {
                    c.a();
                    long nanoTime = System.nanoTime();
                    if (j10 == Long.MAX_VALUE) {
                        j10 = f30684j + nanoTime;
                    }
                    long j11 = j10 - nanoTime;
                    if (j11 > 0) {
                        b12 = od.i.e(b12, j11);
                    } else {
                        _thread = null;
                        x1();
                        c.a();
                        if (!q1()) {
                            e1();
                            return;
                        }
                        return;
                    }
                } else {
                    j10 = Long.MAX_VALUE;
                }
                if (b12 > 0) {
                    if (A1()) {
                        _thread = null;
                        x1();
                        c.a();
                        if (!q1()) {
                            e1();
                            return;
                        }
                        return;
                    }
                    c.a();
                    LockSupport.parkNanos(this, b12);
                }
            }
        } finally {
            _thread = null;
            x1();
            c.a();
            if (!q1()) {
                e1();
            }
        }
    }

    @Override // td.e1, td.d1
    public void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    @Override // td.i0
    public String toString() {
        return "DefaultExecutor";
    }
}
