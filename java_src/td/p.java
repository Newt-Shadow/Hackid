package td;
/* loaded from: classes2.dex */
public abstract class p {
    public static final void a(l lVar, a1 a1Var) {
        c(lVar, new b1(a1Var));
    }

    public static final n b(ad.e eVar) {
        if (!(eVar instanceof yd.h)) {
            return new n(eVar, 1);
        }
        n k10 = ((yd.h) eVar).k();
        if (k10 != null) {
            if (!k10.O()) {
                k10 = null;
            }
            if (k10 != null) {
                return k10;
            }
        }
        return new n(eVar, 2);
    }

    public static final void c(l lVar, k kVar) {
        if (lVar instanceof n) {
            ((n) lVar).H(kVar);
            return;
        }
        throw new UnsupportedOperationException("third-party implementation of CancellableContinuation is not supported");
    }
}
