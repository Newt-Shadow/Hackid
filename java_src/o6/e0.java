package o6;

import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e0 extends h0 implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    static final e0 f27424a = new e0();

    private e0() {
    }

    @Override // o6.h0
    public h0 d() {
        return m0.f27462a;
    }

    @Override // o6.h0, java.util.Comparator
    /* renamed from: e */
    public int compare(Comparable comparable, Comparable comparable2) {
        n6.m.i(comparable);
        n6.m.i(comparable2);
        return comparable.compareTo(comparable2);
    }

    public String toString() {
        return "Ordering.natural()";
    }
}
