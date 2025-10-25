package td;

import id.Function2;
import java.util.concurrent.CancellationException;
/* loaded from: classes2.dex */
public abstract class m0 {
    public static final l0 a(ad.i iVar) {
        if (iVar.a(t1.f30695t0) == null) {
            iVar = iVar.e(w1.b(null, 1, null));
        }
        return new yd.d(iVar);
    }

    public static final void b(l0 l0Var, CancellationException cancellationException) {
        t1 t1Var = (t1) l0Var.n().a(t1.f30695t0);
        if (t1Var != null) {
            t1Var.b(cancellationException);
            return;
        }
        throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + l0Var).toString());
    }

    public static /* synthetic */ void c(l0 l0Var, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        b(l0Var, cancellationException);
    }

    public static final Object d(Function2 function2, ad.e eVar) {
        Object e10;
        yd.b0 b0Var = new yd.b0(eVar.getContext(), eVar);
        Object b10 = zd.b.b(b0Var, b0Var, function2);
        e10 = bd.d.e();
        if (b10 == e10) {
            kotlin.coroutines.jvm.internal.h.c(eVar);
        }
        return b10;
    }

    public static final void e(l0 l0Var) {
        w1.d(l0Var.n());
    }
}
