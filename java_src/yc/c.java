package yc;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public abstract class c extends yc.b implements List {

    /* renamed from: a  reason: collision with root package name */
    public static final a f33226a = new a(null);

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(int i10, int i11, int i12) {
            if (i10 >= 0 && i11 <= i12) {
                if (i10 <= i11) {
                    return;
                }
                throw new IllegalArgumentException("startIndex: " + i10 + " > endIndex: " + i11);
            }
            throw new IndexOutOfBoundsException("startIndex: " + i10 + ", endIndex: " + i11 + ", size: " + i12);
        }

        public final void b(int i10, int i11) {
            if (i10 >= 0 && i10 < i11) {
                return;
            }
            throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
        }

        public final void c(int i10, int i11) {
            if (i10 >= 0 && i10 <= i11) {
                return;
            }
            throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
        }

        public final void d(int i10, int i11, int i12) {
            if (i10 >= 0 && i11 <= i12) {
                if (i10 <= i11) {
                    return;
                }
                throw new IllegalArgumentException("fromIndex: " + i10 + " > toIndex: " + i11);
            }
            throw new IndexOutOfBoundsException("fromIndex: " + i10 + ", toIndex: " + i11 + ", size: " + i12);
        }

        public final int e(int i10, int i11) {
            int i12 = i10 + (i10 >> 1);
            if (i12 - i11 < 0) {
                i12 = i11;
            }
            return i12 - 2147483639 > 0 ? i11 > 2147483639 ? Integer.MAX_VALUE : 2147483639 : i12;
        }

        public final boolean f(Collection c10, Collection other) {
            kotlin.jvm.internal.m.e(c10, "c");
            kotlin.jvm.internal.m.e(other, "other");
            if (c10.size() != other.size()) {
                return false;
            }
            Iterator it = other.iterator();
            for (Object obj : c10) {
                if (!kotlin.jvm.internal.m.a(obj, it.next())) {
                    return false;
                }
            }
            return true;
        }

        public final int g(Collection c10) {
            int i10;
            kotlin.jvm.internal.m.e(c10, "c");
            int i11 = 1;
            for (Object obj : c10) {
                int i12 = i11 * 31;
                if (obj != null) {
                    i10 = obj.hashCode();
                } else {
                    i10 = 0;
                }
                i11 = i12 + i10;
            }
            return i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b implements Iterator, jd.a {

        /* renamed from: a  reason: collision with root package name */
        private int f33227a;

        public b() {
        }

        protected final int b() {
            return this.f33227a;
        }

        protected final void c(int i10) {
            this.f33227a = i10;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f33227a < c.this.size()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (hasNext()) {
                c cVar = c.this;
                int i10 = this.f33227a;
                this.f33227a = i10 + 1;
                return cVar.get(i10);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* renamed from: yc.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private class C0381c extends b implements ListIterator {
        public C0381c(int i10) {
            super();
            c.f33226a.c(i10, c.this.size());
            c(i10);
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            if (b() > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return b();
        }

        @Override // java.util.ListIterator
        public Object previous() {
            if (hasPrevious()) {
                c cVar = c.this;
                c(b() - 1);
                return cVar.get(b());
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return b() - 1;
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* loaded from: classes2.dex */
    private static final class d extends c implements RandomAccess {

        /* renamed from: b  reason: collision with root package name */
        private final c f33230b;

        /* renamed from: c  reason: collision with root package name */
        private final int f33231c;

        /* renamed from: d  reason: collision with root package name */
        private int f33232d;

        public d(c list, int i10, int i11) {
            kotlin.jvm.internal.m.e(list, "list");
            this.f33230b = list;
            this.f33231c = i10;
            c.f33226a.d(i10, i11, list.size());
            this.f33232d = i11 - i10;
        }

        @Override // yc.c, java.util.List
        public Object get(int i10) {
            c.f33226a.b(i10, this.f33232d);
            return this.f33230b.get(this.f33231c + i10);
        }

        @Override // yc.b
        public int i() {
            return this.f33232d;
        }
    }

    @Override // java.util.List
    public void add(int i10, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i10, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        return f33226a.f(this, (Collection) obj);
    }

    public abstract Object get(int i10);

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return f33226a.g(this);
    }

    public int indexOf(Object obj) {
        int i10 = 0;
        for (Object obj2 : this) {
            if (!kotlin.jvm.internal.m.a(obj2, obj)) {
                i10++;
            } else {
                return i10;
            }
        }
        return -1;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return new b();
    }

    public int lastIndexOf(Object obj) {
        ListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (kotlin.jvm.internal.m.a(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return new C0381c(0);
    }

    @Override // java.util.List
    public Object remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public Object set(int i10, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public List subList(int i10, int i11) {
        return new d(this, i10, i11);
    }

    @Override // java.util.List
    public ListIterator listIterator(int i10) {
        return new C0381c(i10);
    }
}
