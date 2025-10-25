package td;
/* loaded from: classes2.dex */
public interface l extends ad.e {

    /* loaded from: classes2.dex */
    public static final class a {
        public static /* synthetic */ boolean a(l lVar, Throwable th, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    th = null;
                }
                return lVar.o(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }
    }

    void A(Object obj);

    Object d(Object obj, Object obj2, id.p pVar);

    void i(i0 i0Var, Object obj);

    void l(id.l lVar);

    boolean o(Throwable th);

    void r(Object obj, id.p pVar);
}
