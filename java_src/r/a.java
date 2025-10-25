package r;

import java.lang.reflect.Array;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes.dex */
public class a extends i implements Map {

    /* renamed from: d  reason: collision with root package name */
    C0295a f28802d;

    /* renamed from: e  reason: collision with root package name */
    c f28803e;

    /* renamed from: f  reason: collision with root package name */
    e f28804f;

    /* renamed from: r.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    final class C0295a extends AbstractSet {
        C0295a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a.this.size();
        }
    }

    /* loaded from: classes.dex */
    final class b extends r.e {
        b() {
            super(a.this.size());
        }

        @Override // r.e
        protected Object b(int i10) {
            return a.this.g(i10);
        }

        @Override // r.e
        protected void c(int i10) {
            a.this.i(i10);
        }
    }

    /* loaded from: classes.dex */
    final class d implements Iterator, Map.Entry {

        /* renamed from: a  reason: collision with root package name */
        int f28808a;

        /* renamed from: b  reason: collision with root package name */
        int f28809b = -1;

        /* renamed from: c  reason: collision with root package name */
        boolean f28810c;

        d() {
            this.f28808a = a.this.size() - 1;
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public Map.Entry next() {
            if (hasNext()) {
                this.f28809b++;
                this.f28810c = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this.f28810c) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                if (!s.a.c(entry.getKey(), a.this.g(this.f28809b)) || !s.a.c(entry.getValue(), a.this.k(this.f28809b))) {
                    return false;
                }
                return true;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            if (this.f28810c) {
                return a.this.g(this.f28809b);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            if (this.f28810c) {
                return a.this.k(this.f28809b);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f28809b < this.f28808a) {
                return true;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int hashCode;
            if (this.f28810c) {
                Object g10 = a.this.g(this.f28809b);
                Object k10 = a.this.k(this.f28809b);
                int i10 = 0;
                if (g10 == null) {
                    hashCode = 0;
                } else {
                    hashCode = g10.hashCode();
                }
                if (k10 != null) {
                    i10 = k10.hashCode();
                }
                return hashCode ^ i10;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f28810c) {
                a.this.i(this.f28809b);
                this.f28809b--;
                this.f28808a--;
                this.f28810c = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (this.f28810c) {
                return a.this.j(this.f28809b, obj);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* loaded from: classes.dex */
    final class f extends r.e {
        f() {
            super(a.this.size());
        }

        @Override // r.e
        protected Object b(int i10) {
            return a.this.k(i10);
        }

        @Override // r.e
        protected void c(int i10) {
            a.this.i(i10);
        }
    }

    public a() {
    }

    static boolean m(Set set, Object obj) {
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

    @Override // r.i, java.util.Map
    public boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override // r.i, java.util.Map
    public boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // java.util.Map
    public Set entrySet() {
        C0295a c0295a = this.f28802d;
        if (c0295a == null) {
            C0295a c0295a2 = new C0295a();
            this.f28802d = c0295a2;
            return c0295a2;
        }
        return c0295a;
    }

    @Override // r.i, java.util.Map
    public Object get(Object obj) {
        return super.get(obj);
    }

    @Override // java.util.Map
    public Set keySet() {
        c cVar = this.f28803e;
        if (cVar == null) {
            c cVar2 = new c();
            this.f28803e = cVar2;
            return cVar2;
        }
        return cVar;
    }

    public boolean l(Collection collection) {
        for (Object obj : collection) {
            if (!containsKey(obj)) {
                return false;
            }
        }
        return true;
    }

    public boolean n(Collection collection) {
        int size = size();
        for (Object obj : collection) {
            remove(obj);
        }
        if (size != size()) {
            return true;
        }
        return false;
    }

    public boolean o(Collection collection) {
        int size = size();
        for (int size2 = size() - 1; size2 >= 0; size2--) {
            if (!collection.contains(g(size2))) {
                i(size2);
            }
        }
        if (size != size()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        b(size() + map.size());
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // r.i, java.util.Map
    public Object remove(Object obj) {
        return super.remove(obj);
    }

    @Override // java.util.Map
    public Collection values() {
        e eVar = this.f28804f;
        if (eVar == null) {
            e eVar2 = new e();
            this.f28804f = eVar2;
            return eVar2;
        }
        return eVar;
    }

    public a(int i10) {
        super(i10);
    }

    /* loaded from: classes.dex */
    final class c implements Set {
        c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            a.this.clear();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return a.this.containsKey(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection collection) {
            return a.this.l(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return a.m(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int hashCode;
            int i10 = 0;
            for (int size = a.this.size() - 1; size >= 0; size--) {
                Object g10 = a.this.g(size);
                if (g10 == null) {
                    hashCode = 0;
                } else {
                    hashCode = g10.hashCode();
                }
                i10 += hashCode;
            }
            return i10;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return a.this.isEmpty();
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return new b();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int e10 = a.this.e(obj);
            if (e10 >= 0) {
                a.this.i(e10);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection collection) {
            return a.this.n(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection collection) {
            return a.this.o(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return a.this.size();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            int size = a.this.size();
            Object[] objArr = new Object[size];
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = a.this.g(i10);
            }
            return objArr;
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray(Object[] objArr) {
            int size = size();
            if (objArr.length < size) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), size);
            }
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = a.this.g(i10);
            }
            if (objArr.length > size) {
                objArr[size] = null;
            }
            return objArr;
        }
    }

    /* loaded from: classes.dex */
    final class e implements Collection {
        e() {
        }

        @Override // java.util.Collection
        public boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            a.this.clear();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            if (a.this.a(obj) >= 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection collection) {
            for (Object obj : collection) {
                if (!contains(obj)) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return a.this.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return new f();
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int a10 = a.this.a(obj);
            if (a10 >= 0) {
                a.this.i(a10);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection collection) {
            int size = a.this.size();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < size) {
                if (collection.contains(a.this.k(i10))) {
                    a.this.i(i10);
                    i10--;
                    size--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection collection) {
            int size = a.this.size();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < size) {
                if (!collection.contains(a.this.k(i10))) {
                    a.this.i(i10);
                    i10--;
                    size--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public int size() {
            return a.this.size();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            int size = a.this.size();
            Object[] objArr = new Object[size];
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = a.this.k(i10);
            }
            return objArr;
        }

        @Override // java.util.Collection
        public Object[] toArray(Object[] objArr) {
            int size = size();
            if (objArr.length < size) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), size);
            }
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = a.this.k(i10);
            }
            if (objArr.length > size) {
                objArr[size] = null;
            }
            return objArr;
        }
    }

    public a(i iVar) {
        super(iVar);
    }
}
