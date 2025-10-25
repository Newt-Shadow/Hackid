package wd;

import id.Function2;
/* loaded from: classes2.dex */
final class r extends a {

    /* renamed from: a  reason: collision with root package name */
    private final Function2 f32115a;

    public r(Function2 function2) {
        this.f32115a = function2;
    }

    @Override // wd.a
    public Object c(e eVar, ad.e eVar2) {
        Object e10;
        Object invoke = this.f32115a.invoke(eVar, eVar2);
        e10 = bd.d.e();
        if (invoke == e10) {
            return invoke;
        }
        return xc.t.f32733a;
    }
}
