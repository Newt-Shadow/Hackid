package androidx.datastore.preferences.protobuf;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class h1 extends AbstractMap {

    /* renamed from: a  reason: collision with root package name */
    private List f2176a;

    /* renamed from: b  reason: collision with root package name */
    private Map f2177b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2178c;

    /* renamed from: d  reason: collision with root package name */
    private volatile f f2179d;

    /* renamed from: e  reason: collision with root package name */
    private Map f2180e;

    /* renamed from: f  reason: collision with root package name */
    private volatile c f2181f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends h1 {
        a() {
            super(null);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return super.s((Comparable) obj, obj2);
        }

        @Override // androidx.datastore.preferences.protobuf.h1
        public void q() {
            if (!p()) {
                if (l() <= 0) {
                    Iterator it = n().iterator();
                    if (it.hasNext()) {
                        android.support.v4.media.session.b.a(((Map.Entry) it.next()).getKey());
                        throw null;
                    }
                } else {
                    android.support.v4.media.session.b.a(k(0).getKey());
                    throw null;
                }
            }
            super.q();
        }
    }

    /* loaded from: classes.dex */
    private class c extends f {
        private c() {
            super(h1.this, null);
        }

        @Override // androidx.datastore.preferences.protobuf.h1.f, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new b(h1.this, null);
        }

        /* synthetic */ c(h1 h1Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d implements Map.Entry, Comparable {

        /* renamed from: a  reason: collision with root package name */
        private final Comparable f2186a;

        /* renamed from: b  reason: collision with root package name */
        private Object f2187b;

        d(h1 h1Var, Map.Entry entry) {
            this((Comparable) entry.getKey(), entry.getValue());
        }

        private boolean b(Object obj, Object obj2) {
            if (obj == null) {
                if (obj2 == null) {
                    return true;
                }
                return false;
            }
            return obj.equals(obj2);
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(d dVar) {
            return getKey().compareTo(dVar.getKey());
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (b(this.f2186a, entry.getKey()) && b(this.f2187b, entry.getValue())) {
                return true;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        /* renamed from: f */
        public Comparable getKey() {
            return this.f2186a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f2187b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int hashCode;
            Comparable comparable = this.f2186a;
            int i10 = 0;
            if (comparable == null) {
                hashCode = 0;
            } else {
                hashCode = comparable.hashCode();
            }
            Object obj = this.f2187b;
            if (obj != null) {
                i10 = obj.hashCode();
            }
            return hashCode ^ i10;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            h1.this.h();
            Object obj2 = this.f2187b;
            this.f2187b = obj;
            return obj2;
        }

        public String toString() {
            return this.f2186a + "=" + this.f2187b;
        }

        d(Comparable comparable, Object obj) {
            this.f2186a = comparable;
            this.f2187b = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f extends AbstractSet {
        private f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            h1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = h1.this.get(entry.getKey());
            Object value = entry.getValue();
            if (obj2 != value && (obj2 == null || !obj2.equals(value))) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /* renamed from: d */
        public boolean add(Map.Entry entry) {
            if (!contains(entry)) {
                h1.this.s((Comparable) entry.getKey(), entry.getValue());
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new e(h1.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                h1.this.remove(entry.getKey());
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return h1.this.size();
        }

        /* synthetic */ f(h1 h1Var, a aVar) {
            this();
        }
    }

    /* synthetic */ h1(a aVar) {
        this();
    }

    private int g(Comparable comparable) {
        int size = this.f2176a.size() - 1;
        if (size >= 0) {
            int compareTo = comparable.compareTo(((d) this.f2176a.get(size)).getKey());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i10 = 0;
        while (i10 <= size) {
            int i11 = (i10 + size) / 2;
            int compareTo2 = comparable.compareTo(((d) this.f2176a.get(i11)).getKey());
            if (compareTo2 < 0) {
                size = i11 - 1;
            } else if (compareTo2 > 0) {
                i10 = i11 + 1;
            } else {
                return i11;
            }
        }
        return -(i10 + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (!this.f2178c) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private void j() {
        h();
        if (this.f2176a.isEmpty() && !(this.f2176a instanceof ArrayList)) {
            this.f2176a = new ArrayList(16);
        }
    }

    private SortedMap o() {
        h();
        if (this.f2177b.isEmpty() && !(this.f2177b instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f2177b = treeMap;
            this.f2180e = treeMap.descendingMap();
        }
        return (SortedMap) this.f2177b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h1 r() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object t(int i10) {
        h();
        Object value = ((d) this.f2176a.remove(i10)).getValue();
        if (!this.f2177b.isEmpty()) {
            Iterator it = o().entrySet().iterator();
            this.f2176a.add(new d(this, (Map.Entry) it.next()));
            it.remove();
        }
        return value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        h();
        if (!this.f2176a.isEmpty()) {
            this.f2176a.clear();
        }
        if (!this.f2177b.isEmpty()) {
            this.f2177b.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        if (g(comparable) < 0 && !this.f2177b.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        if (this.f2179d == null) {
            this.f2179d = new f(this, null);
        }
        return this.f2179d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h1)) {
            return super.equals(obj);
        }
        h1 h1Var = (h1) obj;
        int size = size();
        if (size != h1Var.size()) {
            return false;
        }
        int l10 = l();
        if (l10 != h1Var.l()) {
            return entrySet().equals(h1Var.entrySet());
        }
        for (int i10 = 0; i10 < l10; i10++) {
            if (!k(i10).equals(h1Var.k(i10))) {
                return false;
            }
        }
        if (l10 == size) {
            return true;
        }
        return this.f2177b.equals(h1Var.f2177b);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int g10 = g(comparable);
        if (g10 >= 0) {
            return ((d) this.f2176a.get(g10)).getValue();
        }
        return this.f2177b.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int l10 = l();
        int i10 = 0;
        for (int i11 = 0; i11 < l10; i11++) {
            i10 += ((d) this.f2176a.get(i11)).hashCode();
        }
        if (m() > 0) {
            return i10 + this.f2177b.hashCode();
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set i() {
        if (this.f2181f == null) {
            this.f2181f = new c(this, null);
        }
        return this.f2181f;
    }

    public Map.Entry k(int i10) {
        return (Map.Entry) this.f2176a.get(i10);
    }

    public int l() {
        return this.f2176a.size();
    }

    public int m() {
        return this.f2177b.size();
    }

    public Iterable n() {
        if (this.f2177b.isEmpty()) {
            return Collections.emptySet();
        }
        return this.f2177b.entrySet();
    }

    public boolean p() {
        return this.f2178c;
    }

    public void q() {
        Map unmodifiableMap;
        Map unmodifiableMap2;
        if (!this.f2178c) {
            if (this.f2177b.isEmpty()) {
                unmodifiableMap = Collections.emptyMap();
            } else {
                unmodifiableMap = Collections.unmodifiableMap(this.f2177b);
            }
            this.f2177b = unmodifiableMap;
            if (this.f2180e.isEmpty()) {
                unmodifiableMap2 = Collections.emptyMap();
            } else {
                unmodifiableMap2 = Collections.unmodifiableMap(this.f2180e);
            }
            this.f2180e = unmodifiableMap2;
            this.f2178c = true;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        h();
        Comparable comparable = (Comparable) obj;
        int g10 = g(comparable);
        if (g10 >= 0) {
            return t(g10);
        }
        if (this.f2177b.isEmpty()) {
            return null;
        }
        return this.f2177b.remove(comparable);
    }

    public Object s(Comparable comparable, Object obj) {
        h();
        int g10 = g(comparable);
        if (g10 >= 0) {
            return ((d) this.f2176a.get(g10)).setValue(obj);
        }
        j();
        int i10 = -(g10 + 1);
        if (i10 >= 16) {
            return o().put(comparable, obj);
        }
        if (this.f2176a.size() == 16) {
            d dVar = (d) this.f2176a.remove(15);
            o().put(dVar.getKey(), dVar.getValue());
        }
        this.f2176a.add(i10, new d(comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f2176a.size() + this.f2177b.size();
    }

    /* loaded from: classes.dex */
    private class b implements Iterator {

        /* renamed from: a  reason: collision with root package name */
        private int f2182a;

        /* renamed from: b  reason: collision with root package name */
        private Iterator f2183b;

        private b() {
            this.f2182a = h1.this.f2176a.size();
        }

        private Iterator b() {
            if (this.f2183b == null) {
                this.f2183b = h1.this.f2180e.entrySet().iterator();
            }
            return this.f2183b;
        }

        @Override // java.util.Iterator
        /* renamed from: c */
        public Map.Entry next() {
            if (!b().hasNext()) {
                List list = h1.this.f2176a;
                int i10 = this.f2182a - 1;
                this.f2182a = i10;
                return (Map.Entry) list.get(i10);
            }
            return (Map.Entry) b().next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i10 = this.f2182a;
            if ((i10 > 0 && i10 <= h1.this.f2176a.size()) || b().hasNext()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        /* synthetic */ b(h1 h1Var, a aVar) {
            this();
        }
    }

    /* loaded from: classes.dex */
    private class e implements Iterator {

        /* renamed from: a  reason: collision with root package name */
        private int f2189a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f2190b;

        /* renamed from: c  reason: collision with root package name */
        private Iterator f2191c;

        private e() {
            this.f2189a = -1;
        }

        private Iterator b() {
            if (this.f2191c == null) {
                this.f2191c = h1.this.f2177b.entrySet().iterator();
            }
            return this.f2191c;
        }

        @Override // java.util.Iterator
        /* renamed from: c */
        public Map.Entry next() {
            this.f2190b = true;
            int i10 = this.f2189a + 1;
            this.f2189a = i10;
            if (i10 < h1.this.f2176a.size()) {
                return (Map.Entry) h1.this.f2176a.get(this.f2189a);
            }
            return (Map.Entry) b().next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f2189a + 1 < h1.this.f2176a.size()) {
                return true;
            }
            if (!h1.this.f2177b.isEmpty() && b().hasNext()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f2190b) {
                this.f2190b = false;
                h1.this.h();
                if (this.f2189a < h1.this.f2176a.size()) {
                    h1 h1Var = h1.this;
                    int i10 = this.f2189a;
                    this.f2189a = i10 - 1;
                    h1Var.t(i10);
                    return;
                }
                b().remove();
                return;
            }
            throw new IllegalStateException("remove() was called before next()");
        }

        /* synthetic */ e(h1 h1Var, a aVar) {
            this();
        }
    }

    private h1() {
        this.f2176a = Collections.emptyList();
        this.f2177b = Collections.emptyMap();
        this.f2180e = Collections.emptyMap();
    }
}
