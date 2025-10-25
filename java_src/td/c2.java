package td;

import id.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c2 extends k2 {

    /* renamed from: d  reason: collision with root package name */
    private final ad.e f30632d;

    public c2(ad.i iVar, Function2 function2) {
        super(iVar, false);
        ad.e a10;
        a10 = bd.c.a(function2, this, this);
        this.f30632d = a10;
    }

    @Override // td.z1
    protected void z0() {
        zd.a.b(this.f30632d, this);
    }
}
