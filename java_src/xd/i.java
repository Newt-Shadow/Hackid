package xd;

import ad.i;
import id.Function2;
/* loaded from: classes2.dex */
public final class i implements ad.i {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ad.i f32755a;

    /* renamed from: b  reason: collision with root package name */
    public final Throwable f32756b;

    public i(Throwable th, ad.i iVar) {
        this.f32755a = iVar;
        this.f32756b = th;
    }

    @Override // ad.i
    public i.b a(i.c cVar) {
        return this.f32755a.a(cVar);
    }

    @Override // ad.i
    public ad.i e(ad.i iVar) {
        return this.f32755a.e(iVar);
    }

    @Override // ad.i
    public ad.i g(i.c cVar) {
        return this.f32755a.g(cVar);
    }

    @Override // ad.i
    public Object k(Object obj, Function2 function2) {
        return this.f32755a.k(obj, function2);
    }
}
