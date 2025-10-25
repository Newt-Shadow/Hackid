package com.google.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes.dex */
public final class y extends AbstractMap implements Serializable {

    /* renamed from: i  reason: collision with root package name */
    private static final Comparator f9323i = new a();

    /* renamed from: a  reason: collision with root package name */
    private final Comparator f9324a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f9325b;

    /* renamed from: c  reason: collision with root package name */
    e f9326c;

    /* renamed from: d  reason: collision with root package name */
    int f9327d;

    /* renamed from: e  reason: collision with root package name */
    int f9328e;

    /* renamed from: f  reason: collision with root package name */
    final e f9329f;

    /* renamed from: g  reason: collision with root package name */
    private b f9330g;

    /* renamed from: h  reason: collision with root package name */
    private c f9331h;

    /* loaded from: classes.dex */
    class a implements Comparator {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* loaded from: classes.dex */
    class b extends AbstractSet {

        /* loaded from: classes.dex */
        class a extends d {
            a() {
                super();
            }

            @Override // java.util.Iterator
            /* renamed from: c */
            public Map.Entry next() {
                return b();
            }
        }

        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            y.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if ((obj instanceof Map.Entry) && y.this.c((Map.Entry) obj) != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            e c10;
            if (!(obj instanceof Map.Entry) || (c10 = y.this.c((Map.Entry) obj)) == null) {
                return false;
            }
            y.this.g(c10, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return y.this.f9327d;
        }
    }

    /* loaded from: classes.dex */
    final class c extends AbstractSet {

        /* loaded from: classes.dex */
        class a extends d {
            a() {
                super();
            }

            @Override // java.util.Iterator
            public Object next() {
                return b().f9345f;
            }
        }

        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            y.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return y.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (y.this.h(obj) != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return y.this.f9327d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public abstract class d implements Iterator {

        /* renamed from: a  reason: collision with root package name */
        e f9336a;

        /* renamed from: b  reason: collision with root package name */
        e f9337b = null;

        /* renamed from: c  reason: collision with root package name */
        int f9338c;

        d() {
            this.f9336a = y.this.f9329f.f9343d;
            this.f9338c = y.this.f9328e;
        }

        final e b() {
            e eVar = this.f9336a;
            y yVar = y.this;
            if (eVar != yVar.f9329f) {
                if (yVar.f9328e == this.f9338c) {
                    this.f9336a = eVar.f9343d;
                    this.f9337b = eVar;
                    return eVar;
                }
                throw new ConcurrentModificationException();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f9336a != y.this.f9329f) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e eVar = this.f9337b;
            if (eVar != null) {
                y.this.g(eVar, true);
                this.f9337b = null;
                this.f9338c = y.this.f9328e;
                return;
            }
            throw new IllegalStateException();
        }
    }

    public y() {
        this(f9323i, true);
    }

    private static boolean a(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    private void f(e eVar, boolean z10) {
        int i10;
        int i11;
        int i12;
        int i13;
        while (eVar != null) {
            e eVar2 = eVar.f9341b;
            e eVar3 = eVar.f9342c;
            int i14 = 0;
            if (eVar2 != null) {
                i10 = eVar2.f9348i;
            } else {
                i10 = 0;
            }
            if (eVar3 != null) {
                i11 = eVar3.f9348i;
            } else {
                i11 = 0;
            }
            int i15 = i10 - i11;
            if (i15 == -2) {
                e eVar4 = eVar3.f9341b;
                e eVar5 = eVar3.f9342c;
                if (eVar5 != null) {
                    i13 = eVar5.f9348i;
                } else {
                    i13 = 0;
                }
                if (eVar4 != null) {
                    i14 = eVar4.f9348i;
                }
                int i16 = i14 - i13;
                if (i16 != -1 && (i16 != 0 || z10)) {
                    k(eVar3);
                    j(eVar);
                } else {
                    j(eVar);
                }
                if (z10) {
                    return;
                }
            } else if (i15 == 2) {
                e eVar6 = eVar2.f9341b;
                e eVar7 = eVar2.f9342c;
                if (eVar7 != null) {
                    i12 = eVar7.f9348i;
                } else {
                    i12 = 0;
                }
                if (eVar6 != null) {
                    i14 = eVar6.f9348i;
                }
                int i17 = i14 - i12;
                if (i17 != 1 && (i17 != 0 || z10)) {
                    j(eVar2);
                    k(eVar);
                } else {
                    k(eVar);
                }
                if (z10) {
                    return;
                }
            } else if (i15 == 0) {
                eVar.f9348i = i10 + 1;
                if (z10) {
                    return;
                }
            } else {
                eVar.f9348i = Math.max(i10, i11) + 1;
                if (!z10) {
                    return;
                }
            }
            eVar = eVar.f9340a;
        }
    }

    private void i(e eVar, e eVar2) {
        e eVar3 = eVar.f9340a;
        eVar.f9340a = null;
        if (eVar2 != null) {
            eVar2.f9340a = eVar3;
        }
        if (eVar3 != null) {
            if (eVar3.f9341b == eVar) {
                eVar3.f9341b = eVar2;
                return;
            } else {
                eVar3.f9342c = eVar2;
                return;
            }
        }
        this.f9326c = eVar2;
    }

    private void j(e eVar) {
        int i10;
        int i11;
        e eVar2 = eVar.f9341b;
        e eVar3 = eVar.f9342c;
        e eVar4 = eVar3.f9341b;
        e eVar5 = eVar3.f9342c;
        eVar.f9342c = eVar4;
        if (eVar4 != null) {
            eVar4.f9340a = eVar;
        }
        i(eVar, eVar3);
        eVar3.f9341b = eVar;
        eVar.f9340a = eVar3;
        int i12 = 0;
        if (eVar2 != null) {
            i10 = eVar2.f9348i;
        } else {
            i10 = 0;
        }
        if (eVar4 != null) {
            i11 = eVar4.f9348i;
        } else {
            i11 = 0;
        }
        int max = Math.max(i10, i11) + 1;
        eVar.f9348i = max;
        if (eVar5 != null) {
            i12 = eVar5.f9348i;
        }
        eVar3.f9348i = Math.max(max, i12) + 1;
    }

    private void k(e eVar) {
        int i10;
        int i11;
        e eVar2 = eVar.f9341b;
        e eVar3 = eVar.f9342c;
        e eVar4 = eVar2.f9341b;
        e eVar5 = eVar2.f9342c;
        eVar.f9341b = eVar5;
        if (eVar5 != null) {
            eVar5.f9340a = eVar;
        }
        i(eVar, eVar2);
        eVar2.f9342c = eVar;
        eVar.f9340a = eVar2;
        int i12 = 0;
        if (eVar3 != null) {
            i10 = eVar3.f9348i;
        } else {
            i10 = 0;
        }
        if (eVar5 != null) {
            i11 = eVar5.f9348i;
        } else {
            i11 = 0;
        }
        int max = Math.max(i10, i11) + 1;
        eVar.f9348i = max;
        if (eVar4 != null) {
            i12 = eVar4.f9348i;
        }
        eVar2.f9348i = Math.max(max, i12) + 1;
    }

    e b(Object obj, boolean z10) {
        int i10;
        e eVar;
        Comparable comparable;
        e eVar2;
        Comparator comparator = this.f9324a;
        e eVar3 = this.f9326c;
        if (eVar3 != null) {
            if (comparator == f9323i) {
                comparable = (Comparable) obj;
            } else {
                comparable = null;
            }
            while (true) {
                if (comparable != null) {
                    i10 = comparable.compareTo(eVar3.f9345f);
                } else {
                    i10 = comparator.compare(obj, eVar3.f9345f);
                }
                if (i10 == 0) {
                    return eVar3;
                }
                if (i10 < 0) {
                    eVar2 = eVar3.f9341b;
                } else {
                    eVar2 = eVar3.f9342c;
                }
                if (eVar2 == null) {
                    break;
                }
                eVar3 = eVar2;
            }
        } else {
            i10 = 0;
        }
        if (!z10) {
            return null;
        }
        e eVar4 = this.f9329f;
        if (eVar3 == null) {
            if (comparator == f9323i && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName() + " is not Comparable");
            }
            eVar = new e(this.f9325b, eVar3, obj, eVar4, eVar4.f9344e);
            this.f9326c = eVar;
        } else {
            eVar = new e(this.f9325b, eVar3, obj, eVar4, eVar4.f9344e);
            if (i10 < 0) {
                eVar3.f9341b = eVar;
            } else {
                eVar3.f9342c = eVar;
            }
            f(eVar3, true);
        }
        this.f9327d++;
        this.f9328e++;
        return eVar;
    }

    e c(Map.Entry entry) {
        boolean z10;
        e e10 = e(entry.getKey());
        if (e10 != null && a(e10.f9347h, entry.getValue())) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            return null;
        }
        return e10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f9326c = null;
        this.f9327d = 0;
        this.f9328e++;
        e eVar = this.f9329f;
        eVar.f9344e = eVar;
        eVar.f9343d = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (e(obj) != null) {
            return true;
        }
        return false;
    }

    e e(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return b(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        b bVar = this.f9330g;
        if (bVar == null) {
            b bVar2 = new b();
            this.f9330g = bVar2;
            return bVar2;
        }
        return bVar;
    }

    void g(e eVar, boolean z10) {
        e a10;
        int i10;
        if (z10) {
            e eVar2 = eVar.f9344e;
            eVar2.f9343d = eVar.f9343d;
            eVar.f9343d.f9344e = eVar2;
        }
        e eVar3 = eVar.f9341b;
        e eVar4 = eVar.f9342c;
        e eVar5 = eVar.f9340a;
        int i11 = 0;
        if (eVar3 != null && eVar4 != null) {
            if (eVar3.f9348i > eVar4.f9348i) {
                a10 = eVar3.b();
            } else {
                a10 = eVar4.a();
            }
            g(a10, false);
            e eVar6 = eVar.f9341b;
            if (eVar6 != null) {
                i10 = eVar6.f9348i;
                a10.f9341b = eVar6;
                eVar6.f9340a = a10;
                eVar.f9341b = null;
            } else {
                i10 = 0;
            }
            e eVar7 = eVar.f9342c;
            if (eVar7 != null) {
                i11 = eVar7.f9348i;
                a10.f9342c = eVar7;
                eVar7.f9340a = a10;
                eVar.f9342c = null;
            }
            a10.f9348i = Math.max(i10, i11) + 1;
            i(eVar, a10);
            return;
        }
        if (eVar3 != null) {
            i(eVar, eVar3);
            eVar.f9341b = null;
        } else if (eVar4 != null) {
            i(eVar, eVar4);
            eVar.f9342c = null;
        } else {
            i(eVar, null);
        }
        f(eVar5, false);
        this.f9327d--;
        this.f9328e++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        e e10 = e(obj);
        if (e10 != null) {
            return e10.f9347h;
        }
        return null;
    }

    e h(Object obj) {
        e e10 = e(obj);
        if (e10 != null) {
            g(e10, true);
        }
        return e10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        c cVar = this.f9331h;
        if (cVar == null) {
            c cVar2 = new c();
            this.f9331h = cVar2;
            return cVar2;
        }
        return cVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 == null && !this.f9325b) {
                throw new NullPointerException("value == null");
            }
            e b10 = b(obj, true);
            Object obj3 = b10.f9347h;
            b10.f9347h = obj2;
            return obj3;
        }
        throw new NullPointerException("key == null");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        e h10 = h(obj);
        if (h10 != null) {
            return h10.f9347h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f9327d;
    }

    public y(boolean z10) {
        this(f9323i, z10);
    }

    public y(Comparator comparator, boolean z10) {
        this.f9327d = 0;
        this.f9328e = 0;
        this.f9324a = comparator == null ? f9323i : comparator;
        this.f9325b = z10;
        this.f9329f = new e(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class e implements Map.Entry {

        /* renamed from: a  reason: collision with root package name */
        e f9340a;

        /* renamed from: b  reason: collision with root package name */
        e f9341b;

        /* renamed from: c  reason: collision with root package name */
        e f9342c;

        /* renamed from: d  reason: collision with root package name */
        e f9343d;

        /* renamed from: e  reason: collision with root package name */
        e f9344e;

        /* renamed from: f  reason: collision with root package name */
        final Object f9345f;

        /* renamed from: g  reason: collision with root package name */
        final boolean f9346g;

        /* renamed from: h  reason: collision with root package name */
        Object f9347h;

        /* renamed from: i  reason: collision with root package name */
        int f9348i;

        e(boolean z10) {
            this.f9345f = null;
            this.f9346g = z10;
            this.f9344e = this;
            this.f9343d = this;
        }

        public e a() {
            e eVar = this;
            for (e eVar2 = this.f9341b; eVar2 != null; eVar2 = eVar2.f9341b) {
                eVar = eVar2;
            }
            return eVar;
        }

        public e b() {
            e eVar = this;
            for (e eVar2 = this.f9342c; eVar2 != null; eVar2 = eVar2.f9342c) {
                eVar = eVar2;
            }
            return eVar;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.f9345f;
            if (obj2 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!obj2.equals(entry.getKey())) {
                return false;
            }
            Object obj3 = this.f9347h;
            if (obj3 == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!obj3.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f9345f;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f9347h;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int hashCode;
            Object obj = this.f9345f;
            int i10 = 0;
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            Object obj2 = this.f9347h;
            if (obj2 != null) {
                i10 = obj2.hashCode();
            }
            return hashCode ^ i10;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj == null && !this.f9346g) {
                throw new NullPointerException("value == null");
            }
            Object obj2 = this.f9347h;
            this.f9347h = obj;
            return obj2;
        }

        public String toString() {
            return this.f9345f + "=" + this.f9347h;
        }

        e(boolean z10, e eVar, Object obj, e eVar2, e eVar3) {
            this.f9340a = eVar;
            this.f9345f = obj;
            this.f9346g = z10;
            this.f9348i = 1;
            this.f9343d = eVar2;
            this.f9344e = eVar3;
            eVar3.f9343d = this;
            eVar2.f9344e = this;
        }
    }
}
