package m6;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
final class g0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Task f25928a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ h0 f25929b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(h0 h0Var, Task task) {
        this.f25929b = h0Var;
        this.f25928a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k kVar;
        try {
            kVar = this.f25929b.f25931b;
            Task a10 = kVar.a(this.f25928a.l());
            if (a10 == null) {
                this.f25929b.c(new NullPointerException("Continuation returned null"));
                return;
            }
            h0 h0Var = this.f25929b;
            Executor executor = m.f25939b;
            a10.f(executor, h0Var);
            a10.d(executor, this.f25929b);
            a10.a(executor, this.f25929b);
        } catch (CancellationException unused) {
            this.f25929b.a();
        } catch (j e10) {
            if (e10.getCause() instanceof Exception) {
                this.f25929b.c((Exception) e10.getCause());
            } else {
                this.f25929b.c(e10);
            }
        } catch (Exception e11) {
            this.f25929b.c(e11);
        }
    }
}
