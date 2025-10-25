package m5;
/* loaded from: classes.dex */
final class c1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ k6.l f25766a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ e1 f25767b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c1(e1 e1Var, k6.l lVar) {
        this.f25767b = e1Var;
        this.f25766a = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        e1.g1(this.f25767b, this.f25766a);
    }
}
