package ge;

import java.util.Iterator;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class e {

    /* loaded from: classes2.dex */
    public static final class a implements Iterator, jd.a {

        /* renamed from: a  reason: collision with root package name */
        private int f16415a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f16416b;

        a(d dVar) {
            this.f16416b = dVar;
            this.f16415a = dVar.f();
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public d next() {
            d dVar = this.f16416b;
            int f10 = dVar.f();
            int i10 = this.f16415a;
            this.f16415a = i10 - 1;
            return dVar.i(f10 - i10);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f16415a > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements Iterable, jd.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f16417a;

        public b(d dVar) {
            this.f16417a = dVar;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return new a(this.f16417a);
        }
    }

    public static final Iterable a(d dVar) {
        m.e(dVar, "<this>");
        return new b(dVar);
    }
}
