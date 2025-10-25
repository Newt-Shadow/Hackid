package zd;

import ad.e;
import ad.i;
import bd.c;
import bd.d;
import id.Function2;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.g0;
import td.a0;
import td.a2;
import xc.l;
import xc.m;
import yd.b0;
import yd.m0;
/* loaded from: classes2.dex */
public abstract class b {
    public static final void a(Function2 function2, Object obj, e eVar) {
        Object invoke;
        Object e10;
        e a10 = h.a(eVar);
        try {
            i context = a10.getContext();
            Object i10 = m0.i(context, null);
            h.b(a10);
            if (!(function2 instanceof kotlin.coroutines.jvm.internal.a)) {
                invoke = c.d(function2, obj, a10);
            } else {
                invoke = ((Function2) g0.c(function2, 2)).invoke(obj, a10);
            }
            m0.f(context, i10);
            e10 = d.e();
            if (invoke != e10) {
                a10.resumeWith(l.b(invoke));
            }
        } catch (Throwable th) {
            l.a aVar = l.f32718b;
            a10.resumeWith(l.b(m.a(th)));
        }
    }

    public static final Object b(b0 b0Var, Object obj, Function2 function2) {
        a0 a0Var;
        Object e10;
        Object e11;
        Object e12;
        try {
            if (!(function2 instanceof kotlin.coroutines.jvm.internal.a)) {
                a0Var = c.d(function2, obj, b0Var);
            } else {
                a0Var = ((Function2) g0.c(function2, 2)).invoke(obj, b0Var);
            }
        } catch (Throwable th) {
            a0Var = new a0(th, false, 2, null);
        }
        e10 = d.e();
        if (a0Var == e10) {
            e12 = d.e();
            return e12;
        }
        Object s02 = b0Var.s0(a0Var);
        if (s02 == a2.f30623b) {
            e11 = d.e();
            return e11;
        } else if (!(s02 instanceof a0)) {
            return a2.h(s02);
        } else {
            throw ((a0) s02).f30621a;
        }
    }
}
