package q7;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public abstract class l0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28492a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AtomicLong f28493b;

        /* renamed from: q7.l0$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0288a extends e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Runnable f28494a;

            C0288a(Runnable runnable) {
                this.f28494a = runnable;
            }

            @Override // q7.e
            public void a() {
                this.f28494a.run();
            }
        }

        a(String str, AtomicLong atomicLong) {
            this.f28492a = str;
            this.f28493b = atomicLong;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(new C0288a(runnable));
            newThread.setName(this.f28492a + this.f28493b.getAndIncrement());
            return newThread;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28496a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ExecutorService f28497b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f28498c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TimeUnit f28499d;

        b(String str, ExecutorService executorService, long j10, TimeUnit timeUnit) {
            this.f28496a = str;
            this.f28497b = executorService;
            this.f28498c = j10;
            this.f28499d = timeUnit;
        }

        @Override // q7.e
        public void a() {
            try {
                n7.g f10 = n7.g.f();
                f10.b("Executing shutdown hook for " + this.f28496a);
                this.f28497b.shutdown();
                if (!this.f28497b.awaitTermination(this.f28498c, this.f28499d)) {
                    n7.g f11 = n7.g.f();
                    f11.b(this.f28496a + " did not shut down in the allocated time. Requesting immediate shutdown.");
                    this.f28497b.shutdownNow();
                }
            } catch (InterruptedException unused) {
                n7.g.f().b(String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.f28496a));
                this.f28497b.shutdownNow();
            }
        }
    }

    private static void a(String str, ExecutorService executorService) {
        b(str, executorService, 2L, TimeUnit.SECONDS);
    }

    private static void b(String str, ExecutorService executorService, long j10, TimeUnit timeUnit) {
        Runtime runtime = Runtime.getRuntime();
        b bVar = new b(str, executorService, j10, timeUnit);
        runtime.addShutdownHook(new Thread(bVar, "Crashlytics Shutdown Hook for " + str));
    }

    public static ExecutorService c(String str) {
        ExecutorService e10 = e(d(str), new ThreadPoolExecutor.DiscardPolicy());
        a(str, e10);
        return e10;
    }

    public static ThreadFactory d(String str) {
        return new a(str, new AtomicLong(1L));
    }

    private static ExecutorService e(ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        return Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, rejectedExecutionHandler));
    }
}
