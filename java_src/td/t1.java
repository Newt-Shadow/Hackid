package td;

import ad.i;
import id.Function2;
import java.util.concurrent.CancellationException;
/* loaded from: classes2.dex */
public interface t1 extends i.b {

    /* renamed from: t0  reason: collision with root package name */
    public static final b f30695t0 = b.f30696a;

    /* loaded from: classes2.dex */
    public static final class a {
        public static /* synthetic */ void a(t1 t1Var, CancellationException cancellationException, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    cancellationException = null;
                }
                t1Var.b(cancellationException);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        public static Object b(t1 t1Var, Object obj, Function2 function2) {
            return i.b.a.a(t1Var, obj, function2);
        }

        public static i.b c(t1 t1Var, i.c cVar) {
            return i.b.a.b(t1Var, cVar);
        }

        public static ad.i d(t1 t1Var, i.c cVar) {
            return i.b.a.c(t1Var, cVar);
        }

        public static ad.i e(t1 t1Var, ad.i iVar) {
            return i.b.a.d(t1Var, iVar);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements i.c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ b f30696a = new b();

        private b() {
        }
    }

    boolean X();

    void b(CancellationException cancellationException);

    boolean isActive();

    boolean isCancelled();

    a1 o0(boolean z10, boolean z11, id.l lVar);

    a1 q(id.l lVar);

    boolean start();

    CancellationException u();

    s x(u uVar);
}
