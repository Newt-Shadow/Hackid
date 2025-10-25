package o6;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes.dex */
public abstract class o extends AbstractCollection implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final Object[] f27464a = new Object[0];

    /* loaded from: classes.dex */
    static abstract class a extends b {

        /* renamed from: a  reason: collision with root package name */
        Object[] f27465a;

        /* renamed from: b  reason: collision with root package name */
        int f27466b;

        /* renamed from: c  reason: collision with root package name */
        boolean f27467c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i10) {
            h.b(i10, "initialCapacity");
            this.f27465a = new Object[i10];
            this.f27466b = 0;
        }

        private void g(int i10) {
            Object[] objArr = this.f27465a;
            if (objArr.length < i10) {
                this.f27465a = Arrays.copyOf(objArr, b.c(objArr.length, i10));
                this.f27467c = false;
            } else if (this.f27467c) {
                this.f27465a = (Object[]) objArr.clone();
                this.f27467c = false;
            }
        }

        @Override // o6.o.b
        public b b(Iterable iterable) {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                g(this.f27466b + collection.size());
                if (collection instanceof o) {
                    this.f27466b = ((o) collection).g(this.f27465a, this.f27466b);
                    return this;
                }
            }
            super.b(iterable);
            return this;
        }

        public a d(Object obj) {
            n6.m.i(obj);
            g(this.f27466b + 1);
            Object[] objArr = this.f27465a;
            int i10 = this.f27466b;
            this.f27466b = i10 + 1;
            objArr[i10] = obj;
            return this;
        }

        public b e(Object... objArr) {
            f(objArr, objArr.length);
            return this;
        }

        final void f(Object[] objArr, int i10) {
            g0.c(objArr, i10);
            g(this.f27466b + i10);
            System.arraycopy(objArr, 0, this.f27465a, this.f27466b, i10);
            this.f27466b += i10;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int c(int i10, int i11) {
            if (i11 >= 0) {
                int i12 = i10 + (i10 >> 1) + 1;
                if (i12 < i11) {
                    i12 = Integer.highestOneBit(i11 - 1) << 1;
                }
                if (i12 < 0) {
                    return Integer.MAX_VALUE;
                }
                return i12;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }

        public abstract b a(Object obj);

        public b b(Iterable iterable) {
            for (Object obj : iterable) {
                a(obj);
            }
            return this;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(Object obj);

    public abstract q d();

    abstract int g(Object[] objArr, int i10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] i() {
        return null;
    }

    int l() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean n();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f27464a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        n6.m.i(objArr);
        int size = size();
        if (objArr.length < size) {
            Object[] i10 = i();
            if (i10 != null) {
                return i0.a(i10, m(), l(), objArr);
            }
            objArr = g0.d(objArr, size);
        } else if (objArr.length > size) {
            objArr[size] = null;
        }
        g(objArr, 0);
        return objArr;
    }
}
