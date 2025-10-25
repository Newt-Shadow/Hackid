package xd;

import vd.x;
/* loaded from: classes2.dex */
public final class s implements wd.e {

    /* renamed from: a  reason: collision with root package name */
    private final x f32770a;

    public s(x xVar) {
        this.f32770a = xVar;
    }

    @Override // wd.e
    public Object emit(Object obj, ad.e eVar) {
        Object e10;
        Object y10 = this.f32770a.y(obj, eVar);
        e10 = bd.d.e();
        if (y10 == e10) {
            return y10;
        }
        return xc.t.f32733a;
    }
}
