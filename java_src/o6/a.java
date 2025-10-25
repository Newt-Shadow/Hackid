package o6;

import java.util.NoSuchElementException;
/* loaded from: classes.dex */
abstract class a extends s0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f27377a;

    /* renamed from: b  reason: collision with root package name */
    private int f27378b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(int i10, int i11) {
        n6.m.k(i11, i10);
        this.f27377a = i10;
        this.f27378b = i11;
    }

    protected abstract Object b(int i10);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        if (this.f27378b < this.f27377a) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        if (this.f27378b > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (hasNext()) {
            int i10 = this.f27378b;
            this.f27378b = i10 + 1;
            return b(i10);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f27378b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i10 = this.f27378b - 1;
            this.f27378b = i10;
            return b(i10);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f27378b - 1;
    }
}
