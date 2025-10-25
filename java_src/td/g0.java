package td;

import ad.i;
import id.Function2;
/* loaded from: classes2.dex */
public abstract class g0 {
    private static final ad.i d(ad.i iVar, ad.i iVar2, final boolean z10) {
        boolean h10 = h(iVar);
        boolean h11 = h(iVar2);
        if (!h10 && !h11) {
            return iVar.e(iVar2);
        }
        final kotlin.jvm.internal.c0 c0Var = new kotlin.jvm.internal.c0();
        c0Var.f24971a = iVar2;
        ad.j jVar = ad.j.f295a;
        ad.i iVar3 = (ad.i) iVar.k(jVar, new Function2() { // from class: td.d0
            @Override // id.Function2
            public final Object invoke(Object obj, Object obj2) {
                ad.i e10;
                e10 = g0.e(kotlin.jvm.internal.c0.this, z10, (ad.i) obj, (i.b) obj2);
                return e10;
            }
        });
        if (h11) {
            c0Var.f24971a = ((ad.i) c0Var.f24971a).k(jVar, new Function2() { // from class: td.e0
                @Override // id.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ad.i f10;
                    f10 = g0.f((ad.i) obj, (i.b) obj2);
                    return f10;
                }
            });
        }
        return iVar3.e((ad.i) c0Var.f24971a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ad.i e(kotlin.jvm.internal.c0 c0Var, boolean z10, ad.i iVar, i.b bVar) {
        return iVar.e(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ad.i f(ad.i iVar, i.b bVar) {
        return iVar.e(bVar);
    }

    public static final String g(ad.i iVar) {
        return null;
    }

    private static final boolean h(ad.i iVar) {
        return ((Boolean) iVar.k(Boolean.FALSE, new Function2() { // from class: td.f0
            @Override // id.Function2
            public final Object invoke(Object obj, Object obj2) {
                boolean i10;
                i10 = g0.i(((Boolean) obj).booleanValue(), (i.b) obj2);
                return Boolean.valueOf(i10);
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean i(boolean z10, i.b bVar) {
        return z10;
    }

    public static final ad.i j(ad.i iVar, ad.i iVar2) {
        if (!h(iVar2)) {
            return iVar.e(iVar2);
        }
        return d(iVar, iVar2, false);
    }

    public static final ad.i k(l0 l0Var, ad.i iVar) {
        ad.i d10 = d(l0Var.n(), iVar, true);
        if (d10 != z0.a() && d10.a(ad.f.f293h0) == null) {
            return d10.e(z0.a());
        }
        return d10;
    }

    public static final q2 l(kotlin.coroutines.jvm.internal.e eVar) {
        while (!(eVar instanceof w0) && (eVar = eVar.getCallerFrame()) != null) {
            if (eVar instanceof q2) {
                return (q2) eVar;
            }
        }
        return null;
    }

    public static final q2 m(ad.e eVar, ad.i iVar, Object obj) {
        boolean z10;
        if (!(eVar instanceof kotlin.coroutines.jvm.internal.e)) {
            return null;
        }
        if (iVar.a(r2.f30692a) != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            return null;
        }
        q2 l10 = l((kotlin.coroutines.jvm.internal.e) eVar);
        if (l10 != null) {
            l10.T0(iVar, obj);
        }
        return l10;
    }
}
