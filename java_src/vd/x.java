package vd;
/* loaded from: classes2.dex */
public interface x {

    /* loaded from: classes2.dex */
    public static final class a {
        public static /* synthetic */ boolean a(x xVar, Throwable th, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    th = null;
                }
                return xVar.m(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
        }
    }

    void h(id.l lVar);

    boolean m(Throwable th);

    Object t(Object obj);

    Object y(Object obj, ad.e eVar);

    boolean z();
}
