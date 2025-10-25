package td;

import ad.f;
import id.Function2;
/* loaded from: classes2.dex */
public abstract /* synthetic */ class i {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [td.a, java.lang.Object, td.s0] */
    public static final s0 a(l0 l0Var, ad.i iVar, n0 n0Var, Function2 function2) {
        b2 b2Var;
        ad.i k10 = g0.k(l0Var, iVar);
        if (n0Var.f()) {
            b2Var = new b2(k10, function2);
        } else {
            b2Var = new t0(k10, true);
        }
        b2Var.R0(n0Var, b2Var, function2);
        return b2Var;
    }

    public static /* synthetic */ s0 b(l0 l0Var, ad.i iVar, n0 n0Var, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            iVar = ad.j.f295a;
        }
        if ((i10 & 2) != 0) {
            n0Var = n0.f30669a;
        }
        return g.a(l0Var, iVar, n0Var, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [td.a, java.lang.Object, td.t1] */
    public static final t1 c(l0 l0Var, ad.i iVar, n0 n0Var, Function2 function2) {
        c2 c2Var;
        ad.i k10 = g0.k(l0Var, iVar);
        if (n0Var.f()) {
            c2Var = new c2(k10, function2);
        } else {
            c2Var = new k2(k10, true);
        }
        c2Var.R0(n0Var, c2Var, function2);
        return c2Var;
    }

    public static /* synthetic */ t1 d(l0 l0Var, ad.i iVar, n0 n0Var, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            iVar = ad.j.f295a;
        }
        if ((i10 & 2) != 0) {
            n0Var = n0.f30669a;
        }
        return g.c(l0Var, iVar, n0Var, function2);
    }

    public static final Object e(ad.i iVar, Function2 function2, ad.e eVar) {
        Object S0;
        Object e10;
        ad.i context = eVar.getContext();
        ad.i j10 = g0.j(context, iVar);
        w1.d(j10);
        if (j10 == context) {
            yd.b0 b0Var = new yd.b0(j10, eVar);
            S0 = zd.b.b(b0Var, b0Var, function2);
        } else {
            f.b bVar = ad.f.f293h0;
            if (kotlin.jvm.internal.m.a(j10.a(bVar), context.a(bVar))) {
                q2 q2Var = new q2(j10, eVar);
                ad.i context2 = q2Var.getContext();
                Object i10 = yd.m0.i(context2, null);
                try {
                    Object b10 = zd.b.b(q2Var, q2Var, function2);
                    yd.m0.f(context2, i10);
                    S0 = b10;
                } catch (Throwable th) {
                    yd.m0.f(context2, i10);
                    throw th;
                }
            } else {
                w0 w0Var = new w0(j10, eVar);
                zd.a.c(function2, w0Var, w0Var);
                S0 = w0Var.S0();
            }
        }
        e10 = bd.d.e();
        if (S0 == e10) {
            kotlin.coroutines.jvm.internal.h.c(eVar);
        }
        return S0;
    }
}
