package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Q4 {

    /* renamed from: a  reason: collision with root package name */
    public final Qb f18804a;

    public Q4() {
        this(C1665za.j().k());
    }

    public static V4 a(O4 o42) {
        return new V4(new T4(o42), o42);
    }

    public Q4(Qb qb2) {
        this.f18804a = qb2;
    }

    public final Sm a(O4 o42, C1353mm c1353mm) {
        Sm sm = new Sm(o42, new Gg(c1353mm));
        Qb qb2 = this.f18804a;
        synchronized (qb2) {
            qb2.f18816c.add(sm);
        }
        return sm;
    }
}
