package yc;

import java.util.Iterator;
/* loaded from: classes2.dex */
public abstract class c0 implements Iterator, jd.a {
    public abstract long b();

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return Long.valueOf(b());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
