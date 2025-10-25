package yc;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class t extends s {
    public static boolean A(List list, id.l predicate) {
        kotlin.jvm.internal.m.e(list, "<this>");
        kotlin.jvm.internal.m.e(predicate, "predicate");
        return z(list, predicate, true);
    }

    public static Object B(List list) {
        kotlin.jvm.internal.m.e(list, "<this>");
        if (!list.isEmpty()) {
            return list.remove(0);
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static Object C(List list) {
        kotlin.jvm.internal.m.e(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(0);
    }

    public static Object D(List list) {
        kotlin.jvm.internal.m.e(list, "<this>");
        if (!list.isEmpty()) {
            return list.remove(m.j(list));
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static Object E(List list) {
        kotlin.jvm.internal.m.e(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(m.j(list));
    }

    public static boolean F(Iterable iterable, id.l predicate) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        kotlin.jvm.internal.m.e(predicate, "predicate");
        return y(iterable, predicate, false);
    }

    public static final boolean G(Collection collection, Iterable elements) {
        kotlin.jvm.internal.m.e(collection, "<this>");
        kotlin.jvm.internal.m.e(elements, "elements");
        return collection.retainAll(x(elements));
    }

    public static boolean v(Collection collection, Iterable elements) {
        kotlin.jvm.internal.m.e(collection, "<this>");
        kotlin.jvm.internal.m.e(elements, "elements");
        if (elements instanceof Collection) {
            return collection.addAll((Collection) elements);
        }
        boolean z10 = false;
        for (Object obj : elements) {
            if (collection.add(obj)) {
                z10 = true;
            }
        }
        return z10;
    }

    public static boolean w(Collection collection, Object[] elements) {
        kotlin.jvm.internal.m.e(collection, "<this>");
        kotlin.jvm.internal.m.e(elements, "elements");
        return collection.addAll(g.c(elements));
    }

    public static final Collection x(Iterable iterable) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            iterable = m.k0(iterable);
        }
        return (Collection) iterable;
    }

    private static final boolean y(Iterable iterable, id.l lVar, boolean z10) {
        Iterator it = iterable.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            if (((Boolean) lVar.invoke(it.next())).booleanValue() == z10) {
                it.remove();
                z11 = true;
            }
        }
        return z11;
    }

    private static final boolean z(List list, id.l lVar, boolean z10) {
        int i10;
        if (!(list instanceof RandomAccess)) {
            kotlin.jvm.internal.m.c(list, "null cannot be cast to non-null type kotlin.collections.MutableIterable<T of kotlin.collections.CollectionsKt__MutableCollectionsKt.filterInPlace>");
            return y(kotlin.jvm.internal.g0.a(list), lVar, z10);
        }
        int j10 = m.j(list);
        if (j10 >= 0) {
            int i11 = 0;
            i10 = 0;
            while (true) {
                Object obj = list.get(i11);
                if (((Boolean) lVar.invoke(obj)).booleanValue() != z10) {
                    if (i10 != i11) {
                        list.set(i10, obj);
                    }
                    i10++;
                }
                if (i11 == j10) {
                    break;
                }
                i11++;
            }
        } else {
            i10 = 0;
        }
        if (i10 >= list.size()) {
            return false;
        }
        int j11 = m.j(list);
        if (i10 > j11) {
            return true;
        }
        while (true) {
            list.remove(j11);
            if (j11 != i10) {
                j11--;
            } else {
                return true;
            }
        }
    }
}
