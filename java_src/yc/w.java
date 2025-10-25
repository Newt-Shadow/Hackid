package yc;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class w extends v {

    /* loaded from: classes2.dex */
    public static final class a implements qd.e {

        /* renamed from: a */
        final /* synthetic */ Iterable f33241a;

        public a(Iterable iterable) {
            this.f33241a = iterable;
        }

        @Override // qd.e
        public Iterator iterator() {
            return this.f33241a.iterator();
        }
    }

    public static qd.e H(Iterable iterable) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        return new a(iterable);
    }

    public static boolean I(Iterable iterable, Object obj) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(obj);
        }
        if (S(iterable, obj) >= 0) {
            return true;
        }
        return false;
    }

    public static List J(Iterable iterable, int i10) {
        boolean z10;
        ArrayList arrayList;
        List b10;
        List h10;
        List k02;
        kotlin.jvm.internal.m.e(iterable, "<this>");
        int i11 = 0;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i10 == 0) {
                k02 = k0(iterable);
                return k02;
            }
            if (iterable instanceof Collection) {
                int size = ((Collection) iterable).size() - i10;
                if (size <= 0) {
                    h10 = o.h();
                    return h10;
                } else if (size == 1) {
                    b10 = n.b(Y(iterable));
                    return b10;
                } else {
                    arrayList = new ArrayList(size);
                    if (iterable instanceof List) {
                        if (iterable instanceof RandomAccess) {
                            List list = (List) iterable;
                            int size2 = list.size();
                            while (i10 < size2) {
                                arrayList.add(list.get(i10));
                                i10++;
                            }
                        } else {
                            ListIterator listIterator = ((List) iterable).listIterator(i10);
                            while (listIterator.hasNext()) {
                                arrayList.add(listIterator.next());
                            }
                        }
                        return arrayList;
                    }
                }
            } else {
                arrayList = new ArrayList();
            }
            for (Object obj : iterable) {
                if (i11 >= i10) {
                    arrayList.add(obj);
                } else {
                    i11++;
                }
            }
            return o.n(arrayList);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    public static List K(List list, int i10) {
        boolean z10;
        int b10;
        List i02;
        kotlin.jvm.internal.m.e(list, "<this>");
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            List list2 = list;
            b10 = od.i.b(list.size() - i10, 0);
            i02 = i0(list2, b10);
            return i02;
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    public static List L(Iterable iterable) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        return (List) M(iterable, new ArrayList());
    }

    public static final Collection M(Iterable iterable, Collection destination) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        kotlin.jvm.internal.m.e(destination, "destination");
        for (Object obj : iterable) {
            if (obj != null) {
                destination.add(obj);
            }
        }
        return destination;
    }

    public static final Object N(Iterable iterable) {
        Object O;
        kotlin.jvm.internal.m.e(iterable, "<this>");
        if (iterable instanceof List) {
            O = O((List) iterable);
            return O;
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static Object O(List list) {
        kotlin.jvm.internal.m.e(list, "<this>");
        if (!list.isEmpty()) {
            return list.get(0);
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static Object P(Iterable iterable) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return list.get(0);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        return it.next();
    }

    public static Object Q(List list) {
        kotlin.jvm.internal.m.e(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static Object R(List list, int i10) {
        kotlin.jvm.internal.m.e(list, "<this>");
        boolean z10 = false;
        if (i10 >= 0 && i10 < list.size()) {
            z10 = true;
        }
        if (z10) {
            return list.get(i10);
        }
        return null;
    }

    public static final int S(Iterable iterable, Object obj) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(obj);
        }
        int i10 = 0;
        for (Object obj2 : iterable) {
            if (i10 < 0) {
                o.q();
            }
            if (kotlin.jvm.internal.m.a(obj, obj2)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static Set T(Iterable iterable, Iterable other) {
        Set n02;
        kotlin.jvm.internal.m.e(iterable, "<this>");
        kotlin.jvm.internal.m.e(other, "other");
        n02 = n0(iterable);
        t.G(n02, other);
        return n02;
    }

    public static final Appendable U(Iterable iterable, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, id.l lVar) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        kotlin.jvm.internal.m.e(buffer, "buffer");
        kotlin.jvm.internal.m.e(separator, "separator");
        kotlin.jvm.internal.m.e(prefix, "prefix");
        kotlin.jvm.internal.m.e(postfix, "postfix");
        kotlin.jvm.internal.m.e(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (Object obj : iterable) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            rd.o.a(buffer, obj, lVar);
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static /* synthetic */ Appendable V(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, id.l lVar, int i11, Object obj) {
        CharSequence charSequence5;
        CharSequence charSequence6;
        int i12;
        CharSequence charSequence7;
        id.l lVar2;
        if ((i11 & 2) != 0) {
            charSequence5 = ", ";
        } else {
            charSequence5 = charSequence;
        }
        CharSequence charSequence8 = "";
        if ((i11 & 4) != 0) {
            charSequence6 = "";
        } else {
            charSequence6 = charSequence2;
        }
        if ((i11 & 8) == 0) {
            charSequence8 = charSequence3;
        }
        if ((i11 & 16) != 0) {
            i12 = -1;
        } else {
            i12 = i10;
        }
        if ((i11 & 32) != 0) {
            charSequence7 = "...";
        } else {
            charSequence7 = charSequence4;
        }
        if ((i11 & 64) != 0) {
            lVar2 = null;
        } else {
            lVar2 = lVar;
        }
        return U(iterable, appendable, charSequence5, charSequence6, charSequence8, i12, charSequence7, lVar2);
    }

    public static final String W(Iterable iterable, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, id.l lVar) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        kotlin.jvm.internal.m.e(separator, "separator");
        kotlin.jvm.internal.m.e(prefix, "prefix");
        kotlin.jvm.internal.m.e(postfix, "postfix");
        kotlin.jvm.internal.m.e(truncated, "truncated");
        return ((StringBuilder) U(iterable, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    public static /* synthetic */ String X(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, id.l lVar, int i11, Object obj) {
        CharSequence charSequence5;
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence6 = "";
        if ((i11 & 2) != 0) {
            charSequence5 = "";
        } else {
            charSequence5 = charSequence2;
        }
        if ((i11 & 4) == 0) {
            charSequence6 = charSequence3;
        }
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return W(iterable, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    public static final Object Y(Iterable iterable) {
        Object Z;
        kotlin.jvm.internal.m.e(iterable, "<this>");
        if (iterable instanceof List) {
            Z = Z((List) iterable);
            return Z;
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            while (it.hasNext()) {
                next = it.next();
            }
            return next;
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static Object Z(List list) {
        int j10;
        kotlin.jvm.internal.m.e(list, "<this>");
        if (!list.isEmpty()) {
            j10 = o.j(list);
            return list.get(j10);
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static Object a0(List list) {
        kotlin.jvm.internal.m.e(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static Comparable b0(Iterable iterable) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) > 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static List c0(Collection collection, Iterable elements) {
        kotlin.jvm.internal.m.e(collection, "<this>");
        kotlin.jvm.internal.m.e(elements, "elements");
        if (elements instanceof Collection) {
            Collection collection2 = (Collection) elements;
            ArrayList arrayList = new ArrayList(collection.size() + collection2.size());
            arrayList.addAll(collection);
            arrayList.addAll(collection2);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(collection);
        t.v(arrayList2, elements);
        return arrayList2;
    }

    public static List d0(Collection collection, Object obj) {
        kotlin.jvm.internal.m.e(collection, "<this>");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(obj);
        return arrayList;
    }

    public static Object e0(Iterable iterable) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        if (iterable instanceof List) {
            return f0((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (!it.hasNext()) {
                return next;
            }
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static final Object f0(List list) {
        kotlin.jvm.internal.m.e(list, "<this>");
        int size = list.size();
        if (size != 0) {
            if (size == 1) {
                return list.get(0);
            }
            throw new IllegalArgumentException("List has more than one element.");
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static Object g0(List list) {
        kotlin.jvm.internal.m.e(list, "<this>");
        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    public static List h0(Iterable iterable, Comparator comparator) {
        List c10;
        List k02;
        kotlin.jvm.internal.m.e(iterable, "<this>");
        kotlin.jvm.internal.m.e(comparator, "comparator");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= 1) {
                k02 = k0(iterable);
                return k02;
            }
            Object[] array = collection.toArray(new Object[0]);
            j.p(array, comparator);
            c10 = j.c(array);
            return c10;
        }
        List l02 = l0(iterable);
        s.u(l02, comparator);
        return l02;
    }

    public static List i0(Iterable iterable, int i10) {
        boolean z10;
        List b10;
        List k02;
        List h10;
        kotlin.jvm.internal.m.e(iterable, "<this>");
        int i11 = 0;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i10 == 0) {
                h10 = o.h();
                return h10;
            }
            if (iterable instanceof Collection) {
                if (i10 >= ((Collection) iterable).size()) {
                    k02 = k0(iterable);
                    return k02;
                } else if (i10 == 1) {
                    b10 = n.b(N(iterable));
                    return b10;
                }
            }
            ArrayList arrayList = new ArrayList(i10);
            for (Object obj : iterable) {
                arrayList.add(obj);
                i11++;
                if (i11 == i10) {
                    break;
                }
            }
            return o.n(arrayList);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    public static final Collection j0(Iterable iterable, Collection destination) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        kotlin.jvm.internal.m.e(destination, "destination");
        for (Object obj : iterable) {
            destination.add(obj);
        }
        return destination;
    }

    public static List k0(Iterable iterable) {
        List h10;
        Object next;
        List b10;
        List m02;
        kotlin.jvm.internal.m.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                h10 = o.h();
                return h10;
            } else if (size != 1) {
                m02 = m0(collection);
                return m02;
            } else {
                if (iterable instanceof List) {
                    next = ((List) iterable).get(0);
                } else {
                    next = collection.iterator().next();
                }
                b10 = n.b(next);
                return b10;
            }
        }
        return o.n(l0(iterable));
    }

    public static final List l0(Iterable iterable) {
        List m02;
        kotlin.jvm.internal.m.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            m02 = m0((Collection) iterable);
            return m02;
        }
        return (List) j0(iterable, new ArrayList());
    }

    public static List m0(Collection collection) {
        kotlin.jvm.internal.m.e(collection, "<this>");
        return new ArrayList(collection);
    }

    public static Set n0(Iterable iterable) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        return (Set) j0(iterable, new LinkedHashSet());
    }

    public static Set o0(Iterable iterable) {
        Set b10;
        Object next;
        Set a10;
        int b11;
        kotlin.jvm.internal.m.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                b10 = m0.b();
                return b10;
            } else if (size != 1) {
                b11 = g0.b(collection.size());
                return (Set) j0(iterable, new LinkedHashSet(b11));
            } else {
                if (iterable instanceof List) {
                    next = ((List) iterable).get(0);
                } else {
                    next = collection.iterator().next();
                }
                a10 = l0.a(next);
                return a10;
            }
        }
        return m0.c((Set) j0(iterable, new LinkedHashSet()));
    }

    public static List p0(Iterable iterable, Iterable other) {
        int r10;
        int r11;
        kotlin.jvm.internal.m.e(iterable, "<this>");
        kotlin.jvm.internal.m.e(other, "other");
        Iterator it = iterable.iterator();
        Iterator it2 = other.iterator();
        r10 = p.r(iterable, 10);
        r11 = p.r(other, 10);
        ArrayList arrayList = new ArrayList(Math.min(r10, r11));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(xc.q.a(it.next(), it2.next()));
        }
        return arrayList;
    }
}
