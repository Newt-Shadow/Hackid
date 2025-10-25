package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes.dex */
abstract class w9 extends AbstractList implements nb {

    /* renamed from: a  reason: collision with root package name */
    private boolean f6868a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w9(boolean z10) {
        this.f6868a = z10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection collection) {
        d();
        return super.addAll(i10, collection);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        d();
        super.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        if (this.f6868a) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.nb
    public final void e() {
        if (this.f6868a) {
            this.f6868a = false;
        }
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        for (int i10 = 0; i10 < size; i10++) {
            if (!get(i10).equals(list.get(i10))) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i10 = 1;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = (i10 * 31) + get(i11).hashCode();
        }
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public abstract Object remove(int i10);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        d();
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        d();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        d();
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.measurement.nb
    public final boolean zza() {
        return this.f6868a;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        d();
        return super.addAll(collection);
    }
}
