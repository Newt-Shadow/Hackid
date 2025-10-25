package m;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class d extends e {

    /* renamed from: a  reason: collision with root package name */
    private final Object f25575a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f25576b = Executors.newFixedThreadPool(4, new a());

    /* renamed from: c  reason: collision with root package name */
    private volatile Handler f25577c;

    /* loaded from: classes.dex */
    class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f25578a = new AtomicInteger(0);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("arch_disk_io_" + this.f25578a.getAndIncrement());
            return thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {
        public static Handler a(Looper looper) {
            return Handler.createAsync(looper);
        }
    }

    private static Handler d(Looper looper) {
        if (Build.VERSION.SDK_INT >= 28) {
            return b.a(looper);
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
            return new Handler(looper);
        } catch (InvocationTargetException unused2) {
            return new Handler(looper);
        }
    }

    @Override // m.e
    public void a(Runnable runnable) {
        this.f25576b.execute(runnable);
    }

    @Override // m.e
    public boolean b() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return true;
        }
        return false;
    }

    @Override // m.e
    public void c(Runnable runnable) {
        if (this.f25577c == null) {
            synchronized (this.f25575a) {
                if (this.f25577c == null) {
                    this.f25577c = d(Looper.getMainLooper());
                }
            }
        }
        this.f25577c.post(runnable);
    }
}
