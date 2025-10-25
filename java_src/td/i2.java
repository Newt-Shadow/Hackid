package td;

import xc.l;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class i2 extends y1 {

    /* renamed from: e  reason: collision with root package name */
    private final n f30654e;

    public i2(n nVar) {
        this.f30654e = nVar;
    }

    @Override // td.y1
    public boolean u() {
        return false;
    }

    @Override // td.y1
    public void v(Throwable th) {
        Object g02 = t().g0();
        if (g02 instanceof a0) {
            n nVar = this.f30654e;
            l.a aVar = xc.l.f32718b;
            nVar.resumeWith(xc.l.b(xc.m.a(((a0) g02).f30621a)));
            return;
        }
        n nVar2 = this.f30654e;
        l.a aVar2 = xc.l.f32718b;
        nVar2.resumeWith(xc.l.b(a2.h(g02)));
    }
}
