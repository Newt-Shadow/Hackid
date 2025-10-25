package o6;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.SortedMap;
import o6.o;
/* loaded from: classes.dex */
public abstract class r implements Map, Serializable {

    /* renamed from: d  reason: collision with root package name */
    static final Map.Entry[] f27486d = new Map.Entry[0];

    /* renamed from: a  reason: collision with root package name */
    private transient s f27487a;

    /* renamed from: b  reason: collision with root package name */
    private transient s f27488b;

    /* renamed from: c  reason: collision with root package name */
    private transient o f27489c;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        Comparator f27490a;

        /* renamed from: b  reason: collision with root package name */
        Object[] f27491b;

        /* renamed from: c  reason: collision with root package name */
        int f27492c;

        /* renamed from: d  reason: collision with root package name */
        boolean f27493d;

        /* renamed from: e  reason: collision with root package name */
        C0277a f27494e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: o6.r$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0277a {

            /* renamed from: a  reason: collision with root package name */
            private final Object f27495a;

            /* renamed from: b  reason: collision with root package name */
            private final Object f27496b;

            /* renamed from: c  reason: collision with root package name */
            private final Object f27497c;

            /* JADX INFO: Access modifiers changed from: package-private */
            public C0277a(Object obj, Object obj2, Object obj3) {
                this.f27495a = obj;
                this.f27496b = obj2;
                this.f27497c = obj3;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public IllegalArgumentException a() {
                String valueOf = String.valueOf(this.f27495a);
                String valueOf2 = String.valueOf(this.f27496b);
                String valueOf3 = String.valueOf(this.f27495a);
                String valueOf4 = String.valueOf(this.f27497c);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 39 + valueOf2.length() + valueOf3.length() + valueOf4.length());
                sb2.append("Multiple entries with same key: ");
                sb2.append(valueOf);
                sb2.append("=");
                sb2.append(valueOf2);
                sb2.append(" and ");
                sb2.append(valueOf3);
                sb2.append("=");
                sb2.append(valueOf4);
                return new IllegalArgumentException(sb2.toString());
            }
        }

        public a() {
            this(4);
        }

        private r b(boolean z10) {
            Object[] objArr;
            C0277a c0277a;
            C0277a c0277a2;
            if (z10 && (c0277a2 = this.f27494e) != null) {
                throw c0277a2.a();
            }
            int i10 = this.f27492c;
            if (this.f27490a == null) {
                objArr = this.f27491b;
            } else {
                if (this.f27493d) {
                    this.f27491b = Arrays.copyOf(this.f27491b, i10 * 2);
                }
                objArr = this.f27491b;
                if (!z10) {
                    objArr = e(objArr, this.f27492c);
                    if (objArr.length < this.f27491b.length) {
                        i10 = objArr.length >>> 1;
                    }
                }
                j(objArr, i10, this.f27490a);
            }
            this.f27493d = true;
            k0 q10 = k0.q(i10, objArr, this);
            if (z10 && (c0277a = this.f27494e) != null) {
                throw c0277a.a();
            }
            return q10;
        }

        private void d(int i10) {
            int i11 = i10 * 2;
            Object[] objArr = this.f27491b;
            if (i11 > objArr.length) {
                this.f27491b = Arrays.copyOf(objArr, o.b.c(objArr.length, i11));
                this.f27493d = false;
            }
        }

        private Object[] e(Object[] objArr, int i10) {
            HashSet hashSet = new HashSet();
            BitSet bitSet = new BitSet();
            for (int i11 = i10 - 1; i11 >= 0; i11--) {
                Object obj = objArr[i11 * 2];
                Objects.requireNonNull(obj);
                if (!hashSet.add(obj)) {
                    bitSet.set(i11);
                }
            }
            if (bitSet.isEmpty()) {
                return objArr;
            }
            Object[] objArr2 = new Object[(i10 - bitSet.cardinality()) * 2];
            int i12 = 0;
            int i13 = 0;
            while (i12 < i10 * 2) {
                if (bitSet.get(i12 >>> 1)) {
                    i12 += 2;
                } else {
                    int i14 = i13 + 1;
                    int i15 = i12 + 1;
                    Object obj2 = objArr[i12];
                    Objects.requireNonNull(obj2);
                    objArr2[i13] = obj2;
                    i13 = i14 + 1;
                    i12 = i15 + 1;
                    Object obj3 = objArr[i15];
                    Objects.requireNonNull(obj3);
                    objArr2[i14] = obj3;
                }
            }
            return objArr2;
        }

        static void j(Object[] objArr, int i10, Comparator comparator) {
            Map.Entry[] entryArr = new Map.Entry[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                int i12 = i11 * 2;
                Object obj = objArr[i12];
                Objects.requireNonNull(obj);
                Object obj2 = objArr[i12 + 1];
                Objects.requireNonNull(obj2);
                entryArr[i11] = new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }
            Arrays.sort(entryArr, 0, i10, h0.a(comparator).c(y.j()));
            for (int i13 = 0; i13 < i10; i13++) {
                int i14 = i13 * 2;
                objArr[i14] = entryArr[i13].getKey();
                objArr[i14 + 1] = entryArr[i13].getValue();
            }
        }

        public r a() {
            return c();
        }

        public r c() {
            return b(true);
        }

        public a f(Object obj, Object obj2) {
            d(this.f27492c + 1);
            h.a(obj, obj2);
            Object[] objArr = this.f27491b;
            int i10 = this.f27492c;
            objArr[i10 * 2] = obj;
            objArr[(i10 * 2) + 1] = obj2;
            this.f27492c = i10 + 1;
            return this;
        }

        public a g(Map.Entry entry) {
            return f(entry.getKey(), entry.getValue());
        }

        public a h(Iterable iterable) {
            if (iterable instanceof Collection) {
                d(this.f27492c + ((Collection) iterable).size());
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                g((Map.Entry) it.next());
            }
            return this;
        }

        public a i(Map map) {
            return h(map.entrySet());
        }

        a(int i10) {
            this.f27491b = new Object[i10 * 2];
            this.f27492c = 0;
            this.f27493d = false;
        }
    }

    public static a a() {
        return new a();
    }

    public static r b(Iterable iterable) {
        int i10;
        if (iterable instanceof Collection) {
            i10 = ((Collection) iterable).size();
        } else {
            i10 = 4;
        }
        a aVar = new a(i10);
        aVar.h(iterable);
        return aVar.a();
    }

    public static r c(Map map) {
        if ((map instanceof r) && !(map instanceof SortedMap)) {
            r rVar = (r) map;
            if (!rVar.i()) {
                return rVar;
            }
        }
        return b(map.entrySet());
    }

    public static r k() {
        return k0.f27441h;
    }

    public static r l(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8) {
        h.a(obj, obj2);
        h.a(obj3, obj4);
        h.a(obj5, obj6);
        h.a(obj7, obj8);
        return k0.p(4, new Object[]{obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8});
    }

    public static r m(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10) {
        h.a(obj, obj2);
        h.a(obj3, obj4);
        h.a(obj5, obj6);
        h.a(obj7, obj8);
        h.a(obj9, obj10);
        return k0.p(5, new Object[]{obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10});
    }

    public static r n(Map.Entry... entryArr) {
        return b(Arrays.asList(entryArr));
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    abstract s e();

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return y.c(this, obj);
    }

    abstract s f();

    abstract o g();

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        if (obj3 != null) {
            return obj3;
        }
        return obj2;
    }

    @Override // java.util.Map
    /* renamed from: h */
    public s entrySet() {
        s sVar = this.f27487a;
        if (sVar == null) {
            s e10 = e();
            this.f27487a = e10;
            return e10;
        }
        return sVar;
    }

    @Override // java.util.Map
    public int hashCode() {
        return o0.d(entrySet());
    }

    abstract boolean i();

    @Override // java.util.Map
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    /* renamed from: j */
    public s keySet() {
        s sVar = this.f27488b;
        if (sVar == null) {
            s f10 = f();
            this.f27488b = f10;
            return f10;
        }
        return sVar;
    }

    @Override // java.util.Map
    /* renamed from: o */
    public o values() {
        o oVar = this.f27489c;
        if (oVar == null) {
            o g10 = g();
            this.f27489c = g10;
            return g10;
        }
        return oVar;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return y.i(this);
    }
}
