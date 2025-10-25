package yd;

import java.util.concurrent.CancellationException;
import td.d1;
import td.o2;
import td.q2;
import td.t1;
import xc.l;
/* loaded from: classes2.dex */
public abstract class i {

    /* renamed from: a */
    private static final f0 f33264a = new f0("UNDEFINED");

    /* renamed from: b */
    public static final f0 f33265b = new f0("REUSABLE_CLAIMED");

    public static final /* synthetic */ f0 a() {
        return f33264a;
    }

    public static final void b(ad.e eVar, Object obj) {
        boolean z10;
        q2 q2Var;
        if (eVar instanceof h) {
            h hVar = (h) eVar;
            Object b10 = td.c0.b(obj);
            if (hVar.f33259d.t0(hVar.getContext())) {
                hVar.f33261f = b10;
                hVar.f30701c = 1;
                hVar.f33259d.q0(hVar.getContext(), hVar);
                return;
            }
            d1 b11 = o2.f30679a.b();
            if (b11.Z0()) {
                hVar.f33261f = b10;
                hVar.f30701c = 1;
                b11.V0(hVar);
                return;
            }
            b11.X0(true);
            try {
                t1 t1Var = (t1) hVar.getContext().a(t1.f30695t0);
                if (t1Var != null && !t1Var.isActive()) {
                    CancellationException u10 = t1Var.u();
                    hVar.a(b10, u10);
                    l.a aVar = xc.l.f32718b;
                    hVar.resumeWith(xc.l.b(xc.m.a(u10)));
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    ad.e eVar2 = hVar.f33260e;
                    Object obj2 = hVar.f33262g;
                    ad.i context = eVar2.getContext();
                    Object i10 = m0.i(context, obj2);
                    if (i10 != m0.f33277a) {
                        q2Var = td.g0.m(eVar2, context, i10);
                    } else {
                        q2Var = null;
                    }
                    hVar.f33260e.resumeWith(obj);
                    xc.t tVar = xc.t.f32733a;
                    if (q2Var == null || q2Var.S0()) {
                        m0.f(context, i10);
                    }
                }
                do {
                } while (b11.c1());
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        eVar.resumeWith(obj);
    }
}
