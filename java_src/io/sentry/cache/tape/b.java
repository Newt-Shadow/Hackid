package io.sentry.cache.tape;

import io.sentry.cache.tape.c;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Iterator;
/* loaded from: classes2.dex */
final class b extends c {

    /* renamed from: a  reason: collision with root package name */
    private final d f22961a;

    /* renamed from: b  reason: collision with root package name */
    private final a f22962b = new a();

    /* renamed from: c  reason: collision with root package name */
    final c.a f22963c;

    /* loaded from: classes2.dex */
    private static final class a extends ByteArrayOutputStream {
        a() {
        }

        byte[] a() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    /* renamed from: io.sentry.cache.tape.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private final class C0207b implements Iterator {

        /* renamed from: a  reason: collision with root package name */
        final Iterator f22964a;

        C0207b(Iterator it) {
            this.f22964a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f22964a.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            try {
                return b.this.f22963c.b((byte[]) this.f22964a.next());
            } catch (IOException e10) {
                throw ((Error) d.t0(e10));
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f22964a.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(d dVar, c.a aVar) {
        this.f22961a = dVar;
        this.f22963c = aVar;
    }

    @Override // io.sentry.cache.tape.c
    public void J0(int i10) {
        this.f22961a.b1(i10);
    }

    @Override // io.sentry.cache.tape.c
    public void clear() {
        this.f22961a.clear();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22961a.close();
    }

    @Override // io.sentry.cache.tape.c
    public void g(Object obj) {
        this.f22962b.reset();
        this.f22963c.a(obj, this.f22962b);
        this.f22961a.o0(this.f22962b.a(), 0, this.f22962b.size());
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return new C0207b(this.f22961a.iterator());
    }

    @Override // io.sentry.cache.tape.c
    public int size() {
        return this.f22961a.size();
    }

    public String toString() {
        return "FileObjectQueue{queueFile=" + this.f22961a + '}';
    }
}
