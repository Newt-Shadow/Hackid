package xd;

import ad.i;
import id.Function2;
import td.t1;
import yd.b0;
/* loaded from: classes2.dex */
public abstract class r {
    public static final void b(final o oVar, ad.i iVar) {
        if (((Number) iVar.k(0, new Function2() { // from class: xd.q
            @Override // id.Function2
            public final Object invoke(Object obj, Object obj2) {
                int c10;
                c10 = r.c(o.this, ((Integer) obj).intValue(), (i.b) obj2);
                return Integer.valueOf(c10);
            }
        })).intValue() == oVar.f32764c) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + oVar.f32763b + ",\n\t\tbut emission happened in " + iVar + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int c(o oVar, int i10, i.b bVar) {
        i.c key = bVar.getKey();
        i.b a10 = oVar.f32763b.a(key);
        if (key != t1.f30695t0) {
            if (bVar != a10) {
                return Integer.MIN_VALUE;
            }
            return i10 + 1;
        }
        t1 t1Var = (t1) a10;
        kotlin.jvm.internal.m.c(bVar, "null cannot be cast to non-null type kotlinx.coroutines.Job");
        t1 d10 = d((t1) bVar, t1Var);
        if (d10 == t1Var) {
            if (t1Var != null) {
                return i10 + 1;
            }
            return i10;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + d10 + ", expected child of " + t1Var + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
    }

    public static final t1 d(t1 t1Var, t1 t1Var2) {
        while (t1Var != null) {
            if (t1Var == t1Var2) {
                return t1Var;
            }
            if (!(t1Var instanceof b0)) {
                return t1Var;
            }
            t1Var = ((b0) t1Var).e0();
        }
        return null;
    }
}
