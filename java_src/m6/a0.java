package m6;
/* loaded from: classes.dex */
final class a0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Task f25912a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ b0 f25913b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(b0 b0Var, Task task) {
        this.f25913b = b0Var;
        this.f25912a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        f fVar;
        f fVar2;
        obj = this.f25913b.f25916b;
        synchronized (obj) {
            b0 b0Var = this.f25913b;
            fVar = b0Var.f25917c;
            if (fVar != null) {
                fVar2 = b0Var.f25917c;
                fVar2.onComplete(this.f25912a);
            }
        }
    }
}
