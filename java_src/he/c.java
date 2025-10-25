package he;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public interface c {

    /* loaded from: classes2.dex */
    public static final class a {
        public static int a(c cVar, ge.d descriptor) {
            m.e(descriptor, "descriptor");
            return -1;
        }

        public static boolean b(c cVar) {
            return false;
        }

        public static /* synthetic */ Object c(c cVar, ge.d dVar, int i10, ee.a aVar, Object obj, int i11, Object obj2) {
            if (obj2 == null) {
                if ((i11 & 8) != 0) {
                    obj = null;
                }
                return cVar.j(dVar, i10, aVar, obj);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeSerializableElement");
        }
    }

    void a(ge.d dVar);

    Object c(ge.d dVar, int i10, ee.a aVar, Object obj);

    long e(ge.d dVar, int i10);

    Object j(ge.d dVar, int i10, ee.a aVar, Object obj);

    int m(ge.d dVar, int i10);

    int n(ge.d dVar);

    boolean o();

    String p(ge.d dVar, int i10);

    int q(ge.d dVar);
}
