package o6;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public abstract class w {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static List a(Iterable iterable) {
        return (List) iterable;
    }

    static int b(int i10) {
        h.b(i10, "arraySize");
        return q6.e.j(i10 + 5 + (i10 / 10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(List list, Object obj) {
        if (obj == n6.m.i(list)) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list2 = (List) obj;
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if ((list instanceof RandomAccess) && (list2 instanceof RandomAccess)) {
            for (int i10 = 0; i10 < size; i10++) {
                if (!n6.k.a(list.get(i10), list2.get(i10))) {
                    return false;
                }
            }
            return true;
        }
        return u.e(list.iterator(), list2.iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(List list, Object obj) {
        if (list instanceof RandomAccess) {
            return e(list, obj);
        }
        ListIterator listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (n6.k.a(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    private static int e(List list, Object obj) {
        int size = list.size();
        int i10 = 0;
        if (obj == null) {
            while (i10 < size) {
                if (list.get(i10) == null) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        while (i10 < size) {
            if (obj.equals(list.get(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(List list, Object obj) {
        if (list instanceof RandomAccess) {
            return g(list, obj);
        }
        ListIterator listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (n6.k.a(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    private static int g(List list, Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    public static ArrayList h() {
        return new ArrayList();
    }

    public static ArrayList i(Iterator it) {
        ArrayList h10 = h();
        u.a(h10, it);
        return h10;
    }

    public static ArrayList j(Object... objArr) {
        n6.m.i(objArr);
        ArrayList arrayList = new ArrayList(b(objArr.length));
        Collections.addAll(arrayList, objArr);
        return arrayList;
    }
}
