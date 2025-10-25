package ad;

import ad.i;
import id.Function2;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class a implements i.b {

    /* renamed from: a  reason: collision with root package name */
    private final i.c f288a;

    public a(i.c key) {
        m.e(key, "key");
        this.f288a = key;
    }

    @Override // ad.i.b, ad.i
    public i.b a(i.c cVar) {
        return i.b.a.b(this, cVar);
    }

    @Override // ad.i
    public i e(i iVar) {
        return i.b.a.d(this, iVar);
    }

    @Override // ad.i
    public i g(i.c cVar) {
        return i.b.a.c(this, cVar);
    }

    @Override // ad.i.b
    public i.c getKey() {
        return this.f288a;
    }

    @Override // ad.i
    public Object k(Object obj, Function2 function2) {
        return i.b.a.a(this, obj, function2);
    }
}
