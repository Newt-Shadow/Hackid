package td;

import xc.l;
/* loaded from: classes2.dex */
public abstract class y0 {
    public static final void a(x0 x0Var, int i10) {
        boolean z10;
        ad.e c10 = x0Var.c();
        if (i10 == 4) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10 && (c10 instanceof yd.h) && b(i10) == b(x0Var.f30701c)) {
            yd.h hVar = (yd.h) c10;
            i0 i0Var = hVar.f33259d;
            ad.i context = hVar.getContext();
            if (i0Var.t0(context)) {
                i0Var.q0(context, x0Var);
                return;
            } else {
                e(x0Var);
                return;
            }
        }
        d(x0Var, c10, z10);
    }

    public static final boolean b(int i10) {
        return i10 == 1 || i10 == 2;
    }

    public static final boolean c(int i10) {
        return i10 == 2;
    }

    public static final void d(x0 x0Var, ad.e eVar, boolean z10) {
        Object f10;
        q2 q2Var;
        boolean S0;
        Object h10 = x0Var.h();
        Throwable e10 = x0Var.e(h10);
        if (e10 != null) {
            l.a aVar = xc.l.f32718b;
            f10 = xc.m.a(e10);
        } else {
            l.a aVar2 = xc.l.f32718b;
            f10 = x0Var.f(h10);
        }
        Object b10 = xc.l.b(f10);
        if (z10) {
            kotlin.jvm.internal.m.c(eVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
            yd.h hVar = (yd.h) eVar;
            ad.e eVar2 = hVar.f33260e;
            Object obj = hVar.f33262g;
            ad.i context = eVar2.getContext();
            Object i10 = yd.m0.i(context, obj);
            if (i10 != yd.m0.f33277a) {
                q2Var = g0.m(eVar2, context, i10);
            } else {
                q2Var = null;
            }
            try {
                hVar.f33260e.resumeWith(b10);
                xc.t tVar = xc.t.f32733a;
                if (q2Var != null) {
                    if (!S0) {
                        return;
                    }
                }
                return;
            } finally {
                if (q2Var == null || q2Var.S0()) {
                    yd.m0.f(context, i10);
                }
            }
        }
        eVar.resumeWith(b10);
    }

    private static final void e(x0 x0Var) {
        d1 b10 = o2.f30679a.b();
        if (b10.Z0()) {
            b10.V0(x0Var);
            return;
        }
        b10.X0(true);
        try {
            d(x0Var, x0Var.c(), true);
            do {
            } while (b10.c1());
        } finally {
            try {
            } finally {
            }
        }
    }
}
