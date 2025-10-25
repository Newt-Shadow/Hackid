package o6;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a extends AbstractCollection {

        /* renamed from: a  reason: collision with root package name */
        final Collection f27431a;

        /* renamed from: b  reason: collision with root package name */
        final n6.n f27432b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Collection collection, n6.n nVar) {
            this.f27431a = collection;
            this.f27432b = nVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(Object obj) {
            n6.m.d(this.f27432b.apply(obj));
            return this.f27431a.add(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection collection) {
            for (Object obj : collection) {
                n6.m.d(this.f27432b.apply(obj));
            }
            return this.f27431a.addAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            t.f(this.f27431a, this.f27432b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (i.c(this.f27431a, obj)) {
                return this.f27432b.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection collection) {
            return i.a(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return !t.a(this.f27431a, this.f27432b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return u.g(this.f27431a.iterator(), this.f27432b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            if (contains(obj) && this.f27431a.remove(obj)) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection collection) {
            Iterator it = this.f27431a.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f27432b.apply(next) && collection.contains(next)) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection collection) {
            Iterator it = this.f27431a.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f27432b.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i10 = 0;
            for (Object obj : this.f27431a) {
                if (this.f27432b.apply(obj)) {
                    i10++;
                }
            }
            return i10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return w.i(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray(Object[] objArr) {
            return w.i(iterator()).toArray(objArr);
        }
    }

    static boolean a(Collection collection, Collection collection2) {
        for (Object obj : collection2) {
            if (!collection.contains(obj)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder b(int i10) {
        h.b(i10, "size");
        return new StringBuilder((int) Math.min(i10 * 8, 1073741824L));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Collection collection, Object obj) {
        n6.m.i(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }
}
