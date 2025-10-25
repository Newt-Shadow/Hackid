package io.sentry.cache.tape;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
final class a extends c {

    /* loaded from: classes2.dex */
    private static final class b implements Iterator {
        private b() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException("No elements in EmptyIterator!");
        }
    }

    @Override // io.sentry.cache.tape.c
    public void J0(int i10) {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // io.sentry.cache.tape.c
    public void g(Object obj) {
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return new b();
    }

    @Override // io.sentry.cache.tape.c
    public int size() {
        return 0;
    }
}
