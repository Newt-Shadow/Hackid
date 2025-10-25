package yc;

import java.util.Collection;
/* loaded from: classes2.dex */
public abstract class b implements Collection, jd.a {
    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence l(b bVar, Object obj) {
        if (obj == bVar) {
            return "(this Collection)";
        }
        return String.valueOf(obj);
    }

    @Override // java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (isEmpty()) {
            return false;
        }
        for (Object obj2 : this) {
            if (kotlin.jvm.internal.m.a(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection elements) {
        kotlin.jvm.internal.m.e(elements, "elements");
        Collection<Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!contains(obj)) {
                return false;
            }
        }
        return true;
    }

    public abstract int i();

    @Override // java.util.Collection
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return i();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return kotlin.jvm.internal.g.a(this);
    }

    public String toString() {
        String X;
        X = w.X(this, ", ", "[", "]", 0, null, new id.l() { // from class: yc.a
            @Override // id.l
            public final Object invoke(Object obj) {
                CharSequence l10;
                l10 = b.l(b.this, obj);
                return l10;
            }
        }, 24, null);
        return X;
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] array) {
        kotlin.jvm.internal.m.e(array, "array");
        return kotlin.jvm.internal.g.b(this, array);
    }
}
