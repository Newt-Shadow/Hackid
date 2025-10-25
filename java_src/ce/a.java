package ce;
/* loaded from: classes2.dex */
public interface a {

    /* renamed from: ce.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0093a {
        public static /* synthetic */ boolean a(a aVar, Object obj, int i10, Object obj2) {
            if (obj2 == null) {
                if ((i10 & 1) != 0) {
                    obj = null;
                }
                return aVar.a(obj);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryLock");
        }

        public static /* synthetic */ void b(a aVar, Object obj, int i10, Object obj2) {
            if (obj2 == null) {
                if ((i10 & 1) != 0) {
                    obj = null;
                }
                aVar.d(obj);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unlock");
        }
    }

    boolean a(Object obj);

    Object b(Object obj, ad.e eVar);

    boolean c();

    void d(Object obj);
}
