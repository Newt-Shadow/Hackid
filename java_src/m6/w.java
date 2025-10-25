package m6;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
final class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Task f25965a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ x f25966b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(x xVar, Task task) {
        this.f25966b = xVar;
        this.f25965a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        n0 n0Var;
        n0 n0Var2;
        n0 n0Var3;
        c cVar;
        try {
            cVar = this.f25966b.f25968b;
            Task task = (Task) cVar.a(this.f25965a);
            if (task == null) {
                this.f25966b.c(new NullPointerException("Continuation returned null"));
                return;
            }
            x xVar = this.f25966b;
            Executor executor = m.f25939b;
            task.f(executor, xVar);
            task.d(executor, this.f25966b);
            task.a(executor, this.f25966b);
        } catch (j e10) {
            if (e10.getCause() instanceof Exception) {
                n0Var3 = this.f25966b.f25969c;
                n0Var3.s((Exception) e10.getCause());
                return;
            }
            n0Var2 = this.f25966b.f25969c;
            n0Var2.s(e10);
        } catch (Exception e11) {
            n0Var = this.f25966b.f25969c;
            n0Var.s(e11);
        }
    }
}
