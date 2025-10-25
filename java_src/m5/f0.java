package m5;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f25797a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ i0 f25798b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(i0 i0Var, int i10) {
        this.f25798b = i0Var;
        this.f25797a = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f25798b.l(this.f25797a);
    }
}
