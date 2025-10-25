package qd;

import java.util.Iterator;
/* loaded from: classes2.dex */
public final class b implements e, c {

    /* renamed from: a  reason: collision with root package name */
    private final e f28743a;

    /* renamed from: b  reason: collision with root package name */
    private final int f28744b;

    /* loaded from: classes2.dex */
    public static final class a implements Iterator, jd.a {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator f28745a;

        /* renamed from: b  reason: collision with root package name */
        private int f28746b;

        a(b bVar) {
            this.f28745a = bVar.f28743a.iterator();
            this.f28746b = bVar.f28744b;
        }

        private final void b() {
            while (this.f28746b > 0 && this.f28745a.hasNext()) {
                this.f28745a.next();
                this.f28746b--;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            b();
            return this.f28745a.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            b();
            return this.f28745a.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public b(e sequence, int i10) {
        boolean z10;
        kotlin.jvm.internal.m.e(sequence, "sequence");
        this.f28743a = sequence;
        this.f28744b = i10;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i10 + '.').toString());
    }

    @Override // qd.c
    public e a(int i10) {
        int i11 = this.f28744b + i10;
        if (i11 < 0) {
            return new b(this, i10);
        }
        return new b(this.f28743a, i11);
    }

    @Override // qd.e
    public Iterator iterator() {
        return new a(this);
    }
}
