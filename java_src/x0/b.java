package x0;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import x0.a;
/* loaded from: classes.dex */
public final class b extends a {
    public b() {
        this(null, 1, null);
    }

    @Override // x0.a
    public Object a(a.b key) {
        m.e(key, "key");
        return b().get(key);
    }

    public final void c(a.b key, Object obj) {
        m.e(key, "key");
        b().put(key, obj);
    }

    public b(a initialExtras) {
        m.e(initialExtras, "initialExtras");
        b().putAll(initialExtras.b());
    }

    public /* synthetic */ b(a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? a.C0362a.f32165b : aVar);
    }
}
