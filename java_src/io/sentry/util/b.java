package io.sentry.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public abstract class b {
    public static boolean a(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (obj.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    public static List b(List list) {
        if (list != null) {
            return new ArrayList(list);
        }
        return null;
    }

    public static Map c(Map map) {
        if (map != null) {
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
            for (Map.Entry entry : map.entrySet()) {
                if (entry.getKey() != null && entry.getValue() != null) {
                    concurrentHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            return concurrentHashMap;
        }
        return null;
    }

    public static Map d(Map map) {
        if (map != null) {
            return new HashMap(map);
        }
        return null;
    }

    public static int e(Iterable iterable) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        Iterator it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            it.next();
            i10++;
        }
        return i10;
    }
}
