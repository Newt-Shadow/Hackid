package qd;

import java.util.Iterator;
/* loaded from: classes2.dex */
public final class m implements e {

    /* renamed from: a  reason: collision with root package name */
    private final e f28755a;

    /* renamed from: b  reason: collision with root package name */
    private final id.l f28756b;

    /* loaded from: classes2.dex */
    public static final class a implements Iterator, jd.a {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator f28757a;

        a() {
            this.f28757a = m.this.f28755a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f28757a.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            return m.this.f28756b.invoke(this.f28757a.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public m(e sequence, id.l transformer) {
        kotlin.jvm.internal.m.e(sequence, "sequence");
        kotlin.jvm.internal.m.e(transformer, "transformer");
        this.f28755a = sequence;
        this.f28756b = transformer;
    }

    @Override // qd.e
    public Iterator iterator() {
        return new a();
    }
}
