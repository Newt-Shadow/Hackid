package v9;

import d9.l;
import d9.n;
import d9.o;
import d9.p;
import j9.e;
import java.util.ArrayList;
import java.util.Map;
import w9.j;
/* loaded from: classes.dex */
public final class b implements l {

    /* renamed from: a  reason: collision with root package name */
    private static final n[] f31294a = new n[0];

    private static n[] d(d9.c cVar, Map map, boolean z10) {
        ArrayList arrayList = new ArrayList();
        y9.b d10 = y9.a.d(cVar, map, z10);
        for (p[] pVarArr : d10.b()) {
            e i10 = j.i(d10.a(), pVarArr[4], pVarArr[5], pVarArr[6], pVarArr[7], g(pVarArr), e(pVarArr));
            n nVar = new n(i10.k(), i10.g(), pVarArr, d9.a.PDF_417);
            nVar.h(o.ERROR_CORRECTION_LEVEL, i10.b());
            nVar.h(o.ERRORS_CORRECTED, i10.d());
            nVar.h(o.ERASURES_CORRECTED, i10.c());
            c cVar2 = (c) i10.f();
            if (cVar2 != null) {
                nVar.h(o.PDF417_EXTRA_METADATA, cVar2);
            }
            nVar.h(o.ORIENTATION, Integer.valueOf(d10.c()));
            o oVar = o.SYMBOLOGY_IDENTIFIER;
            nVar.h(oVar, "]L" + i10.j());
            arrayList.add(nVar);
        }
        return (n[]) arrayList.toArray(f31294a);
    }

    private static int e(p[] pVarArr) {
        return Math.max(Math.max(f(pVarArr[0], pVarArr[4]), (f(pVarArr[6], pVarArr[2]) * 17) / 18), Math.max(f(pVarArr[1], pVarArr[5]), (f(pVarArr[7], pVarArr[3]) * 17) / 18));
    }

    private static int f(p pVar, p pVar2) {
        if (pVar != null && pVar2 != null) {
            return (int) Math.abs(pVar.c() - pVar2.c());
        }
        return 0;
    }

    private static int g(p[] pVarArr) {
        return Math.min(Math.min(h(pVarArr[0], pVarArr[4]), (h(pVarArr[6], pVarArr[2]) * 17) / 18), Math.min(h(pVarArr[1], pVarArr[5]), (h(pVarArr[7], pVarArr[3]) * 17) / 18));
    }

    private static int h(p pVar, p pVar2) {
        if (pVar != null && pVar2 != null) {
            return (int) Math.abs(pVar.c() - pVar2.c());
        }
        return Integer.MAX_VALUE;
    }

    @Override // d9.l
    public void a() {
    }

    @Override // d9.l
    public n b(d9.c cVar, Map map) {
        n nVar;
        n[] d10 = d(cVar, map, false);
        if (d10.length != 0 && (nVar = d10[0]) != null) {
            return nVar;
        }
        throw d9.j.a();
    }

    @Override // d9.l
    public n c(d9.c cVar) {
        return b(cVar, null);
    }
}
