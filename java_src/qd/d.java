package qd;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d implements e {

    /* renamed from: a  reason: collision with root package name */
    private final id.a f28747a;

    /* renamed from: b  reason: collision with root package name */
    private final id.l f28748b;

    /* loaded from: classes2.dex */
    public static final class a implements Iterator, jd.a {

        /* renamed from: a  reason: collision with root package name */
        private Object f28749a;

        /* renamed from: b  reason: collision with root package name */
        private int f28750b = -2;

        a() {
        }

        private final void b() {
            Object invoke;
            int i10;
            if (this.f28750b != -2) {
                id.l lVar = d.this.f28748b;
                Object obj = this.f28749a;
                kotlin.jvm.internal.m.b(obj);
                invoke = lVar.invoke(obj);
            } else {
                invoke = d.this.f28747a.invoke();
            }
            this.f28749a = invoke;
            if (invoke == null) {
                i10 = 0;
            } else {
                i10 = 1;
            }
            this.f28750b = i10;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f28750b < 0) {
                b();
            }
            if (this.f28750b == 1) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.f28750b < 0) {
                b();
            }
            if (this.f28750b != 0) {
                Object obj = this.f28749a;
                kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
                this.f28750b = -1;
                return obj;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public d(id.a getInitialValue, id.l getNextValue) {
        kotlin.jvm.internal.m.e(getInitialValue, "getInitialValue");
        kotlin.jvm.internal.m.e(getNextValue, "getNextValue");
        this.f28747a = getInitialValue;
        this.f28748b = getNextValue;
    }

    @Override // qd.e
    public Iterator iterator() {
        return new a();
    }
}
