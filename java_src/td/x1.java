package td;

import java.util.concurrent.CancellationException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class x1 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public /* synthetic */ class a extends kotlin.jvm.internal.k implements id.l {
        a(Object obj) {
            super(1, obj, y1.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0);
        }

        public final void f(Throwable th) {
            ((y1) this.receiver).v(th);
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            f((Throwable) obj);
            return xc.t.f32733a;
        }
    }

    public static final y a(t1 t1Var) {
        return new v1(t1Var);
    }

    public static /* synthetic */ y b(t1 t1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            t1Var = null;
        }
        return w1.a(t1Var);
    }

    public static final void c(ad.i iVar, CancellationException cancellationException) {
        t1 t1Var = (t1) iVar.a(t1.f30695t0);
        if (t1Var != null) {
            t1Var.b(cancellationException);
        }
    }

    public static final void d(ad.i iVar) {
        t1 t1Var = (t1) iVar.a(t1.f30695t0);
        if (t1Var != null) {
            w1.e(t1Var);
        }
    }

    public static final void e(t1 t1Var) {
        if (t1Var.isActive()) {
            return;
        }
        throw t1Var.u();
    }

    public static final a1 f(t1 t1Var, boolean z10, y1 y1Var) {
        if (t1Var instanceof z1) {
            return ((z1) t1Var).n0(z10, y1Var);
        }
        return t1Var.o0(y1Var.u(), z10, new a(y1Var));
    }

    public static /* synthetic */ a1 g(t1 t1Var, boolean z10, y1 y1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return w1.f(t1Var, z10, y1Var);
    }
}
