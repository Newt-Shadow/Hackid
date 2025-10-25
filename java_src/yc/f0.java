package yc;

import java.util.Map;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class f0 {
    public static final Object a(Map map, Object obj) {
        kotlin.jvm.internal.m.e(map, "<this>");
        if (map instanceof d0) {
            return ((d0) map).d(obj);
        }
        Object obj2 = map.get(obj);
        if (obj2 == null && !map.containsKey(obj)) {
            throw new NoSuchElementException("Key " + obj + " is missing in the map.");
        }
        return obj2;
    }
}
