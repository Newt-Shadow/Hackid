package o6;

import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import o6.o0;
/* loaded from: classes.dex */
public abstract class y {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends q0 {
        a(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // o6.q0
        /* renamed from: c */
        public Object b(Map.Entry entry) {
            return entry.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static abstract class b implements n6.g {

        /* renamed from: a  reason: collision with root package name */
        public static final b f27505a = new a("KEY", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final b f27506b = new C0278b("VALUE", 1);

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ b[] f27507c = a();

        /* loaded from: classes.dex */
        enum a extends b {
            a(String str, int i10) {
                super(str, i10, null);
            }

            @Override // n6.g
            /* renamed from: b */
            public Object apply(Map.Entry entry) {
                return entry.getKey();
            }
        }

        /* renamed from: o6.y$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        enum C0278b extends b {
            C0278b(String str, int i10) {
                super(str, i10, null);
            }

            @Override // n6.g
            /* renamed from: b */
            public Object apply(Map.Entry entry) {
                return entry.getValue();
            }
        }

        private b(String str, int i10) {
        }

        private static /* synthetic */ b[] a() {
            return new b[]{f27505a, f27506b};
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f27507c.clone();
        }

        /* synthetic */ b(String str, int i10, x xVar) {
            this(str, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class c extends o0.e {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            d().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public abstract boolean contains(Object obj);

        abstract Map d();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return d().isEmpty();
        }

        @Override // o6.o0.e, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection collection) {
            try {
                return super.removeAll((Collection) n6.m.i(collection));
            } catch (UnsupportedOperationException unused) {
                return o0.j(this, collection.iterator());
            }
        }

        @Override // o6.o0.e, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection collection) {
            try {
                return super.retainAll((Collection) n6.m.i(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet g10 = o0.g(collection.size());
                for (Object obj : collection) {
                    if (contains(obj) && (obj instanceof Map.Entry)) {
                        g10.add(((Map.Entry) obj).getKey());
                    }
                }
                return d().keySet().retainAll(g10);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return d().size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class d extends o0.e {

        /* renamed from: a  reason: collision with root package name */
        final Map f27508a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(Map map) {
            this.f27508a = (Map) n6.m.i(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return d().containsKey(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Map d() {
            return this.f27508a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return d().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return d().size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class e extends AbstractCollection {

        /* renamed from: a  reason: collision with root package name */
        final Map f27509a;

        e(Map map) {
            this.f27509a = (Map) n6.m.i(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            d().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return d().containsValue(obj);
        }

        final Map d() {
            return this.f27509a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return d().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return y.k(d().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                for (Map.Entry entry : d().entrySet()) {
                    if (n6.k.a(obj, entry.getValue())) {
                        d().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection collection) {
            try {
                return super.removeAll((Collection) n6.m.i(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet f10 = o0.f();
                for (Map.Entry entry : d().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        f10.add(entry.getKey());
                    }
                }
                return d().keySet().removeAll(f10);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection collection) {
            try {
                return super.retainAll((Collection) n6.m.i(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet f10 = o0.f();
                for (Map.Entry entry : d().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        f10.add(entry.getKey());
                    }
                }
                return d().keySet().retainAll(f10);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return d().size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class f extends AbstractMap {

        /* renamed from: a  reason: collision with root package name */
        private transient Set f27510a;

        /* renamed from: b  reason: collision with root package name */
        private transient Collection f27511b;

        abstract Set a();

        Collection b() {
            return new e(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set entrySet() {
            Set set = this.f27510a;
            if (set == null) {
                Set a10 = a();
                this.f27510a = a10;
                return a10;
            }
            return set;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection values() {
            Collection collection = this.f27511b;
            if (collection == null) {
                Collection b10 = b();
                this.f27511b = b10;
                return b10;
            }
            return collection;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i10) {
        if (i10 < 3) {
            h.b(i10, "expectedSize");
            return i10 + 1;
        } else if (i10 < 1073741824) {
            return (int) ((i10 / 0.75f) + 1.0f);
        } else {
            return Integer.MAX_VALUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Map map, Object obj) {
        return u.d(k(map.entrySet().iterator()), obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Map map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public static Map.Entry d(Object obj, Object obj2) {
        return new p(obj, obj2);
    }

    public static IdentityHashMap e() {
        return new IdentityHashMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f(Map map, Object obj) {
        n6.m.i(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object g(Map map, Object obj) {
        n6.m.i(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object h(Map map, Object obj) {
        n6.m.i(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String i(Map map) {
        StringBuilder b10 = i.b(map.size());
        b10.append('{');
        boolean z10 = true;
        for (Map.Entry entry : map.entrySet()) {
            if (!z10) {
                b10.append(", ");
            }
            b10.append(entry.getKey());
            b10.append('=');
            b10.append(entry.getValue());
            z10 = false;
        }
        b10.append('}');
        return b10.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n6.g j() {
        return b.f27506b;
    }

    static Iterator k(Iterator it) {
        return new a(it);
    }
}
