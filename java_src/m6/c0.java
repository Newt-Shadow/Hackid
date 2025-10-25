package m6;
/* loaded from: classes.dex */
final class c0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Task f25918a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d0 f25919b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(d0 d0Var, Task task) {
        this.f25919b = d0Var;
        this.f25918a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        g gVar;
        g gVar2;
        obj = this.f25919b.f25921b;
        synchronized (obj) {
            d0 d0Var = this.f25919b;
            gVar = d0Var.f25922c;
            if (gVar != null) {
                gVar2 = d0Var.f25922c;
                gVar2.c((Exception) n5.q.k(this.f25918a.k()));
            }
        }
    }
}
