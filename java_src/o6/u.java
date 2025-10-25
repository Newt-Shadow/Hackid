package o6;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public abstract class u {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends o6.b {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Iterator f27499c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ n6.n f27500d;

        a(Iterator it, n6.n nVar) {
            this.f27499c = it;
            this.f27500d = nVar;
        }

        @Override // o6.b
        protected Object b() {
            while (this.f27499c.hasNext()) {
                Object next = this.f27499c.next();
                if (this.f27500d.apply(next)) {
                    return next;
                }
            }
            return c();
        }
    }

    /* loaded from: classes.dex */
    class b extends r0 {

        /* renamed from: a  reason: collision with root package name */
        boolean f27501a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f27502b;

        b(Object obj) {
            this.f27502b = obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f27501a;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!this.f27501a) {
                this.f27501a = true;
                return this.f27502b;
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum c implements Iterator {
        INSTANCE;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            h.c(false);
        }
    }

    public static boolean a(Collection collection, Iterator it) {
        n6.m.i(collection);
        n6.m.i(it);
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= collection.add(it.next());
        }
        return z10;
    }

    public static boolean b(Iterator it, n6.n nVar) {
        if (l(it, nVar) != -1) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(Iterator it) {
        n6.m.i(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static boolean d(Iterator it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0006  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean e(java.util.Iterator r3, java.util.Iterator r4) {
        /*
        L0:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L1d
            boolean r0 = r4.hasNext()
            r1 = 0
            if (r0 != 0) goto Le
            return r1
        Le:
            java.lang.Object r0 = r3.next()
            java.lang.Object r2 = r4.next()
            boolean r0 = n6.k.a(r0, r2)
            if (r0 != 0) goto L0
            return r1
        L1d:
            boolean r3 = r4.hasNext()
            r3 = r3 ^ 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: o6.u.e(java.util.Iterator, java.util.Iterator):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Iterator f() {
        return c.INSTANCE;
    }

    public static r0 g(Iterator it, n6.n nVar) {
        n6.m.i(it);
        n6.m.i(nVar);
        return new a(it, nVar);
    }

    public static Object h(Iterator it, n6.n nVar) {
        n6.m.i(it);
        n6.m.i(nVar);
        while (it.hasNext()) {
            Object next = it.next();
            if (nVar.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    public static Object i(Iterator it) {
        Object next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static Object j(Iterator it, Object obj) {
        if (it.hasNext()) {
            return i(it);
        }
        return obj;
    }

    public static Object k(Iterator it, Object obj) {
        if (it.hasNext()) {
            return it.next();
        }
        return obj;
    }

    public static int l(Iterator it, n6.n nVar) {
        n6.m.j(nVar, "predicate");
        int i10 = 0;
        while (it.hasNext()) {
            if (nVar.apply(it.next())) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object m(Iterator it) {
        if (it.hasNext()) {
            Object next = it.next();
            it.remove();
            return next;
        }
        return null;
    }

    public static boolean n(Iterator it, Collection collection) {
        n6.m.i(collection);
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static boolean o(Iterator it, n6.n nVar) {
        n6.m.i(nVar);
        boolean z10 = false;
        while (it.hasNext()) {
            if (nVar.apply(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static r0 p(Object obj) {
        return new b(obj);
    }
}
