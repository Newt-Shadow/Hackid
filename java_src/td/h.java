package td;

import id.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class h {
    public static final Object a(ad.i iVar, Function2 function2) {
        d1 d1Var;
        d1 a10;
        ad.i k10;
        Thread currentThread = Thread.currentThread();
        ad.f fVar = (ad.f) iVar.a(ad.f.f293h0);
        if (fVar == null) {
            a10 = o2.f30679a.b();
            k10 = g0.k(n1.f30676a, iVar.e(a10));
        } else {
            d1 d1Var2 = null;
            if (fVar instanceof d1) {
                d1Var = (d1) fVar;
            } else {
                d1Var = null;
            }
            if (d1Var != null) {
                if (d1Var.d1()) {
                    d1Var2 = d1Var;
                }
                if (d1Var2 != null) {
                    a10 = d1Var2;
                    k10 = g0.k(n1.f30676a, iVar);
                }
            }
            a10 = o2.f30679a.a();
            k10 = g0.k(n1.f30676a, iVar);
        }
        e eVar = new e(k10, currentThread, a10);
        eVar.R0(n0.f30669a, eVar, function2);
        return eVar.S0();
    }

    public static /* synthetic */ Object b(ad.i iVar, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            iVar = ad.j.f295a;
        }
        return g.e(iVar, function2);
    }
}
