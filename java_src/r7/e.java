package r7;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import m6.Task;
import m6.n;
/* loaded from: classes.dex */
public class e implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f28978a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f28979b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private Task f28980c = n.e(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(ExecutorService executorService) {
        this.f28978a = executorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task d(Runnable runnable, Task task) {
        runnable.run();
        return n.e(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task e(Callable callable, Task task) {
        return (Task) callable.call();
    }

    public ExecutorService c() {
        return this.f28978a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f28978a.execute(runnable);
    }

    public Task g(final Runnable runnable) {
        Task i10;
        synchronized (this.f28979b) {
            i10 = this.f28980c.i(this.f28978a, new m6.c() { // from class: r7.d
                @Override // m6.c
                public final Object a(Task task) {
                    Task d10;
                    d10 = e.d(runnable, task);
                    return d10;
                }
            });
            this.f28980c = i10;
        }
        return i10;
    }

    public Task h(final Callable callable) {
        Task i10;
        synchronized (this.f28979b) {
            i10 = this.f28980c.i(this.f28978a, new m6.c() { // from class: r7.c
                @Override // m6.c
                public final Object a(Task task) {
                    Task e10;
                    e10 = e.e(callable, task);
                    return e10;
                }
            });
            this.f28980c = i10;
        }
        return i10;
    }
}
