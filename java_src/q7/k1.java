package q7;

import android.os.Looper;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import m6.Task;
/* loaded from: classes.dex */
public abstract class k1 {

    /* renamed from: a  reason: collision with root package name */
    private static final ExecutorService f28491a = l0.c("awaitEvenIfOnMainThread task continuation executor");

    public static Object b(Task task) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        task.g(f28491a, new m6.c() { // from class: q7.j1
            @Override // m6.c
            public final Object a(Task task2) {
                Object d10;
                d10 = k1.d(countDownLatch, task2);
                return d10;
            }
        });
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(3000L, TimeUnit.MILLISECONDS);
        } else {
            countDownLatch.await(4000L, TimeUnit.MILLISECONDS);
        }
        if (task.p()) {
            return task.l();
        }
        if (!task.n()) {
            if (task.o()) {
                throw new IllegalStateException(task.k());
            }
            throw new TimeoutException();
        }
        throw new CancellationException("Task is already canceled");
    }

    public static boolean c(CountDownLatch countDownLatch, long j10, TimeUnit timeUnit) {
        boolean z10 = false;
        try {
            long nanos = timeUnit.toNanos(j10);
            while (true) {
                try {
                    break;
                } catch (InterruptedException unused) {
                    z10 = true;
                    nanos = (System.nanoTime() + nanos) - System.nanoTime();
                }
            }
            return countDownLatch.await(nanos, TimeUnit.NANOSECONDS);
        } finally {
            if (z10) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object d(CountDownLatch countDownLatch, Task task) {
        countDownLatch.countDown();
        return null;
    }
}
