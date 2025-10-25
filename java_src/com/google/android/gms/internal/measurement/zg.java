package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.TreeMap;
/* loaded from: classes.dex */
public final class zg {

    /* renamed from: a  reason: collision with root package name */
    final TreeMap f6931a = new TreeMap();

    /* renamed from: b  reason: collision with root package name */
    final TreeMap f6932b = new TreeMap();

    private static final int c(z4 z4Var, o oVar, p pVar) {
        p a10 = oVar.a(z4Var, Collections.singletonList(pVar));
        if (a10 instanceof i) {
            return a6.g(a10.g().doubleValue());
        }
        return -1;
    }

    public final void a(String str, int i10, o oVar, String str2) {
        TreeMap treeMap;
        if ("create".equals(str2)) {
            treeMap = this.f6932b;
        } else if ("edit".equals(str2)) {
            treeMap = this.f6931a;
        } else {
            throw new IllegalStateException("Unknown callback type: ".concat(String.valueOf(str2)));
        }
        if (treeMap.containsKey(Integer.valueOf(i10))) {
            i10 = ((Integer) treeMap.lastKey()).intValue() + 1;
        }
        treeMap.put(Integer.valueOf(i10), oVar);
    }

    public final void b(z4 z4Var, c cVar) {
        ca caVar = new ca(cVar);
        TreeMap treeMap = this.f6931a;
        for (Integer num : treeMap.keySet()) {
            b clone = cVar.c().clone();
            int c10 = c(z4Var, (o) treeMap.get(num), caVar);
            if (c10 == 2 || c10 == -1) {
                cVar.d(clone);
            }
        }
        TreeMap treeMap2 = this.f6932b;
        for (Integer num2 : treeMap2.keySet()) {
            c(z4Var, (o) treeMap2.get(num2), caVar);
        }
    }
}
