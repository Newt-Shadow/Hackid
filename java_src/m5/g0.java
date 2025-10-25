package m5;

import com.google.android.gms.common.api.a;
/* loaded from: classes.dex */
final class g0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h0 f25801a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(h0 h0Var) {
        this.f25801a = h0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.f fVar;
        a.f fVar2;
        i0 i0Var = this.f25801a.f25803a;
        fVar = i0Var.f25805g;
        fVar2 = i0Var.f25805g;
        fVar.c(fVar2.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
