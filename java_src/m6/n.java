package m6;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public abstract class n {
    public static Object a(Task task) {
        n5.q.i();
        n5.q.g();
        n5.q.l(task, "Task must not be null");
        if (task.o()) {
            return h(task);
        }
        q qVar = new q(null);
        i(task, qVar);
        qVar.b();
        return h(task);
    }

    public static Object b(Task task, long j10, TimeUnit timeUnit) {
        n5.q.i();
        n5.q.g();
        n5.q.l(task, "Task must not be null");
        n5.q.l(timeUnit, "TimeUnit must not be null");
        if (task.o()) {
            return h(task);
        }
        q qVar = new q(null);
        i(task, qVar);
        if (qVar.d(j10, timeUnit)) {
            return h(task);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static Task c(Executor executor, Callable callable) {
        n5.q.l(executor, "Executor must not be null");
        n5.q.l(callable, "Callback must not be null");
        n0 n0Var = new n0();
        executor.execute(new o0(n0Var, callable));
        return n0Var;
    }

    public static Task d(Exception exc) {
        n0 n0Var = new n0();
        n0Var.s(exc);
        return n0Var;
    }

    public static Task e(Object obj) {
        n0 n0Var = new n0();
        n0Var.t(obj);
        return n0Var;
    }

    public static Task f(Collection collection) {
        if (collection != null && !collection.isEmpty()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (((Task) it.next()) == null) {
                    throw new NullPointerException("null tasks are not accepted");
                }
            }
            n0 n0Var = new n0();
            s sVar = new s(collection.size(), n0Var);
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                i((Task) it2.next(), sVar);
            }
            return n0Var;
        }
        return e(null);
    }

    public static Task g(Task... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return f(Arrays.asList(taskArr));
        }
        return e(null);
    }

    private static Object h(Task task) {
        if (task.p()) {
            return task.l();
        }
        if (task.n()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(task.k());
    }

    private static void i(Task task, r rVar) {
        Executor executor = m.f25939b;
        task.f(executor, rVar);
        task.d(executor, rVar);
        task.a(executor, rVar);
    }
}
