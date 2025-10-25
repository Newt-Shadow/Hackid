package yc;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class h0 extends g0 {
    public static Map e() {
        z zVar = z.f33244a;
        kotlin.jvm.internal.m.c(zVar, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return zVar;
    }

    public static Object f(Map map, Object obj) {
        kotlin.jvm.internal.m.e(map, "<this>");
        return f0.a(map, obj);
    }

    public static HashMap g(xc.k... pairs) {
        int b10;
        kotlin.jvm.internal.m.e(pairs, "pairs");
        b10 = g0.b(pairs.length);
        HashMap hashMap = new HashMap(b10);
        n(hashMap, pairs);
        return hashMap;
    }

    public static Map h(xc.k... pairs) {
        Map e10;
        int b10;
        kotlin.jvm.internal.m.e(pairs, "pairs");
        if (pairs.length > 0) {
            b10 = g0.b(pairs.length);
            return r(pairs, new LinkedHashMap(b10));
        }
        e10 = e();
        return e10;
    }

    public static Map i(xc.k... pairs) {
        int b10;
        kotlin.jvm.internal.m.e(pairs, "pairs");
        b10 = g0.b(pairs.length);
        LinkedHashMap linkedHashMap = new LinkedHashMap(b10);
        n(linkedHashMap, pairs);
        return linkedHashMap;
    }

    public static final Map j(Map map) {
        Map e10;
        kotlin.jvm.internal.m.e(map, "<this>");
        int size = map.size();
        if (size == 0) {
            e10 = e();
            return e10;
        } else if (size == 1) {
            return g0.d(map);
        } else {
            return map;
        }
    }

    public static Map k(Map map, Map map2) {
        kotlin.jvm.internal.m.e(map, "<this>");
        kotlin.jvm.internal.m.e(map2, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return linkedHashMap;
    }

    public static Map l(Map map, xc.k pair) {
        Map c10;
        kotlin.jvm.internal.m.e(map, "<this>");
        kotlin.jvm.internal.m.e(pair, "pair");
        if (map.isEmpty()) {
            c10 = g0.c(pair);
            return c10;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put(pair.c(), pair.d());
        return linkedHashMap;
    }

    public static final void m(Map map, Iterable pairs) {
        kotlin.jvm.internal.m.e(map, "<this>");
        kotlin.jvm.internal.m.e(pairs, "pairs");
        Iterator it = pairs.iterator();
        while (it.hasNext()) {
            xc.k kVar = (xc.k) it.next();
            map.put(kVar.a(), kVar.b());
        }
    }

    public static final void n(Map map, xc.k[] pairs) {
        kotlin.jvm.internal.m.e(map, "<this>");
        kotlin.jvm.internal.m.e(pairs, "pairs");
        for (xc.k kVar : pairs) {
            map.put(kVar.a(), kVar.b());
        }
    }

    public static Map o(Iterable iterable) {
        Map e10;
        Object next;
        Map c10;
        int b10;
        kotlin.jvm.internal.m.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                e10 = e();
                return e10;
            } else if (size != 1) {
                b10 = g0.b(collection.size());
                return p(iterable, new LinkedHashMap(b10));
            } else {
                if (iterable instanceof List) {
                    next = ((List) iterable).get(0);
                } else {
                    next = collection.iterator().next();
                }
                c10 = g0.c((xc.k) next);
                return c10;
            }
        }
        return j(p(iterable, new LinkedHashMap()));
    }

    public static final Map p(Iterable iterable, Map destination) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        kotlin.jvm.internal.m.e(destination, "destination");
        m(destination, iterable);
        return destination;
    }

    public static Map q(Map map) {
        Map e10;
        Map s10;
        kotlin.jvm.internal.m.e(map, "<this>");
        int size = map.size();
        if (size == 0) {
            e10 = e();
            return e10;
        } else if (size != 1) {
            s10 = s(map);
            return s10;
        } else {
            return g0.d(map);
        }
    }

    public static final Map r(xc.k[] kVarArr, Map destination) {
        kotlin.jvm.internal.m.e(kVarArr, "<this>");
        kotlin.jvm.internal.m.e(destination, "destination");
        n(destination, kVarArr);
        return destination;
    }

    public static Map s(Map map) {
        kotlin.jvm.internal.m.e(map, "<this>");
        return new LinkedHashMap(map);
    }
}
