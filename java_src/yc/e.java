package yc;

import java.util.Collection;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class e implements Collection, jd.a {

    /* renamed from: a  reason: collision with root package name */
    private final Object[] f33233a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f33234b;

    public e(Object[] values, boolean z10) {
        kotlin.jvm.internal.m.e(values, "values");
        this.f33233a = values;
        this.f33234b = z10;
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

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return k.r(this.f33233a, obj);
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

    public int g() {
        return this.f33233a.length;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        if (this.f33233a.length == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return kotlin.jvm.internal.c.a(this.f33233a);
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
        return g();
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] array) {
        kotlin.jvm.internal.m.e(array, "array");
        return kotlin.jvm.internal.g.b(this, array);
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return n.a(this.f33233a, this.f33234b);
    }
}
