package td;

import ad.i;
/* loaded from: classes2.dex */
public abstract class v0 {
    public static final Object a(long j10, ad.e eVar) {
        ad.e c10;
        Object e10;
        Object e11;
        if (j10 > 0) {
            c10 = bd.c.c(eVar);
            n nVar = new n(c10, 1);
            nVar.E();
            if (j10 < Long.MAX_VALUE) {
                b(nVar.getContext()).h(j10, nVar);
            }
            Object x10 = nVar.x();
            e10 = bd.d.e();
            if (x10 == e10) {
                kotlin.coroutines.jvm.internal.h.c(eVar);
            }
            e11 = bd.d.e();
            if (x10 == e11) {
                return x10;
            }
            return xc.t.f32733a;
        }
        return xc.t.f32733a;
    }

    public static final u0 b(ad.i iVar) {
        u0 u0Var;
        i.b a10 = iVar.a(ad.f.f293h0);
        if (a10 instanceof u0) {
            u0Var = (u0) a10;
        } else {
            u0Var = null;
        }
        if (u0Var == null) {
            return r0.a();
        }
        return u0Var;
    }
}
