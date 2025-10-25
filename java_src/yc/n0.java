package yc;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class n0 extends m0 {
    public static Set e(Set set, Iterable elements) {
        kotlin.jvm.internal.m.e(set, "<this>");
        kotlin.jvm.internal.m.e(elements, "elements");
        Collection<?> x10 = t.x(elements);
        if (x10.isEmpty()) {
            return m.o0(set);
        }
        if (x10 instanceof Set) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Object obj : set) {
                if (!((Set) x10).contains(obj)) {
                    linkedHashSet.add(obj);
                }
            }
            return linkedHashSet;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(set);
        linkedHashSet2.removeAll(x10);
        return linkedHashSet2;
    }

    public static Set f(Set set, Object obj) {
        kotlin.jvm.internal.m.e(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(e0.b(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(obj);
        return linkedHashSet;
    }
}
