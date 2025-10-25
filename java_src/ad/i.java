package ad;

import ad.f;
import ad.i;
import id.Function2;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public interface i {

    /* loaded from: classes2.dex */
    public static final class a {
        public static i b(i iVar, i context) {
            m.e(context, "context");
            if (context != j.f295a) {
                return (i) context.k(iVar, new Function2() { // from class: ad.h
                    @Override // id.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        i c10;
                        c10 = i.a.c((i) obj, (i.b) obj2);
                        return c10;
                    }
                });
            }
            return iVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static i c(i acc, b element) {
            d dVar;
            m.e(acc, "acc");
            m.e(element, "element");
            i g10 = acc.g(element.getKey());
            j jVar = j.f295a;
            if (g10 != jVar) {
                f.b bVar = f.f293h0;
                f fVar = (f) g10.a(bVar);
                if (fVar == null) {
                    dVar = new d(g10, element);
                } else {
                    i g11 = g10.g(bVar);
                    if (g11 == jVar) {
                        return new d(element, fVar);
                    }
                    dVar = new d(new d(g11, element), fVar);
                }
                return dVar;
            }
            return element;
        }
    }

    /* loaded from: classes2.dex */
    public interface b extends i {

        /* loaded from: classes2.dex */
        public static final class a {
            public static Object a(b bVar, Object obj, Function2 operation) {
                m.e(operation, "operation");
                return operation.invoke(obj, bVar);
            }

            public static b b(b bVar, c key) {
                m.e(key, "key");
                if (m.a(bVar.getKey(), key)) {
                    m.c(bVar, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get");
                    return bVar;
                }
                return null;
            }

            public static i c(b bVar, c key) {
                m.e(key, "key");
                if (m.a(bVar.getKey(), key)) {
                    return j.f295a;
                }
                return bVar;
            }

            public static i d(b bVar, i context) {
                m.e(context, "context");
                return a.b(bVar, context);
            }
        }

        @Override // ad.i
        b a(c cVar);

        c getKey();
    }

    /* loaded from: classes2.dex */
    public interface c {
    }

    b a(c cVar);

    i e(i iVar);

    i g(c cVar);

    Object k(Object obj, Function2 function2);
}
