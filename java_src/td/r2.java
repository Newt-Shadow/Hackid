package td;

import ad.i;
import id.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r2 implements i.b, i.c {

    /* renamed from: a  reason: collision with root package name */
    public static final r2 f30692a = new r2();

    private r2() {
    }

    @Override // ad.i.b, ad.i
    public i.b a(i.c cVar) {
        return i.b.a.b(this, cVar);
    }

    @Override // ad.i
    public ad.i e(ad.i iVar) {
        return i.b.a.d(this, iVar);
    }

    @Override // ad.i
    public ad.i g(i.c cVar) {
        return i.b.a.c(this, cVar);
    }

    @Override // ad.i.b
    public i.c getKey() {
        return this;
    }

    @Override // ad.i
    public Object k(Object obj, Function2 function2) {
        return i.b.a.a(this, obj, function2);
    }
}
