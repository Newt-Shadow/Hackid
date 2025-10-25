package ie;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class n {

    /* renamed from: a  reason: collision with root package name */
    private static final ge.d[] f17435a = new ge.d[0];

    public static final Set a(ge.d dVar) {
        kotlin.jvm.internal.m.e(dVar, "<this>");
        if (dVar instanceof c) {
            return ((c) dVar).b();
        }
        HashSet hashSet = new HashSet(dVar.f());
        int f10 = dVar.f();
        for (int i10 = 0; i10 < f10; i10++) {
            hashSet.add(dVar.g(i10));
        }
        return hashSet;
    }

    public static final ge.d[] b(List list) {
        boolean z10;
        ge.d[] dVarArr;
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            list = null;
        }
        if (list == null || (dVarArr = (ge.d[]) list.toArray(new ge.d[0])) == null) {
            return f17435a;
        }
        return dVarArr;
    }
}
