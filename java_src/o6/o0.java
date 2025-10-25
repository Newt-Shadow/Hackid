package o6;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import o6.i;
/* loaded from: classes.dex */
public abstract class o0 {

    /* loaded from: classes.dex */
    class a extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f27468a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Set f27469b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: o6.o0$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0276a extends o6.b {

            /* renamed from: c  reason: collision with root package name */
            final Iterator f27470c;

            /* renamed from: d  reason: collision with root package name */
            final Iterator f27471d;

            C0276a() {
                this.f27470c = a.this.f27468a.iterator();
                this.f27471d = a.this.f27469b.iterator();
            }

            @Override // o6.b
            protected Object b() {
                if (this.f27470c.hasNext()) {
                    return this.f27470c.next();
                }
                while (this.f27471d.hasNext()) {
                    Object next = this.f27471d.next();
                    if (!a.this.f27468a.contains(next)) {
                        return next;
                    }
                }
                return c();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Set set, Set set2) {
            super(null);
            this.f27468a = set;
            this.f27469b = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!this.f27468a.contains(obj) && !this.f27469b.contains(obj)) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: d */
        public r0 iterator() {
            return new C0276a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            if (this.f27468a.isEmpty() && this.f27469b.isEmpty()) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int size = this.f27468a.size();
            for (Object obj : this.f27469b) {
                if (!this.f27468a.contains(obj)) {
                    size++;
                }
            }
            return size;
        }
    }

    /* loaded from: classes.dex */
    class b extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f27473a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Set f27474b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a extends o6.b {

            /* renamed from: c  reason: collision with root package name */
            final Iterator f27475c;

            a() {
                this.f27475c = b.this.f27473a.iterator();
            }

            @Override // o6.b
            protected Object b() {
                while (this.f27475c.hasNext()) {
                    Object next = this.f27475c.next();
                    if (b.this.f27474b.contains(next)) {
                        return next;
                    }
                }
                return c();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Set set, Set set2) {
            super(null);
            this.f27473a = set;
            this.f27474b = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (this.f27473a.contains(obj) && this.f27474b.contains(obj)) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection collection) {
            if (this.f27473a.containsAll(collection) && this.f27474b.containsAll(collection)) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: d */
        public r0 iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return Collections.disjoint(this.f27474b, this.f27473a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int i10 = 0;
            for (Object obj : this.f27473a) {
                if (this.f27474b.contains(obj)) {
                    i10++;
                }
            }
            return i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c extends i.a implements Set {
        c(Set set, n6.n nVar) {
            super(set, nVar);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return o0.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return o0.d(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d extends c implements SortedSet {
        d(SortedSet sortedSet, n6.n nVar) {
            super(sortedSet, nVar);
        }

        @Override // java.util.SortedSet
        public Comparator comparator() {
            return ((SortedSet) this.f27431a).comparator();
        }

        @Override // java.util.SortedSet
        public Object first() {
            return u.h(this.f27431a.iterator(), this.f27432b);
        }

        @Override // java.util.SortedSet
        public SortedSet headSet(Object obj) {
            return new d(((SortedSet) this.f27431a).headSet(obj), this.f27432b);
        }

        @Override // java.util.SortedSet
        public Object last() {
            SortedSet sortedSet = (SortedSet) this.f27431a;
            while (true) {
                Object last = sortedSet.last();
                if (this.f27432b.apply(last)) {
                    return last;
                }
                sortedSet = sortedSet.headSet(last);
            }
        }

        @Override // java.util.SortedSet
        public SortedSet subSet(Object obj, Object obj2) {
            return new d(((SortedSet) this.f27431a).subSet(obj, obj2), this.f27432b);
        }

        @Override // java.util.SortedSet
        public SortedSet tailSet(Object obj) {
            return new d(((SortedSet) this.f27431a).tailSet(obj), this.f27432b);
        }
    }

    /* loaded from: classes.dex */
    static abstract class e extends AbstractSet {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection collection) {
            return o0.i(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection collection) {
            return super.retainAll((Collection) n6.m.i(collection));
        }
    }

    /* loaded from: classes.dex */
    public static abstract class f extends AbstractSet {
        /* synthetic */ f(a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        public abstract r0 d();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        private f() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static Set b(Set set, n6.n nVar) {
        if (set instanceof SortedSet) {
            return c((SortedSet) set, nVar);
        }
        if (set instanceof c) {
            c cVar = (c) set;
            return new c((Set) cVar.f27431a, n6.o.b(cVar.f27432b, nVar));
        }
        return new c((Set) n6.m.i(set), (n6.n) n6.m.i(nVar));
    }

    public static SortedSet c(SortedSet sortedSet, n6.n nVar) {
        if (sortedSet instanceof c) {
            c cVar = (c) sortedSet;
            return new d((SortedSet) cVar.f27431a, n6.o.b(cVar.f27432b, nVar));
        }
        return new d((SortedSet) n6.m.i(sortedSet), (n6.n) n6.m.i(nVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(Set set) {
        int i10;
        int i11 = 0;
        for (Object obj : set) {
            if (obj != null) {
                i10 = obj.hashCode();
            } else {
                i10 = 0;
            }
            i11 = ~(~(i11 + i10));
        }
        return i11;
    }

    public static f e(Set set, Set set2) {
        n6.m.j(set, "set1");
        n6.m.j(set2, "set2");
        return new b(set, set2);
    }

    public static HashSet f() {
        return new HashSet();
    }

    public static HashSet g(int i10) {
        return new HashSet(y.a(i10));
    }

    public static Set h() {
        return Collections.newSetFromMap(y.e());
    }

    static boolean i(Set set, Collection collection) {
        n6.m.i(collection);
        if (collection instanceof d0) {
            collection = ((d0) collection).E();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            return u.n(set.iterator(), collection);
        }
        return j(set, collection.iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean j(Set set, Iterator it) {
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= set.remove(it.next());
        }
        return z10;
    }

    public static f k(Set set, Set set2) {
        n6.m.j(set, "set1");
        n6.m.j(set2, "set2");
        return new a(set, set2);
    }
}
