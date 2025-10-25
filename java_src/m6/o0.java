package m6;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class o0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ n0 f25948a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Callable f25949b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(n0 n0Var, Callable callable) {
        this.f25948a = n0Var;
        this.f25949b = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f25948a.t(this.f25949b.call());
        } catch (Exception e10) {
            this.f25948a.s(e10);
        } catch (Throwable th) {
            this.f25948a.s(new RuntimeException(th));
        }
    }
}
