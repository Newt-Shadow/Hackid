package he;

import he.c;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class a implements e, c {
    @Override // he.c
    public final Object c(ge.d descriptor, int i10, ee.a deserializer, Object obj) {
        m.e(descriptor, "descriptor");
        m.e(deserializer, "deserializer");
        if (!deserializer.a().c() && !l()) {
            return h();
        }
        return s(deserializer, obj);
    }

    @Override // he.c
    public final long e(ge.d descriptor, int i10) {
        m.e(descriptor, "descriptor");
        return k();
    }

    @Override // he.e
    public abstract int f();

    @Override // he.e
    public abstract Object g(ee.a aVar);

    @Override // he.e
    public abstract String i();

    @Override // he.c
    public Object j(ge.d descriptor, int i10, ee.a deserializer, Object obj) {
        m.e(descriptor, "descriptor");
        m.e(deserializer, "deserializer");
        return s(deserializer, obj);
    }

    @Override // he.e
    public abstract long k();

    @Override // he.c
    public final int m(ge.d descriptor, int i10) {
        m.e(descriptor, "descriptor");
        return f();
    }

    @Override // he.c
    public boolean o() {
        return c.a.b(this);
    }

    @Override // he.c
    public final String p(ge.d descriptor, int i10) {
        m.e(descriptor, "descriptor");
        return i();
    }

    @Override // he.c
    public int q(ge.d dVar) {
        return c.a.a(this, dVar);
    }

    public Object s(ee.a deserializer, Object obj) {
        m.e(deserializer, "deserializer");
        return g(deserializer);
    }
}
