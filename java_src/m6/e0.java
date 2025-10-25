package m6;
/* loaded from: classes.dex */
final class e0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Task f25923a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ f0 f25924b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(f0 f0Var, Task task) {
        this.f25924b = f0Var;
        this.f25923a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        h hVar;
        h hVar2;
        obj = this.f25924b.f25926b;
        synchronized (obj) {
            f0 f0Var = this.f25924b;
            hVar = f0Var.f25927c;
            if (hVar != null) {
                hVar2 = f0Var.f25927c;
                hVar2.onSuccess(this.f25923a.l());
            }
        }
    }
}
