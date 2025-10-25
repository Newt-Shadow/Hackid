package kotlin.jvm.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
final class b implements Iterator, jd.a {

    /* renamed from: a  reason: collision with root package name */
    private final Object[] f24968a;

    /* renamed from: b  reason: collision with root package name */
    private int f24969b;

    public b(Object[] array) {
        m.e(array, "array");
        this.f24968a = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f24969b < this.f24968a.length) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public Object next() {
        try {
            Object[] objArr = this.f24968a;
            int i10 = this.f24969b;
            this.f24969b = i10 + 1;
            return objArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f24969b--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
