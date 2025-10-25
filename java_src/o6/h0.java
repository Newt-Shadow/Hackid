package o6;

import java.util.Comparator;
/* loaded from: classes.dex */
public abstract class h0 implements Comparator {
    public static h0 a(Comparator comparator) {
        if (comparator instanceof h0) {
            return (h0) comparator;
        }
        return new j(comparator);
    }

    public static h0 b() {
        return e0.f27424a;
    }

    public h0 c(n6.g gVar) {
        return new g(gVar, this);
    }

    @Override // java.util.Comparator
    public abstract int compare(Object obj, Object obj2);

    public h0 d() {
        return new n0(this);
    }
}
