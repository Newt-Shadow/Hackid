package yd;

import ad.i;
import id.Function2;
import td.n2;
/* loaded from: classes2.dex */
public abstract class m0 {

    /* renamed from: a  reason: collision with root package name */
    public static final f0 f33277a = new f0("NO_THREAD_ELEMENTS");

    /* renamed from: b  reason: collision with root package name */
    private static final Function2 f33278b = new Function2() { // from class: yd.j0
        @Override // id.Function2
        public final Object invoke(Object obj, Object obj2) {
            Object d10;
            d10 = m0.d(obj, (i.b) obj2);
            return d10;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private static final Function2 f33279c = new Function2() { // from class: yd.k0
        @Override // id.Function2
        public final Object invoke(Object obj, Object obj2) {
            n2 e10;
            e10 = m0.e((n2) obj, (i.b) obj2);
            return e10;
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private static final Function2 f33280d = new Function2() { // from class: yd.l0
        @Override // id.Function2
        public final Object invoke(Object obj, Object obj2) {
            q0 h10;
            h10 = m0.h((q0) obj, (i.b) obj2);
            return h10;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object d(Object obj, i.b bVar) {
        Integer num;
        int i10;
        if (bVar instanceof n2) {
            if (obj instanceof Integer) {
                num = (Integer) obj;
            } else {
                num = null;
            }
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = 1;
            }
            if (i10 != 0) {
                return Integer.valueOf(i10 + 1);
            }
            return bVar;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final n2 e(n2 n2Var, i.b bVar) {
        if (n2Var != null) {
            return n2Var;
        }
        if (bVar instanceof n2) {
            return (n2) bVar;
        }
        return null;
    }

    public static final void f(ad.i iVar, Object obj) {
        if (obj == f33277a) {
            return;
        }
        if (obj instanceof q0) {
            ((q0) obj).b(iVar);
            return;
        }
        Object k10 = iVar.k(null, f33279c);
        kotlin.jvm.internal.m.c(k10, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((n2) k10).v(iVar, obj);
    }

    public static final Object g(ad.i iVar) {
        Object k10 = iVar.k(0, f33278b);
        kotlin.jvm.internal.m.b(k10);
        return k10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final q0 h(q0 q0Var, i.b bVar) {
        if (bVar instanceof n2) {
            n2 n2Var = (n2) bVar;
            q0Var.a(n2Var, n2Var.j(q0Var.f33287a));
        }
        return q0Var;
    }

    public static final Object i(ad.i iVar, Object obj) {
        if (obj == null) {
            obj = g(iVar);
        }
        if (obj == 0) {
            return f33277a;
        }
        if (obj instanceof Integer) {
            return iVar.k(new q0(iVar, ((Number) obj).intValue()), f33280d);
        }
        kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((n2) obj).j(iVar);
    }
}
