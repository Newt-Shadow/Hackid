package r8;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final r8.a f28987a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile r8.a f28988b;

    /* renamed from: r8.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0301b implements r8.a {
        private C0301b() {
        }

        @Override // r8.a
        public ExecutorService a(ThreadFactory threadFactory, c cVar) {
            return b(1, threadFactory, cVar);
        }

        public ExecutorService b(int i10, ThreadFactory threadFactory, c cVar) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i10, i10, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            return Executors.unconfigurableExecutorService(threadPoolExecutor);
        }
    }

    static {
        C0301b c0301b = new C0301b();
        f28987a = c0301b;
        f28988b = c0301b;
    }

    public static r8.a a() {
        return f28988b;
    }
}
