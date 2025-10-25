package z0;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
abstract class c {

    /* renamed from: e  reason: collision with root package name */
    private static Handler f33350e;

    /* renamed from: b  reason: collision with root package name */
    private volatile e f33352b = e.PENDING;

    /* renamed from: c  reason: collision with root package name */
    final AtomicBoolean f33353c = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    final AtomicBoolean f33354d = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    private final FutureTask f33351a = new b(new a());

    /* loaded from: classes.dex */
    class a implements Callable {
        a() {
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            c.this.f33354d.set(true);
            Object obj = null;
            try {
                Process.setThreadPriority(10);
                obj = c.this.b();
                Binder.flushPendingCommands();
                return obj;
            } finally {
            }
        }
    }

    /* loaded from: classes.dex */
    class b extends FutureTask {
        b(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                c.this.j(get());
            } catch (InterruptedException e10) {
                Log.w("AsyncTask", e10);
            } catch (CancellationException unused) {
                c.this.j(null);
            } catch (ExecutionException e11) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e11.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z0.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0384c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f33357a;

        RunnableC0384c(Object obj) {
            this.f33357a = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.d(this.f33357a);
        }
    }

    /* loaded from: classes.dex */
    static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33359a;

        static {
            int[] iArr = new int[e.values().length];
            f33359a = iArr;
            try {
                iArr[e.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33359a[e.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum e {
        PENDING,
        RUNNING,
        FINISHED
    }

    private static Handler e() {
        Handler handler;
        synchronized (c.class) {
            if (f33350e == null) {
                f33350e = new Handler(Looper.getMainLooper());
            }
            handler = f33350e;
        }
        return handler;
    }

    public final boolean a(boolean z10) {
        this.f33353c.set(true);
        return this.f33351a.cancel(z10);
    }

    protected abstract Object b();

    public final void c(Executor executor) {
        if (this.f33352b != e.PENDING) {
            int i10 = d.f33359a[this.f33352b.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    throw new IllegalStateException("We should never reach this state");
                }
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        }
        this.f33352b = e.RUNNING;
        executor.execute(this.f33351a);
    }

    void d(Object obj) {
        if (f()) {
            g(obj);
        } else {
            h(obj);
        }
        this.f33352b = e.FINISHED;
    }

    public final boolean f() {
        return this.f33353c.get();
    }

    protected abstract void g(Object obj);

    protected abstract void h(Object obj);

    void i(Object obj) {
        e().post(new RunnableC0384c(obj));
    }

    void j(Object obj) {
        if (!this.f33354d.get()) {
            i(obj);
        }
    }
}
