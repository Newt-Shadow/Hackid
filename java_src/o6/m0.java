package o6;

import java.io.Serializable;
/* loaded from: classes.dex */
final class m0 extends h0 implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    static final m0 f27462a = new m0();

    private m0() {
    }

    @Override // o6.h0
    public h0 d() {
        return h0.b();
    }

    @Override // o6.h0, java.util.Comparator
    /* renamed from: e */
    public int compare(Comparable comparable, Comparable comparable2) {
        n6.m.i(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public String toString() {
        return "Ordering.natural().reverse()";
    }
}
