package td;
/* loaded from: classes2.dex */
public abstract class x {
    public static final v a(t1 t1Var) {
        return new w(t1Var);
    }

    public static /* synthetic */ v b(t1 t1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            t1Var = null;
        }
        return a(t1Var);
    }

    public static final boolean c(v vVar, Object obj) {
        Throwable d10 = xc.l.d(obj);
        if (d10 == null) {
            return vVar.H(obj);
        }
        return vVar.E(d10);
    }
}
