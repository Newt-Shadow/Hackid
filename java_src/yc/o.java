package yc;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class o extends n {
    public static ArrayList d(Object... elements) {
        kotlin.jvm.internal.m.e(elements, "elements");
        if (elements.length == 0) {
            return new ArrayList();
        }
        return new ArrayList(new e(elements, true));
    }

    public static final Collection e(Object[] objArr) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        return new e(objArr, false);
    }

    public static final int f(List list, Comparable comparable, int i10, int i11) {
        int a10;
        kotlin.jvm.internal.m.e(list, "<this>");
        o(list.size(), i10, i11);
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            a10 = zc.b.a((Comparable) list.get(i13), comparable);
            if (a10 < 0) {
                i10 = i13 + 1;
            } else if (a10 > 0) {
                i12 = i13 - 1;
            } else {
                return i13;
            }
        }
        return -(i10 + 1);
    }

    public static /* synthetic */ int g(List list, Comparable comparable, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = list.size();
        }
        return f(list, comparable, i10, i11);
    }

    public static List h() {
        return y.f33243a;
    }

    public static od.c i(Collection collection) {
        kotlin.jvm.internal.m.e(collection, "<this>");
        return new od.c(0, collection.size() - 1);
    }

    public static int j(List list) {
        kotlin.jvm.internal.m.e(list, "<this>");
        return list.size() - 1;
    }

    public static List k(Object... elements) {
        List h10;
        List c10;
        kotlin.jvm.internal.m.e(elements, "elements");
        if (elements.length > 0) {
            c10 = j.c(elements);
            return c10;
        }
        h10 = h();
        return h10;
    }

    public static List l(Object... elements) {
        List t10;
        kotlin.jvm.internal.m.e(elements, "elements");
        t10 = k.t(elements);
        return t10;
    }

    public static List m(Object... elements) {
        kotlin.jvm.internal.m.e(elements, "elements");
        if (elements.length == 0) {
            return new ArrayList();
        }
        return new ArrayList(new e(elements, true));
    }

    public static final List n(List list) {
        List h10;
        List b10;
        kotlin.jvm.internal.m.e(list, "<this>");
        int size = list.size();
        if (size == 0) {
            h10 = h();
            return h10;
        } else if (size == 1) {
            b10 = n.b(list.get(0));
            return b10;
        } else {
            return list;
        }
    }

    private static final void o(int i10, int i11, int i12) {
        if (i11 <= i12) {
            if (i11 >= 0) {
                if (i12 <= i10) {
                    return;
                }
                throw new IndexOutOfBoundsException("toIndex (" + i12 + ") is greater than size (" + i10 + ").");
            }
            throw new IndexOutOfBoundsException("fromIndex (" + i11 + ") is less than zero.");
        }
        throw new IllegalArgumentException("fromIndex (" + i11 + ") is greater than toIndex (" + i12 + ").");
    }

    public static void p() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static void q() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
