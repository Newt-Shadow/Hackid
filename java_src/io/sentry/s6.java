package io.sentry;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes2.dex */
abstract class s6 implements Collection, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final Collection f23653a;

    /* renamed from: b  reason: collision with root package name */
    final Object f23654b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s6(Collection collection) {
        if (collection != null) {
            this.f23653a = collection;
            this.f23654b = this;
            return;
        }
        throw new NullPointerException("Collection must not be null.");
    }

    @Override // java.util.Collection
    public boolean add(Object obj) {
        boolean add;
        synchronized (this.f23654b) {
            add = d().add(obj);
        }
        return add;
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        boolean addAll;
        synchronized (this.f23654b) {
            addAll = d().addAll(collection);
        }
        return addAll;
    }

    @Override // java.util.Collection
    public void clear() {
        synchronized (this.f23654b) {
            d().clear();
        }
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        boolean contains;
        synchronized (this.f23654b) {
            contains = d().contains(obj);
        }
        return contains;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        boolean containsAll;
        synchronized (this.f23654b) {
            containsAll = d().containsAll(collection);
        }
        return containsAll;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Collection d() {
        return this.f23653a;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f23654b) {
            isEmpty = d().isEmpty();
        }
        return isEmpty;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return d().iterator();
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        boolean remove;
        synchronized (this.f23654b) {
            remove = d().remove(obj);
        }
        return remove;
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        boolean removeAll;
        synchronized (this.f23654b) {
            removeAll = d().removeAll(collection);
        }
        return removeAll;
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        boolean retainAll;
        synchronized (this.f23654b) {
            retainAll = d().retainAll(collection);
        }
        return retainAll;
    }

    @Override // java.util.Collection
    public int size() {
        int size;
        synchronized (this.f23654b) {
            size = d().size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f23654b) {
            obj = d().toString();
        }
        return obj;
    }
}
