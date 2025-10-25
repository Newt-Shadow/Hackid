package r7;

import androidx.privacysandbox.ads.adservices.measurement.j;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import m6.Task;
import m6.l;
import m6.n;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Executor f28975a = new j();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task b(l lVar, AtomicBoolean atomicBoolean, m6.b bVar, Task task) {
        if (task.p()) {
            lVar.e(task.l());
        } else if (task.k() != null) {
            lVar.d(task.k());
        } else if (atomicBoolean.getAndSet(true)) {
            bVar.a();
        }
        return n.e(null);
    }

    public static Task c(Task task, Task task2) {
        final m6.b bVar = new m6.b();
        final l lVar = new l(bVar.b());
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        m6.c cVar = new m6.c() { // from class: r7.a
            @Override // m6.c
            public final Object a(Task task3) {
                Task b10;
                b10 = b.b(l.this, atomicBoolean, bVar, task3);
                return b10;
            }
        };
        Executor executor = f28975a;
        task.i(executor, cVar);
        task2.i(executor, cVar);
        return lVar.a();
    }
}
