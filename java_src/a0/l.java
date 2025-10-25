package a0;

import android.os.Handler;
import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
abstract class l {

    /* loaded from: classes.dex */
    private static class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private String f48a;

        /* renamed from: b  reason: collision with root package name */
        private int f49b;

        /* renamed from: a0.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0002a extends Thread {

            /* renamed from: a  reason: collision with root package name */
            private final int f50a;

            C0002a(Runnable runnable, String str, int i10) {
                super(runnable, str);
                this.f50a = i10;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(this.f50a);
                super.run();
            }
        }

        a(String str, int i10) {
            this.f48a = str;
            this.f49b = i10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C0002a(runnable, this.f48a, this.f49b);
        }
    }

    /* loaded from: classes.dex */
    private static class b implements Executor {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f51a;

        b(Handler handler) {
            this.f51a = (Handler) c0.f.g(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (this.f51a.post((Runnable) c0.f.g(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.f51a + " is shutting down");
        }
    }

    /* loaded from: classes.dex */
    private static class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private Callable f52a;

        /* renamed from: b  reason: collision with root package name */
        private c0.a f53b;

        /* renamed from: c  reason: collision with root package name */
        private Handler f54c;

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ c0.a f55a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Object f56b;

            a(c0.a aVar, Object obj) {
                this.f55a = aVar;
                this.f56b = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f55a.accept(this.f56b);
            }
        }

        c(Handler handler, Callable callable, c0.a aVar) {
            this.f52a = callable;
            this.f53b = aVar;
            this.f54c = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            try {
                obj = this.f52a.call();
            } catch (Exception unused) {
                obj = null;
            }
            this.f54c.post(new a(this.f53b, obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ThreadPoolExecutor a(String str, int i10, int i11) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i11, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new a(str, i10));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor b(Handler handler) {
        return new b(handler);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(Executor executor, Callable callable, c0.a aVar) {
        executor.execute(new c(a0.b.a(), callable, aVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object d(ExecutorService executorService, Callable callable, int i10) {
        try {
            return executorService.submit(callable).get(i10, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw e10;
        } catch (ExecutionException e11) {
            throw new RuntimeException(e11);
        } catch (TimeoutException unused) {
            throw new InterruptedException("timeout");
        }
    }
}
