package o6;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import o6.o;
/* loaded from: classes.dex */
public abstract class q extends o implements List, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    private static final s0 f27480b = new b(j0.f27434e, 0);

    /* loaded from: classes.dex */
    public static final class a extends o.a {
        public a() {
            this(4);
        }

        @Override // o6.o.b
        /* renamed from: h */
        public a a(Object obj) {
            super.d(obj);
            return this;
        }

        public a i(Object... objArr) {
            super.e(objArr);
            return this;
        }

        public a j(Iterable iterable) {
            super.b(iterable);
            return this;
        }

        public q k() {
            this.f27467c = true;
            return q.p(this.f27465a, this.f27466b);
        }

        a(int i10) {
            super(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b extends o6.a {

        /* renamed from: c  reason: collision with root package name */
        private final q f27481c;

        b(q qVar, int i10) {
            super(qVar.size(), i10);
            this.f27481c = qVar;
        }

        @Override // o6.a
        protected Object b(int i10) {
            return this.f27481c.get(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends q {

        /* renamed from: c  reason: collision with root package name */
        final transient int f27482c;

        /* renamed from: d  reason: collision with root package name */
        final transient int f27483d;

        c(int i10, int i11) {
            this.f27482c = i10;
            this.f27483d = i11;
        }

        @Override // o6.q, java.util.List
        /* renamed from: M */
        public q subList(int i10, int i11) {
            n6.m.m(i10, i11, this.f27483d);
            q qVar = q.this;
            int i12 = this.f27482c;
            return qVar.subList(i10 + i12, i11 + i12);
        }

        @Override // java.util.List
        public Object get(int i10) {
            n6.m.g(i10, this.f27483d);
            return q.this.get(i10 + this.f27482c);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // o6.o
        public Object[] i() {
            return q.this.i();
        }

        @Override // o6.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // o6.o
        int l() {
            return q.this.m() + this.f27482c + this.f27483d;
        }

        @Override // o6.q, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // o6.o
        public int m() {
            return q.this.m() + this.f27482c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // o6.o
        public boolean n() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f27483d;
        }

        @Override // o6.q, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i10) {
            return super.listIterator(i10);
        }
    }

    public static q D() {
        return j0.f27434e;
    }

    public static q F(Object obj) {
        return s(obj);
    }

    public static q G(Object obj, Object obj2) {
        return s(obj, obj2);
    }

    public static q I(Object obj, Object obj2, Object obj3) {
        return s(obj, obj2, obj3);
    }

    public static q J(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return s(obj, obj2, obj3, obj4, obj5);
    }

    public static q K(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) {
        return s(obj, obj2, obj3, obj4, obj5, obj6, obj7);
    }

    public static q L(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object... objArr) {
        boolean z10;
        if (objArr.length <= 2147483635) {
            z10 = true;
        } else {
            z10 = false;
        }
        n6.m.e(z10, "the total number of elements must fit in an int");
        Object[] objArr2 = new Object[objArr.length + 12];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        objArr2[6] = obj7;
        objArr2[7] = obj8;
        objArr2[8] = obj9;
        objArr2[9] = obj10;
        objArr2[10] = obj11;
        objArr2[11] = obj12;
        System.arraycopy(objArr, 0, objArr2, 12, objArr.length);
        return s(objArr2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q o(Object[] objArr) {
        return p(objArr, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q p(Object[] objArr, int i10) {
        if (i10 == 0) {
            return D();
        }
        return new j0(objArr, i10);
    }

    public static a r() {
        return new a();
    }

    private static q s(Object... objArr) {
        return o(g0.b(objArr));
    }

    public static q t(Collection collection) {
        if (collection instanceof o) {
            q d10 = ((o) collection).d();
            if (d10.n()) {
                return o(d10.toArray());
            }
            return d10;
        }
        return s(collection.toArray());
    }

    public static q y(Object[] objArr) {
        if (objArr.length == 0) {
            return D();
        }
        return s((Object[]) objArr.clone());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* renamed from: A */
    public r0 iterator() {
        return listIterator();
    }

    @Override // java.util.List
    /* renamed from: B */
    public s0 listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: C */
    public s0 listIterator(int i10) {
        n6.m.k(i10, size());
        if (isEmpty()) {
            return f27480b;
        }
        return new b(this, i10);
    }

    @Override // java.util.List
    /* renamed from: M */
    public q subList(int i10, int i11) {
        n6.m.m(i10, i11, size());
        int i12 = i11 - i10;
        if (i12 == size()) {
            return this;
        }
        if (i12 == 0) {
            return D();
        }
        return N(i10, i11);
    }

    q N(int i10, int i11) {
        return new c(i10, i11 - i10);
    }

    @Override // java.util.List
    public final void add(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i10, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // o6.o, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (indexOf(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // o6.o
    public final q d() {
        return this;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return w.c(this, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // o6.o
    public int g(Object[] objArr, int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i10 + i11] = get(i11);
        }
        return i10 + size;
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i10 = 1;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = ~(~((i10 * 31) + get(i11).hashCode()));
        }
        return i10;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return w.d(this, obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return w.f(this, obj);
    }

    @Override // java.util.List
    public final Object remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object set(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }
}
