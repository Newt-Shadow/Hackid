package wd;

import td.t1;
/* loaded from: classes2.dex */
final class q implements u, d, xd.k {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ u f32113a;

    /* renamed from: b  reason: collision with root package name */
    private final t1 f32114b;

    public q(u uVar, t1 t1Var) {
        this.f32113a = uVar;
        this.f32114b = t1Var;
    }

    @Override // xd.k
    public d a(ad.i iVar, int i10, vd.a aVar) {
        return w.d(this, iVar, i10, aVar);
    }

    @Override // wd.s, wd.d
    public Object collect(e eVar, ad.e eVar2) {
        return this.f32113a.collect(eVar, eVar2);
    }

    @Override // wd.u
    public Object getValue() {
        return this.f32113a.getValue();
    }
}
