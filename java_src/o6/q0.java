package o6;

import java.util.Iterator;
/* loaded from: classes.dex */
abstract class q0 implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    final Iterator f27485a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0(Iterator it) {
        this.f27485a = (Iterator) n6.m.i(it);
    }

    abstract Object b(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f27485a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return b(this.f27485a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f27485a.remove();
    }
}
