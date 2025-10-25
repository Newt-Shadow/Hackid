package vd;

import td.k0;
import vd.x;
/* loaded from: classes2.dex */
final class u extends h implements v {
    public u(ad.i iVar, g gVar) {
        super(iVar, gVar, true, true);
    }

    @Override // td.a
    protected void P0(Throwable th, boolean z10) {
        if (!S0().m(th) && !z10) {
            k0.a(getContext(), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // td.a
    /* renamed from: T0 */
    public void Q0(xc.t tVar) {
        x.a.a(S0(), null, 1, null);
    }

    @Override // td.a, td.z1, td.t1
    public boolean isActive() {
        return super.isActive();
    }
}
