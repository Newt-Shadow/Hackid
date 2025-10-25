package o6;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import o6.f;
import o6.y;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class d extends o6.f implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private transient Map f27392d;

    /* renamed from: e  reason: collision with root package name */
    private transient int f27393e;

    /* loaded from: classes.dex */
    class a extends c {
        a(d dVar) {
            super();
        }

        @Override // o6.d.c
        Object b(Object obj, Object obj2) {
            return obj2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b extends y.f {

        /* renamed from: c  reason: collision with root package name */
        final transient Map f27394c;

        /* loaded from: classes.dex */
        class a extends y.c {
            a() {
            }

            @Override // o6.y.c, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return o6.i.c(b.this.f27394c.entrySet(), obj);
            }

            @Override // o6.y.c
            Map d() {
                return b.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator iterator() {
                return new C0273b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                d.this.t(entry.getKey());
                return true;
            }
        }

        /* renamed from: o6.d$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0273b implements Iterator {

            /* renamed from: a  reason: collision with root package name */
            final Iterator f27397a;

            /* renamed from: b  reason: collision with root package name */
            Collection f27398b;

            C0273b() {
                this.f27397a = b.this.f27394c.entrySet().iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: b */
            public Map.Entry next() {
                Map.Entry entry = (Map.Entry) this.f27397a.next();
                this.f27398b = (Collection) entry.getValue();
                return b.this.f(entry);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f27397a.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                boolean z10;
                if (this.f27398b != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                n6.m.o(z10, "no calls to next() since the last call to remove()");
                this.f27397a.remove();
                d.m(d.this, this.f27398b.size());
                this.f27398b.clear();
                this.f27398b = null;
            }
        }

        b(Map map) {
            this.f27394c = map;
        }

        @Override // o6.y.f
        protected Set a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: c */
        public Collection get(Object obj) {
            Collection collection = (Collection) y.g(this.f27394c, obj);
            if (collection == null) {
                return null;
            }
            return d.this.v(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.f27394c == d.this.f27392d) {
                d.this.clear();
            } else {
                u.c(new C0273b());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return y.f(this.f27394c, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: e */
        public Collection remove(Object obj) {
            Collection collection = (Collection) this.f27394c.remove(obj);
            if (collection == null) {
                return null;
            }
            Collection o10 = d.this.o();
            o10.addAll(collection);
            d.m(d.this, collection.size());
            collection.clear();
            return o10;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(Object obj) {
            if (this != obj && !this.f27394c.equals(obj)) {
                return false;
            }
            return true;
        }

        Map.Entry f(Map.Entry entry) {
            Object key = entry.getKey();
            return y.d(key, d.this.v(key, (Collection) entry.getValue()));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f27394c.hashCode();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set keySet() {
            return d.this.f();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f27394c.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.f27394c.toString();
        }
    }

    /* loaded from: classes.dex */
    private abstract class c implements Iterator {

        /* renamed from: a  reason: collision with root package name */
        final Iterator f27400a;

        /* renamed from: b  reason: collision with root package name */
        Object f27401b = null;

        /* renamed from: c  reason: collision with root package name */
        Collection f27402c = null;

        /* renamed from: d  reason: collision with root package name */
        Iterator f27403d = u.f();

        c() {
            this.f27400a = d.this.f27392d.entrySet().iterator();
        }

        abstract Object b(Object obj, Object obj2);

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (!this.f27400a.hasNext() && !this.f27403d.hasNext()) {
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!this.f27403d.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f27400a.next();
                this.f27401b = entry.getKey();
                Collection collection = (Collection) entry.getValue();
                this.f27402c = collection;
                this.f27403d = collection.iterator();
            }
            return b(f0.a(this.f27401b), this.f27403d.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f27403d.remove();
            Collection collection = this.f27402c;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.f27400a.remove();
            }
            d.k(d.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o6.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0274d extends y.d {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: o6.d$d$a */
        /* loaded from: classes.dex */
        public class a implements Iterator {

            /* renamed from: a  reason: collision with root package name */
            Map.Entry f27406a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Iterator f27407b;

            a(Iterator it) {
                this.f27407b = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f27407b.hasNext();
            }

            @Override // java.util.Iterator
            public Object next() {
                Map.Entry entry = (Map.Entry) this.f27407b.next();
                this.f27406a = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                boolean z10;
                if (this.f27406a != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                n6.m.o(z10, "no calls to next() since the last call to remove()");
                Collection collection = (Collection) this.f27406a.getValue();
                this.f27407b.remove();
                d.m(d.this, collection.size());
                collection.clear();
                this.f27406a = null;
            }
        }

        C0274d(Map map) {
            super(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            u.c(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection collection) {
            return d().keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            if (this != obj && !d().keySet().equals(obj)) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return d().keySet().hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new a(d().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int i10;
            Collection collection = (Collection) d().remove(obj);
            if (collection != null) {
                i10 = collection.size();
                collection.clear();
                d.m(d.this, i10);
            } else {
                i10 = 0;
            }
            if (i10 <= 0) {
                return false;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e extends h implements NavigableMap {
        e(NavigableMap navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableMap
        public Map.Entry ceilingEntry(Object obj) {
            Map.Entry ceilingEntry = i().ceilingEntry(obj);
            if (ceilingEntry == null) {
                return null;
            }
            return f(ceilingEntry);
        }

        @Override // java.util.NavigableMap
        public Object ceilingKey(Object obj) {
            return i().ceilingKey(obj);
        }

        @Override // java.util.NavigableMap
        public NavigableSet descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap descendingMap() {
            return new e(i().descendingMap());
        }

        @Override // java.util.NavigableMap
        public Map.Entry firstEntry() {
            Map.Entry firstEntry = i().firstEntry();
            if (firstEntry == null) {
                return null;
            }
            return f(firstEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry floorEntry(Object obj) {
            Map.Entry floorEntry = i().floorEntry(obj);
            if (floorEntry == null) {
                return null;
            }
            return f(floorEntry);
        }

        @Override // java.util.NavigableMap
        public Object floorKey(Object obj) {
            return i().floorKey(obj);
        }

        @Override // java.util.NavigableMap
        public Map.Entry higherEntry(Object obj) {
            Map.Entry higherEntry = i().higherEntry(obj);
            if (higherEntry == null) {
                return null;
            }
            return f(higherEntry);
        }

        @Override // java.util.NavigableMap
        public Object higherKey(Object obj) {
            return i().higherKey(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // o6.d.h
        /* renamed from: j */
        public NavigableSet g() {
            return new f(i());
        }

        @Override // o6.d.h, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: k */
        public NavigableMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // o6.d.h, o6.d.b, java.util.AbstractMap, java.util.Map
        /* renamed from: l */
        public NavigableSet keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry lastEntry() {
            Map.Entry lastEntry = i().lastEntry();
            if (lastEntry == null) {
                return null;
            }
            return f(lastEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry lowerEntry(Object obj) {
            Map.Entry lowerEntry = i().lowerEntry(obj);
            if (lowerEntry == null) {
                return null;
            }
            return f(lowerEntry);
        }

        @Override // java.util.NavigableMap
        public Object lowerKey(Object obj) {
            return i().lowerKey(obj);
        }

        Map.Entry m(Iterator it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) it.next();
            Collection o10 = d.this.o();
            o10.addAll((Collection) entry.getValue());
            it.remove();
            return y.d(entry.getKey(), d.this.u(o10));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // o6.d.h
        /* renamed from: n */
        public NavigableMap i() {
            return (NavigableMap) super.i();
        }

        @Override // java.util.NavigableMap
        public NavigableSet navigableKeySet() {
            return keySet();
        }

        @Override // o6.d.h, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: o */
        public NavigableMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // o6.d.h, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: p */
        public NavigableMap tailMap(Object obj) {
            return tailMap(obj, true);
        }

        @Override // java.util.NavigableMap
        public Map.Entry pollFirstEntry() {
            return m(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public Map.Entry pollLastEntry() {
            return m(descendingMap().entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public NavigableMap headMap(Object obj, boolean z10) {
            return new e(i().headMap(obj, z10));
        }

        @Override // java.util.NavigableMap
        public NavigableMap subMap(Object obj, boolean z10, Object obj2, boolean z11) {
            return new e(i().subMap(obj, z10, obj2, z11));
        }

        @Override // java.util.NavigableMap
        public NavigableMap tailMap(Object obj, boolean z10) {
            return new e(i().tailMap(obj, z10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f extends i implements NavigableSet {
        f(NavigableMap navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableSet
        public Object ceiling(Object obj) {
            return g().ceilingKey(obj);
        }

        @Override // java.util.NavigableSet
        public Iterator descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet descendingSet() {
            return new f(g().descendingMap());
        }

        @Override // java.util.NavigableSet
        public Object floor(Object obj) {
            return g().floorKey(obj);
        }

        @Override // java.util.NavigableSet
        public Object higher(Object obj) {
            return g().higherKey(obj);
        }

        @Override // o6.d.i, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: i */
        public NavigableSet headSet(Object obj) {
            return headSet(obj, false);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // o6.d.i
        /* renamed from: l */
        public NavigableMap g() {
            return (NavigableMap) super.g();
        }

        @Override // java.util.NavigableSet
        public Object lower(Object obj) {
            return g().lowerKey(obj);
        }

        @Override // o6.d.i, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: m */
        public NavigableSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // o6.d.i, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: n */
        public NavigableSet tailSet(Object obj) {
            return tailSet(obj, true);
        }

        @Override // java.util.NavigableSet
        public Object pollFirst() {
            return u.m(iterator());
        }

        @Override // java.util.NavigableSet
        public Object pollLast() {
            return u.m(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet headSet(Object obj, boolean z10) {
            return new f(g().headMap(obj, z10));
        }

        @Override // java.util.NavigableSet
        public NavigableSet subSet(Object obj, boolean z10, Object obj2, boolean z11) {
            return new f(g().subMap(obj, z10, obj2, z11));
        }

        @Override // java.util.NavigableSet
        public NavigableSet tailSet(Object obj, boolean z10) {
            return new f(g().tailMap(obj, z10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class g extends k implements RandomAccess {
        g(d dVar, Object obj, List list, j jVar) {
            super(obj, list, jVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class h extends b implements SortedMap {

        /* renamed from: e  reason: collision with root package name */
        SortedSet f27411e;

        h(SortedMap sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedMap
        public Comparator comparator() {
            return i().comparator();
        }

        @Override // java.util.SortedMap
        public Object firstKey() {
            return i().firstKey();
        }

        SortedSet g() {
            return new i(i());
        }

        @Override // o6.d.b, java.util.AbstractMap, java.util.Map
        /* renamed from: h */
        public SortedSet keySet() {
            SortedSet sortedSet = this.f27411e;
            if (sortedSet == null) {
                SortedSet g10 = g();
                this.f27411e = g10;
                return g10;
            }
            return sortedSet;
        }

        public SortedMap headMap(Object obj) {
            return new h(i().headMap(obj));
        }

        SortedMap i() {
            return (SortedMap) this.f27394c;
        }

        @Override // java.util.SortedMap
        public Object lastKey() {
            return i().lastKey();
        }

        public SortedMap subMap(Object obj, Object obj2) {
            return new h(i().subMap(obj, obj2));
        }

        public SortedMap tailMap(Object obj) {
            return new h(i().tailMap(obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class i extends C0274d implements SortedSet {
        i(SortedMap sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedSet
        public Comparator comparator() {
            return g().comparator();
        }

        @Override // java.util.SortedSet
        public Object first() {
            return g().firstKey();
        }

        SortedMap g() {
            return (SortedMap) super.d();
        }

        public SortedSet headSet(Object obj) {
            return new i(g().headMap(obj));
        }

        @Override // java.util.SortedSet
        public Object last() {
            return g().lastKey();
        }

        public SortedSet subSet(Object obj, Object obj2) {
            return new i(g().subMap(obj, obj2));
        }

        public SortedSet tailSet(Object obj) {
            return new i(g().tailMap(obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(Map map) {
        n6.m.d(map.isEmpty());
        this.f27392d = map;
    }

    static /* synthetic */ int j(d dVar) {
        int i10 = dVar.f27393e;
        dVar.f27393e = i10 + 1;
        return i10;
    }

    static /* synthetic */ int k(d dVar) {
        int i10 = dVar.f27393e;
        dVar.f27393e = i10 - 1;
        return i10;
    }

    static /* synthetic */ int l(d dVar, int i10) {
        int i11 = dVar.f27393e + i10;
        dVar.f27393e = i11;
        return i11;
    }

    static /* synthetic */ int m(d dVar, int i10) {
        int i11 = dVar.f27393e - i10;
        dVar.f27393e = i11;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Iterator s(Collection collection) {
        if (collection instanceof List) {
            return ((List) collection).listIterator();
        }
        return collection.iterator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(Object obj) {
        Collection collection = (Collection) y.h(this.f27392d, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.f27393e -= size;
        }
    }

    @Override // o6.z
    public void clear() {
        for (Collection collection : this.f27392d.values()) {
            collection.clear();
        }
        this.f27392d.clear();
        this.f27393e = 0;
    }

    @Override // o6.f
    Collection e() {
        return new f.a();
    }

    @Override // o6.f
    Iterator g() {
        return new a(this);
    }

    abstract Collection o();

    Collection p(Object obj) {
        return o();
    }

    @Override // o6.z
    public boolean put(Object obj, Object obj2) {
        Collection collection = (Collection) this.f27392d.get(obj);
        if (collection == null) {
            Collection p10 = p(obj);
            if (p10.add(obj2)) {
                this.f27393e++;
                this.f27392d.put(obj, p10);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        } else if (collection.add(obj2)) {
            this.f27393e++;
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map q() {
        Map map = this.f27392d;
        if (map instanceof NavigableMap) {
            return new e((NavigableMap) this.f27392d);
        }
        if (map instanceof SortedMap) {
            return new h((SortedMap) this.f27392d);
        }
        return new b(this.f27392d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set r() {
        Map map = this.f27392d;
        if (map instanceof NavigableMap) {
            return new f((NavigableMap) this.f27392d);
        }
        if (map instanceof SortedMap) {
            return new i((SortedMap) this.f27392d);
        }
        return new C0274d(this.f27392d);
    }

    @Override // o6.z
    public int size() {
        return this.f27393e;
    }

    abstract Collection u(Collection collection);

    abstract Collection v(Object obj, Collection collection);

    @Override // o6.f, o6.z
    public Collection values() {
        return super.values();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List w(Object obj, List list, j jVar) {
        if (list instanceof RandomAccess) {
            return new g(this, obj, list, jVar);
        }
        return new k(obj, list, jVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class j extends AbstractCollection {

        /* renamed from: a  reason: collision with root package name */
        final Object f27414a;

        /* renamed from: b  reason: collision with root package name */
        Collection f27415b;

        /* renamed from: c  reason: collision with root package name */
        final j f27416c;

        /* renamed from: d  reason: collision with root package name */
        final Collection f27417d;

        j(Object obj, Collection collection, j jVar) {
            Collection i10;
            this.f27414a = obj;
            this.f27415b = collection;
            this.f27416c = jVar;
            if (jVar == null) {
                i10 = null;
            } else {
                i10 = jVar.i();
            }
            this.f27417d = i10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(Object obj) {
            m();
            boolean isEmpty = this.f27415b.isEmpty();
            boolean add = this.f27415b.add(obj);
            if (add) {
                d.j(d.this);
                if (isEmpty) {
                    d();
                }
            }
            return add;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = this.f27415b.addAll(collection);
            if (addAll) {
                d.l(d.this, this.f27415b.size() - size);
                if (size == 0) {
                    d();
                }
            }
            return addAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f27415b.clear();
            d.m(d.this, size);
            n();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            m();
            return this.f27415b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection collection) {
            m();
            return this.f27415b.containsAll(collection);
        }

        void d() {
            j jVar = this.f27416c;
            if (jVar != null) {
                jVar.d();
            } else {
                d.this.f27392d.put(this.f27414a, this.f27415b);
            }
        }

        @Override // java.util.Collection
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            m();
            return this.f27415b.equals(obj);
        }

        j g() {
            return this.f27416c;
        }

        @Override // java.util.Collection
        public int hashCode() {
            m();
            return this.f27415b.hashCode();
        }

        Collection i() {
            return this.f27415b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            m();
            return new a();
        }

        Object l() {
            return this.f27414a;
        }

        void m() {
            Collection collection;
            j jVar = this.f27416c;
            if (jVar != null) {
                jVar.m();
                if (this.f27416c.i() != this.f27417d) {
                    throw new ConcurrentModificationException();
                }
            } else if (this.f27415b.isEmpty() && (collection = (Collection) d.this.f27392d.get(this.f27414a)) != null) {
                this.f27415b = collection;
            }
        }

        void n() {
            j jVar = this.f27416c;
            if (jVar != null) {
                jVar.n();
            } else if (this.f27415b.isEmpty()) {
                d.this.f27392d.remove(this.f27414a);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            m();
            boolean remove = this.f27415b.remove(obj);
            if (remove) {
                d.k(d.this);
                n();
            }
            return remove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.f27415b.removeAll(collection);
            if (removeAll) {
                d.l(d.this, this.f27415b.size() - size);
                n();
            }
            return removeAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection collection) {
            n6.m.i(collection);
            int size = size();
            boolean retainAll = this.f27415b.retainAll(collection);
            if (retainAll) {
                d.l(d.this, this.f27415b.size() - size);
                n();
            }
            return retainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            m();
            return this.f27415b.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            m();
            return this.f27415b.toString();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a implements Iterator {

            /* renamed from: a  reason: collision with root package name */
            final Iterator f27419a;

            /* renamed from: b  reason: collision with root package name */
            final Collection f27420b;

            a() {
                Collection collection = j.this.f27415b;
                this.f27420b = collection;
                this.f27419a = d.s(collection);
            }

            Iterator b() {
                c();
                return this.f27419a;
            }

            void c() {
                j.this.m();
                if (j.this.f27415b == this.f27420b) {
                    return;
                }
                throw new ConcurrentModificationException();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                c();
                return this.f27419a.hasNext();
            }

            @Override // java.util.Iterator
            public Object next() {
                c();
                return this.f27419a.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f27419a.remove();
                d.k(d.this);
                j.this.n();
            }

            a(Iterator it) {
                this.f27420b = j.this.f27415b;
                this.f27419a = it;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class k extends j implements List {

        /* loaded from: classes.dex */
        private class a extends j.a implements ListIterator {
            a() {
                super();
            }

            private ListIterator d() {
                return (ListIterator) b();
            }

            @Override // java.util.ListIterator
            public void add(Object obj) {
                boolean isEmpty = k.this.isEmpty();
                d().add(obj);
                d.j(d.this);
                if (isEmpty) {
                    k.this.d();
                }
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return d().hasPrevious();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return d().nextIndex();
            }

            @Override // java.util.ListIterator
            public Object previous() {
                return d().previous();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return d().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(Object obj) {
                d().set(obj);
            }

            public a(int i10) {
                super(k.this.o().listIterator(i10));
            }
        }

        k(Object obj, List list, j jVar) {
            super(obj, list, jVar);
        }

        @Override // java.util.List
        public void add(int i10, Object obj) {
            m();
            boolean isEmpty = i().isEmpty();
            o().add(i10, obj);
            d.j(d.this);
            if (isEmpty) {
                d();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i10, Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = o().addAll(i10, collection);
            if (addAll) {
                d.l(d.this, i().size() - size);
                if (size == 0) {
                    d();
                }
            }
            return addAll;
        }

        @Override // java.util.List
        public Object get(int i10) {
            m();
            return o().get(i10);
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            m();
            return o().indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            m();
            return o().lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator listIterator() {
            m();
            return new a();
        }

        List o() {
            return (List) i();
        }

        @Override // java.util.List
        public Object remove(int i10) {
            m();
            Object remove = o().remove(i10);
            d.k(d.this);
            n();
            return remove;
        }

        @Override // java.util.List
        public Object set(int i10, Object obj) {
            m();
            return o().set(i10, obj);
        }

        @Override // java.util.List
        public List subList(int i10, int i11) {
            j g10;
            m();
            d dVar = d.this;
            Object l10 = l();
            List subList = o().subList(i10, i11);
            if (g() == null) {
                g10 = this;
            } else {
                g10 = g();
            }
            return dVar.w(l10, subList, g10);
        }

        @Override // java.util.List
        public ListIterator listIterator(int i10) {
            m();
            return new a(i10);
        }
    }
}
