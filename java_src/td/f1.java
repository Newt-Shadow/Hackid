package td;

import java.util.concurrent.locks.LockSupport;
import td.e1;
/* loaded from: classes2.dex */
public abstract class f1 extends d1 {
    protected abstract Thread e1();

    /* JADX INFO: Access modifiers changed from: protected */
    public void f1(long j10, e1.b bVar) {
        q0.f30683i.t1(j10, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g1() {
        Thread e12 = e1();
        if (Thread.currentThread() != e12) {
            c.a();
            LockSupport.unpark(e12);
        }
    }
}
