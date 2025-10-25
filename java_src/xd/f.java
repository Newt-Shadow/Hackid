package xd;

import id.Function2;
import kotlin.jvm.internal.g0;
import yd.m0;
/* loaded from: classes2.dex */
public abstract class f {
    public static final /* synthetic */ wd.e a(wd.e eVar, ad.i iVar) {
        return d(eVar, iVar);
    }

    public static final Object b(ad.i iVar, Object obj, Object obj2, Function2 function2, ad.e eVar) {
        Object invoke;
        Object e10;
        Object i10 = m0.i(iVar, obj2);
        try {
            t tVar = new t(eVar, iVar);
            if (!(function2 instanceof kotlin.coroutines.jvm.internal.a)) {
                invoke = bd.c.d(function2, obj, tVar);
            } else {
                invoke = ((Function2) g0.c(function2, 2)).invoke(obj, tVar);
            }
            m0.f(iVar, i10);
            e10 = bd.d.e();
            if (invoke == e10) {
                kotlin.coroutines.jvm.internal.h.c(eVar);
            }
            return invoke;
        } catch (Throwable th) {
            m0.f(iVar, i10);
            throw th;
        }
    }

    public static /* synthetic */ Object c(ad.i iVar, Object obj, Object obj2, Function2 function2, ad.e eVar, int i10, Object obj3) {
        if ((i10 & 4) != 0) {
            obj2 = m0.g(iVar);
        }
        return b(iVar, obj, obj2, function2, eVar);
    }

    public static final wd.e d(wd.e eVar, ad.i iVar) {
        if (!(eVar instanceof s)) {
            return new u(eVar, iVar);
        }
        return eVar;
    }
}
