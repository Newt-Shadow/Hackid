package z;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes.dex */
public abstract class h {

    /* loaded from: classes.dex */
    private static class a implements Executor {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f33324a;

        a(Handler handler) {
            this.f33324a = (Handler) c0.f.g(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (this.f33324a.post((Runnable) c0.f.g(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.f33324a + " is shutting down");
        }
    }

    public static Executor a(Handler handler) {
        return new a(handler);
    }
}
