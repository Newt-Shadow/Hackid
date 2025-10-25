package wd;

import id.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class c extends xd.e {

    /* renamed from: d  reason: collision with root package name */
    private final Function2 f32039d;

    public /* synthetic */ c(Function2 function2, ad.i iVar, int i10, vd.a aVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(function2, (i11 & 2) != 0 ? ad.j.f295a : iVar, (i11 & 4) != 0 ? -2 : i10, (i11 & 8) != 0 ? vd.a.f31354a : aVar);
    }

    static /* synthetic */ Object j(c cVar, vd.v vVar, ad.e eVar) {
        Object e10;
        Object invoke = cVar.f32039d.invoke(vVar, eVar);
        e10 = bd.d.e();
        if (invoke == e10) {
            return invoke;
        }
        return xc.t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // xd.e
    public Object e(vd.v vVar, ad.e eVar) {
        return j(this, vVar, eVar);
    }

    @Override // xd.e
    protected xd.e f(ad.i iVar, int i10, vd.a aVar) {
        return new c(this.f32039d, iVar, i10, aVar);
    }

    @Override // xd.e
    public String toString() {
        return "block[" + this.f32039d + "] -> " + super.toString();
    }

    public c(Function2 function2, ad.i iVar, int i10, vd.a aVar) {
        super(iVar, i10, aVar);
        this.f32039d = function2;
    }
}
