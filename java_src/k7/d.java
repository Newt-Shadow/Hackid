package k7;

import java.util.Set;
/* loaded from: classes.dex */
public interface d {
    default k8.b a(Class cls) {
        return e(e0.b(cls));
    }

    default Object b(e0 e0Var) {
        k8.b e10 = e(e0Var);
        if (e10 == null) {
            return null;
        }
        return e10.get();
    }

    default Set c(e0 e0Var) {
        return (Set) d(e0Var).get();
    }

    k8.b d(e0 e0Var);

    k8.b e(e0 e0Var);

    default Set f(Class cls) {
        return c(e0.b(cls));
    }

    k8.a g(e0 e0Var);

    default Object get(Class cls) {
        return b(e0.b(cls));
    }

    default k8.a h(Class cls) {
        return g(e0.b(cls));
    }
}
