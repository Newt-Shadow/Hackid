package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public interface l {
    static p d(l lVar, p pVar, z4 z4Var, List list) {
        if (lVar.o(pVar.f())) {
            p l10 = lVar.l(pVar.f());
            if (l10 instanceof j) {
                return ((j) l10).a(z4Var, list);
            }
            throw new IllegalArgumentException(String.format("%s is not a function", pVar.f()));
        } else if ("hasOwnProperty".equals(pVar.f())) {
            a6.a("hasOwnProperty", 1, list);
            if (lVar.o(z4Var.a((p) list.get(0)).f())) {
                return p.f6627o0;
            }
            return p.f6628p0;
        } else {
            throw new IllegalArgumentException(String.format("Object has no function %s", pVar.f()));
        }
    }

    static Iterator n(Map map) {
        return new k(map.keySet().iterator());
    }

    p l(String str);

    void m(String str, p pVar);

    boolean o(String str);
}
