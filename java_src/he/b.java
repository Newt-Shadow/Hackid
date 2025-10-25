package he;

import he.f;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class b implements f, d {
    @Override // he.d
    public void c(ge.d descriptor, int i10, ee.e serializer, Object obj) {
        m.e(descriptor, "descriptor");
        m.e(serializer, "serializer");
        if (s(descriptor, i10)) {
            k(serializer, obj);
        }
    }

    @Override // he.d
    public final void e(ge.d descriptor, int i10, String value) {
        m.e(descriptor, "descriptor");
        m.e(value, "value");
        if (s(descriptor, i10)) {
            r(value);
        }
    }

    @Override // he.d
    public void f(ge.d descriptor, int i10, ee.e serializer, Object obj) {
        m.e(descriptor, "descriptor");
        m.e(serializer, "serializer");
        if (s(descriptor, i10)) {
            t(serializer, obj);
        }
    }

    @Override // he.f
    public d h(ge.d dVar, int i10) {
        return f.a.a(this, dVar, i10);
    }

    @Override // he.d
    public final void i(ge.d descriptor, int i10, int i11) {
        m.e(descriptor, "descriptor");
        if (s(descriptor, i10)) {
            o(i11);
        }
    }

    @Override // he.f
    public abstract void k(ee.e eVar, Object obj);

    @Override // he.f
    public void l() {
        f.a.b(this);
    }

    @Override // he.f
    public abstract void o(int i10);

    @Override // he.f
    public abstract void p(long j10);

    @Override // he.d
    public final void q(ge.d descriptor, int i10, long j10) {
        m.e(descriptor, "descriptor");
        if (s(descriptor, i10)) {
            p(j10);
        }
    }

    @Override // he.f
    public abstract void r(String str);

    public abstract boolean s(ge.d dVar, int i10);

    public void t(ee.e eVar, Object obj) {
        f.a.c(this, eVar, obj);
    }
}
