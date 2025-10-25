package yc;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class f extends d {

    /* renamed from: d  reason: collision with root package name */
    public static final a f33235d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private static final Object[] f33236e = new Object[0];

    /* renamed from: a  reason: collision with root package name */
    private int f33237a;

    /* renamed from: b  reason: collision with root package name */
    private Object[] f33238b = f33236e;

    /* renamed from: c  reason: collision with root package name */
    private int f33239c;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final void C(int i10, int i11) {
        int t10 = t(this.f33237a + (i10 - 1));
        int t11 = t(this.f33237a + (i11 - 1));
        while (i10 > 0) {
            int i12 = t10 + 1;
            int min = Math.min(i10, Math.min(i12, t11 + 1));
            Object[] objArr = this.f33238b;
            int i13 = t11 - min;
            int i14 = t10 - min;
            j.g(objArr, objArr, i13 + 1, i14 + 1, i12);
            t10 = r(i14);
            t11 = r(i13);
            i10 -= min;
        }
    }

    private final void D(int i10, int i11) {
        int t10 = t(this.f33237a + i11);
        int t11 = t(this.f33237a + i10);
        int size = size();
        while (true) {
            size -= i11;
            if (size > 0) {
                Object[] objArr = this.f33238b;
                i11 = Math.min(size, Math.min(objArr.length - t10, objArr.length - t11));
                Object[] objArr2 = this.f33238b;
                int i12 = t10 + i11;
                j.g(objArr2, objArr2, t11, t10, i12);
                t10 = t(i12);
                t11 = t(t11 + i11);
            } else {
                return;
            }
        }
    }

    private final void l(int i10, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.f33238b.length;
        while (i10 < length && it.hasNext()) {
            this.f33238b[i10] = it.next();
            i10++;
        }
        int i11 = this.f33237a;
        for (int i12 = 0; i12 < i11 && it.hasNext(); i12++) {
            this.f33238b[i12] = it.next();
        }
        this.f33239c = size() + collection.size();
    }

    private final void m(int i10) {
        Object[] objArr = new Object[i10];
        Object[] objArr2 = this.f33238b;
        j.g(objArr2, objArr, 0, this.f33237a, objArr2.length);
        Object[] objArr3 = this.f33238b;
        int length = objArr3.length;
        int i11 = this.f33237a;
        j.g(objArr3, objArr, length - i11, 0, i11);
        this.f33237a = 0;
        this.f33238b = objArr;
    }

    private final int n(int i10) {
        int z10;
        if (i10 == 0) {
            z10 = k.z(this.f33238b);
            return z10;
        }
        return i10 - 1;
    }

    private final void o(int i10) {
        int b10;
        if (i10 >= 0) {
            Object[] objArr = this.f33238b;
            if (i10 <= objArr.length) {
                return;
            }
            if (objArr == f33236e) {
                b10 = od.i.b(i10, 10);
                this.f33238b = new Object[b10];
                return;
            }
            m(c.f33226a.e(objArr.length, i10));
            return;
        }
        throw new IllegalStateException("Deque is too big.");
    }

    private final int p(int i10) {
        int z10;
        z10 = k.z(this.f33238b);
        if (i10 == z10) {
            return 0;
        }
        return i10 + 1;
    }

    private final int r(int i10) {
        if (i10 < 0) {
            return i10 + this.f33238b.length;
        }
        return i10;
    }

    private final void s(int i10, int i11) {
        if (i10 < i11) {
            j.m(this.f33238b, null, i10, i11);
            return;
        }
        Object[] objArr = this.f33238b;
        j.m(objArr, null, i10, objArr.length);
        j.m(this.f33238b, null, 0, i11);
    }

    private final int t(int i10) {
        Object[] objArr = this.f33238b;
        if (i10 >= objArr.length) {
            return i10 - objArr.length;
        }
        return i10;
    }

    private final void y() {
        ((AbstractList) this).modCount++;
    }

    public final Object A() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    public final Object B() {
        if (isEmpty()) {
            return null;
        }
        return removeLast();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection elements) {
        kotlin.jvm.internal.m.e(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        y();
        o(size() + elements.size());
        l(t(this.f33237a + size()), elements);
        return true;
    }

    public final void addFirst(Object obj) {
        y();
        o(size() + 1);
        int n10 = n(this.f33237a);
        this.f33237a = n10;
        this.f33238b[n10] = obj;
        this.f33239c = size() + 1;
    }

    public final void addLast(Object obj) {
        y();
        o(size() + 1);
        this.f33238b[t(this.f33237a + size())] = obj;
        this.f33239c = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (!isEmpty()) {
            y();
            s(this.f33237a, t(this.f33237a + size()));
        }
        this.f33237a = 0;
        this.f33239c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // yc.d
    public int g() {
        return this.f33239c;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i10) {
        c.f33226a.b(i10, size());
        return this.f33238b[t(this.f33237a + i10)];
    }

    @Override // yc.d
    public Object i(int i10) {
        int j10;
        int j11;
        c.f33226a.b(i10, size());
        j10 = o.j(this);
        if (i10 == j10) {
            return removeLast();
        }
        if (i10 == 0) {
            return removeFirst();
        }
        y();
        int t10 = t(this.f33237a + i10);
        Object obj = this.f33238b[t10];
        if (i10 < (size() >> 1)) {
            int i11 = this.f33237a;
            if (t10 >= i11) {
                Object[] objArr = this.f33238b;
                j.g(objArr, objArr, i11 + 1, i11, t10);
            } else {
                Object[] objArr2 = this.f33238b;
                j.g(objArr2, objArr2, 1, 0, t10);
                Object[] objArr3 = this.f33238b;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i12 = this.f33237a;
                j.g(objArr3, objArr3, i12 + 1, i12, objArr3.length - 1);
            }
            Object[] objArr4 = this.f33238b;
            int i13 = this.f33237a;
            objArr4[i13] = null;
            this.f33237a = p(i13);
        } else {
            int i14 = this.f33237a;
            j11 = o.j(this);
            int t11 = t(i14 + j11);
            if (t10 <= t11) {
                Object[] objArr5 = this.f33238b;
                j.g(objArr5, objArr5, t10, t10 + 1, t11 + 1);
            } else {
                Object[] objArr6 = this.f33238b;
                j.g(objArr6, objArr6, t10, t10 + 1, objArr6.length);
                Object[] objArr7 = this.f33238b;
                objArr7[objArr7.length - 1] = objArr7[0];
                j.g(objArr7, objArr7, 0, 1, t11 + 1);
            }
            this.f33238b[t11] = null;
        }
        this.f33239c = size() - 1;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        int i10;
        int t10 = t(this.f33237a + size());
        int i11 = this.f33237a;
        if (i11 < t10) {
            while (i11 < t10) {
                if (kotlin.jvm.internal.m.a(obj, this.f33238b[i11])) {
                    i10 = this.f33237a;
                } else {
                    i11++;
                }
            }
            return -1;
        } else if (i11 >= t10) {
            int length = this.f33238b.length;
            while (true) {
                if (i11 < length) {
                    if (kotlin.jvm.internal.m.a(obj, this.f33238b[i11])) {
                        i10 = this.f33237a;
                        break;
                    }
                    i11++;
                } else {
                    for (int i12 = 0; i12 < t10; i12++) {
                        if (kotlin.jvm.internal.m.a(obj, this.f33238b[i12])) {
                            i11 = i12 + this.f33238b.length;
                            i10 = this.f33237a;
                        }
                    }
                    return -1;
                }
            }
        } else {
            return -1;
        }
        return i11 - i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        int z10;
        int i10;
        int t10 = t(this.f33237a + size());
        int i11 = this.f33237a;
        if (i11 < t10) {
            z10 = t10 - 1;
            if (i11 <= z10) {
                while (!kotlin.jvm.internal.m.a(obj, this.f33238b[z10])) {
                    if (z10 != i11) {
                        z10--;
                    }
                }
                i10 = this.f33237a;
                return z10 - i10;
            }
            return -1;
        }
        if (i11 > t10) {
            int i12 = t10 - 1;
            while (true) {
                if (-1 >= i12) {
                    z10 = k.z(this.f33238b);
                    int i13 = this.f33237a;
                    if (i13 <= z10) {
                        while (!kotlin.jvm.internal.m.a(obj, this.f33238b[z10])) {
                            if (z10 != i13) {
                                z10--;
                            }
                        }
                        i10 = this.f33237a;
                    }
                } else if (kotlin.jvm.internal.m.a(obj, this.f33238b[i12])) {
                    z10 = i12 + this.f33238b.length;
                    i10 = this.f33237a;
                    break;
                } else {
                    i12--;
                }
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection elements) {
        Object[] objArr;
        int t10;
        kotlin.jvm.internal.m.e(elements, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty()) {
            if (this.f33238b.length == 0) {
                objArr = 1;
            } else {
                objArr = null;
            }
            if (objArr == null) {
                int t11 = t(this.f33237a + size());
                int i10 = this.f33237a;
                if (i10 < t11) {
                    t10 = i10;
                    while (i10 < t11) {
                        Object obj = this.f33238b[i10];
                        if (!elements.contains(obj)) {
                            this.f33238b[t10] = obj;
                            t10++;
                        } else {
                            z10 = true;
                        }
                        i10++;
                    }
                    j.m(this.f33238b, null, t10, t11);
                } else {
                    int length = this.f33238b.length;
                    boolean z11 = false;
                    int i11 = i10;
                    while (i10 < length) {
                        Object[] objArr2 = this.f33238b;
                        Object obj2 = objArr2[i10];
                        objArr2[i10] = null;
                        if (!elements.contains(obj2)) {
                            this.f33238b[i11] = obj2;
                            i11++;
                        } else {
                            z11 = true;
                        }
                        i10++;
                    }
                    t10 = t(i11);
                    for (int i12 = 0; i12 < t11; i12++) {
                        Object[] objArr3 = this.f33238b;
                        Object obj3 = objArr3[i12];
                        objArr3[i12] = null;
                        if (!elements.contains(obj3)) {
                            this.f33238b[t10] = obj3;
                            t10 = p(t10);
                        } else {
                            z11 = true;
                        }
                    }
                    z10 = z11;
                }
                if (z10) {
                    y();
                    this.f33239c = r(t10 - this.f33237a);
                }
            }
        }
        return z10;
    }

    public final Object removeFirst() {
        if (!isEmpty()) {
            y();
            Object[] objArr = this.f33238b;
            int i10 = this.f33237a;
            Object obj = objArr[i10];
            objArr[i10] = null;
            this.f33237a = p(i10);
            this.f33239c = size() - 1;
            return obj;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    public final Object removeLast() {
        int j10;
        if (!isEmpty()) {
            y();
            int i10 = this.f33237a;
            j10 = o.j(this);
            int t10 = t(i10 + j10);
            Object[] objArr = this.f33238b;
            Object obj = objArr[t10];
            objArr[t10] = null;
            this.f33239c = size() - 1;
            return obj;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        c.f33226a.d(i10, i11, size());
        int i12 = i11 - i10;
        if (i12 == 0) {
            return;
        }
        if (i12 == size()) {
            clear();
        } else if (i12 == 1) {
            remove(i10);
        } else {
            y();
            if (i10 < size() - i11) {
                C(i10, i11);
                int t10 = t(this.f33237a + i12);
                s(this.f33237a, t10);
                this.f33237a = t10;
            } else {
                D(i10, i11);
                int t11 = t(this.f33237a + size());
                s(r(t11 - i12), t11);
            }
            this.f33239c = size() - i12;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection elements) {
        Object[] objArr;
        int t10;
        kotlin.jvm.internal.m.e(elements, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty()) {
            if (this.f33238b.length == 0) {
                objArr = 1;
            } else {
                objArr = null;
            }
            if (objArr == null) {
                int t11 = t(this.f33237a + size());
                int i10 = this.f33237a;
                if (i10 < t11) {
                    t10 = i10;
                    while (i10 < t11) {
                        Object obj = this.f33238b[i10];
                        if (elements.contains(obj)) {
                            this.f33238b[t10] = obj;
                            t10++;
                        } else {
                            z10 = true;
                        }
                        i10++;
                    }
                    j.m(this.f33238b, null, t10, t11);
                } else {
                    int length = this.f33238b.length;
                    boolean z11 = false;
                    int i11 = i10;
                    while (i10 < length) {
                        Object[] objArr2 = this.f33238b;
                        Object obj2 = objArr2[i10];
                        objArr2[i10] = null;
                        if (elements.contains(obj2)) {
                            this.f33238b[i11] = obj2;
                            i11++;
                        } else {
                            z11 = true;
                        }
                        i10++;
                    }
                    t10 = t(i11);
                    for (int i12 = 0; i12 < t11; i12++) {
                        Object[] objArr3 = this.f33238b;
                        Object obj3 = objArr3[i12];
                        objArr3[i12] = null;
                        if (elements.contains(obj3)) {
                            this.f33238b[t10] = obj3;
                            t10 = p(t10);
                        } else {
                            z11 = true;
                        }
                    }
                    z10 = z11;
                }
                if (z10) {
                    y();
                    this.f33239c = r(t10 - this.f33237a);
                }
            }
        }
        return z10;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i10, Object obj) {
        c.f33226a.b(i10, size());
        int t10 = t(this.f33237a + i10);
        Object[] objArr = this.f33238b;
        Object obj2 = objArr[t10];
        objArr[t10] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray(Object[] array) {
        kotlin.jvm.internal.m.e(array, "array");
        if (array.length < size()) {
            array = h.a(array, size());
        }
        int t10 = t(this.f33237a + size());
        int i10 = this.f33237a;
        if (i10 < t10) {
            j.j(this.f33238b, array, 0, i10, t10, 2, null);
        } else if (!isEmpty()) {
            Object[] objArr = this.f33238b;
            j.g(objArr, array, 0, this.f33237a, objArr.length);
            Object[] objArr2 = this.f33238b;
            j.g(objArr2, array, objArr2.length - this.f33237a, 0, t10);
        }
        return n.c(size(), array);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i10, Object obj) {
        c.f33226a.c(i10, size());
        if (i10 == size()) {
            addLast(obj);
        } else if (i10 == 0) {
            addFirst(obj);
        } else {
            y();
            o(size() + 1);
            int t10 = t(this.f33237a + i10);
            if (i10 < ((size() + 1) >> 1)) {
                int n10 = n(t10);
                int n11 = n(this.f33237a);
                int i11 = this.f33237a;
                if (n10 >= i11) {
                    Object[] objArr = this.f33238b;
                    objArr[n11] = objArr[i11];
                    j.g(objArr, objArr, i11, i11 + 1, n10 + 1);
                } else {
                    Object[] objArr2 = this.f33238b;
                    j.g(objArr2, objArr2, i11 - 1, i11, objArr2.length);
                    Object[] objArr3 = this.f33238b;
                    objArr3[objArr3.length - 1] = objArr3[0];
                    j.g(objArr3, objArr3, 0, 1, n10 + 1);
                }
                this.f33238b[n10] = obj;
                this.f33237a = n11;
            } else {
                int t11 = t(this.f33237a + size());
                if (t10 < t11) {
                    Object[] objArr4 = this.f33238b;
                    j.g(objArr4, objArr4, t10 + 1, t10, t11);
                } else {
                    Object[] objArr5 = this.f33238b;
                    j.g(objArr5, objArr5, 1, 0, t11);
                    Object[] objArr6 = this.f33238b;
                    objArr6[0] = objArr6[objArr6.length - 1];
                    j.g(objArr6, objArr6, t10 + 1, t10, objArr6.length - 1);
                }
                this.f33238b[t10] = obj;
            }
            this.f33239c = size() + 1;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i10, Collection elements) {
        kotlin.jvm.internal.m.e(elements, "elements");
        c.f33226a.c(i10, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (i10 == size()) {
            return addAll(elements);
        }
        y();
        o(size() + elements.size());
        int t10 = t(this.f33237a + size());
        int t11 = t(this.f33237a + i10);
        int size = elements.size();
        if (i10 < ((size() + 1) >> 1)) {
            int i11 = this.f33237a;
            int i12 = i11 - size;
            if (t11 < i11) {
                Object[] objArr = this.f33238b;
                j.g(objArr, objArr, i12, i11, objArr.length);
                if (size >= t11) {
                    Object[] objArr2 = this.f33238b;
                    j.g(objArr2, objArr2, objArr2.length - size, 0, t11);
                } else {
                    Object[] objArr3 = this.f33238b;
                    j.g(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.f33238b;
                    j.g(objArr4, objArr4, 0, size, t11);
                }
            } else if (i12 >= 0) {
                Object[] objArr5 = this.f33238b;
                j.g(objArr5, objArr5, i12, i11, t11);
            } else {
                Object[] objArr6 = this.f33238b;
                i12 += objArr6.length;
                int i13 = t11 - i11;
                int length = objArr6.length - i12;
                if (length >= i13) {
                    j.g(objArr6, objArr6, i12, i11, t11);
                } else {
                    j.g(objArr6, objArr6, i12, i11, i11 + length);
                    Object[] objArr7 = this.f33238b;
                    j.g(objArr7, objArr7, 0, this.f33237a + length, t11);
                }
            }
            this.f33237a = i12;
            l(r(t11 - size), elements);
        } else {
            int i14 = t11 + size;
            if (t11 < t10) {
                int i15 = size + t10;
                Object[] objArr8 = this.f33238b;
                if (i15 <= objArr8.length) {
                    j.g(objArr8, objArr8, i14, t11, t10);
                } else if (i14 >= objArr8.length) {
                    j.g(objArr8, objArr8, i14 - objArr8.length, t11, t10);
                } else {
                    int length2 = t10 - (i15 - objArr8.length);
                    j.g(objArr8, objArr8, 0, length2, t10);
                    Object[] objArr9 = this.f33238b;
                    j.g(objArr9, objArr9, i14, t11, length2);
                }
            } else {
                Object[] objArr10 = this.f33238b;
                j.g(objArr10, objArr10, size, 0, t10);
                Object[] objArr11 = this.f33238b;
                if (i14 >= objArr11.length) {
                    j.g(objArr11, objArr11, i14 - objArr11.length, t11, objArr11.length);
                } else {
                    j.g(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.f33238b;
                    j.g(objArr12, objArr12, i14, t11, objArr12.length - size);
                }
            }
            l(t11, elements);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
