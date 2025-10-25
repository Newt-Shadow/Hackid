package m6;
/* loaded from: classes.dex */
final class u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Task f25960a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ v f25961b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(v vVar, Task task) {
        this.f25961b = vVar;
        this.f25960a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        n0 n0Var;
        n0 n0Var2;
        n0 n0Var3;
        c cVar;
        n0 n0Var4;
        n0 n0Var5;
        if (this.f25960a.n()) {
            n0Var5 = this.f25961b.f25964c;
            n0Var5.u();
            return;
        }
        try {
            cVar = this.f25961b.f25963b;
            Object a10 = cVar.a(this.f25960a);
            n0Var4 = this.f25961b.f25964c;
            n0Var4.t(a10);
        } catch (j e10) {
            if (e10.getCause() instanceof Exception) {
                n0Var3 = this.f25961b.f25964c;
                n0Var3.s((Exception) e10.getCause());
                return;
            }
            n0Var2 = this.f25961b.f25964c;
            n0Var2.s(e10);
        } catch (Exception e11) {
            n0Var = this.f25961b.f25964c;
            n0Var.s(e11);
        }
    }
}
