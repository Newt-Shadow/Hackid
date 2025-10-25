package r6;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import n6.i;
import n6.m;
/* loaded from: classes.dex */
public abstract class b extends c {

    /* loaded from: classes.dex */
    private static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final Future f28970a;

        /* renamed from: b  reason: collision with root package name */
        final r6.a f28971b;

        a(Future future, r6.a aVar) {
            this.f28970a = future;
            this.f28971b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f28971b.onSuccess(b.b(this.f28970a));
            } catch (Error e10) {
                e = e10;
                this.f28971b.onFailure(e);
            } catch (RuntimeException e11) {
                e = e11;
                this.f28971b.onFailure(e);
            } catch (ExecutionException e12) {
                this.f28971b.onFailure(e12.getCause());
            }
        }

        public String toString() {
            return i.b(this).c(this.f28971b).toString();
        }
    }

    public static void a(d dVar, r6.a aVar, Executor executor) {
        m.i(aVar);
        dVar.a(new a(dVar, aVar), executor);
    }

    public static Object b(Future future) {
        m.p(future.isDone(), "Future was expected to be done: %s", future);
        return e.a(future);
    }
}
