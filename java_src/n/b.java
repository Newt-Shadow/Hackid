package n;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class b implements Iterable {

    /* renamed from: a  reason: collision with root package name */
    c f26059a;

    /* renamed from: b  reason: collision with root package name */
    private c f26060b;

    /* renamed from: c  reason: collision with root package name */
    private final WeakHashMap f26061c = new WeakHashMap();

    /* renamed from: d  reason: collision with root package name */
    private int f26062d = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a extends e {
        a(c cVar, c cVar2) {
            super(cVar, cVar2);
        }

        @Override // n.b.e
        c c(c cVar) {
            return cVar.f26066d;
        }

        @Override // n.b.e
        c d(c cVar) {
            return cVar.f26065c;
        }
    }

    /* renamed from: n.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0250b extends e {
        C0250b(c cVar, c cVar2) {
            super(cVar, cVar2);
        }

        @Override // n.b.e
        c c(c cVar) {
            return cVar.f26065c;
        }

        @Override // n.b.e
        c d(c cVar) {
            return cVar.f26066d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c implements Map.Entry {

        /* renamed from: a  reason: collision with root package name */
        final Object f26063a;

        /* renamed from: b  reason: collision with root package name */
        final Object f26064b;

        /* renamed from: c  reason: collision with root package name */
        c f26065c;

        /* renamed from: d  reason: collision with root package name */
        c f26066d;

        c(Object obj, Object obj2) {
            this.f26063a = obj;
            this.f26064b = obj2;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f26063a.equals(cVar.f26063a) && this.f26064b.equals(cVar.f26064b)) {
                return true;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f26063a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f26064b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f26063a.hashCode() ^ this.f26064b.hashCode();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f26063a + "=" + this.f26064b;
        }
    }

    /* loaded from: classes.dex */
    public class d extends f implements Iterator {

        /* renamed from: a  reason: collision with root package name */
        private c f26067a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f26068b = true;

        d() {
        }

        @Override // n.b.f
        void b(c cVar) {
            boolean z10;
            c cVar2 = this.f26067a;
            if (cVar == cVar2) {
                c cVar3 = cVar2.f26066d;
                this.f26067a = cVar3;
                if (cVar3 == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.f26068b = z10;
            }
        }

        @Override // java.util.Iterator
        /* renamed from: c */
        public Map.Entry next() {
            c cVar;
            if (this.f26068b) {
                this.f26068b = false;
                this.f26067a = b.this.f26059a;
            } else {
                c cVar2 = this.f26067a;
                if (cVar2 != null) {
                    cVar = cVar2.f26065c;
                } else {
                    cVar = null;
                }
                this.f26067a = cVar;
            }
            return this.f26067a;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f26068b) {
                if (b.this.f26059a != null) {
                    return true;
                }
                return false;
            }
            c cVar = this.f26067a;
            if (cVar != null && cVar.f26065c != null) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    private static abstract class e extends f implements Iterator {

        /* renamed from: a  reason: collision with root package name */
        c f26070a;

        /* renamed from: b  reason: collision with root package name */
        c f26071b;

        e(c cVar, c cVar2) {
            this.f26070a = cVar2;
            this.f26071b = cVar;
        }

        private c f() {
            c cVar = this.f26071b;
            c cVar2 = this.f26070a;
            if (cVar != cVar2 && cVar2 != null) {
                return d(cVar);
            }
            return null;
        }

        @Override // n.b.f
        public void b(c cVar) {
            if (this.f26070a == cVar && cVar == this.f26071b) {
                this.f26071b = null;
                this.f26070a = null;
            }
            c cVar2 = this.f26070a;
            if (cVar2 == cVar) {
                this.f26070a = c(cVar2);
            }
            if (this.f26071b == cVar) {
                this.f26071b = f();
            }
        }

        abstract c c(c cVar);

        abstract c d(c cVar);

        @Override // java.util.Iterator
        /* renamed from: e */
        public Map.Entry next() {
            c cVar = this.f26071b;
            this.f26071b = f();
            return cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f26071b != null) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class f {
        abstract void b(c cVar);
    }

    public Map.Entry d() {
        return this.f26059a;
    }

    public Iterator descendingIterator() {
        C0250b c0250b = new C0250b(this.f26060b, this.f26059a);
        this.f26061c.put(c0250b, Boolean.FALSE);
        return c0250b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (size() != bVar.size()) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object next = it2.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                return false;
            }
        }
        if (!it.hasNext() && !it2.hasNext()) {
            return true;
        }
        return false;
    }

    protected c g(Object obj) {
        c cVar = this.f26059a;
        while (cVar != null && !cVar.f26063a.equals(obj)) {
            cVar = cVar.f26065c;
        }
        return cVar;
    }

    public int hashCode() {
        Iterator it = iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += ((Map.Entry) it.next()).hashCode();
        }
        return i10;
    }

    public d i() {
        d dVar = new d();
        this.f26061c.put(dVar, Boolean.FALSE);
        return dVar;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        a aVar = new a(this.f26059a, this.f26060b);
        this.f26061c.put(aVar, Boolean.FALSE);
        return aVar;
    }

    public Map.Entry l() {
        return this.f26060b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c m(Object obj, Object obj2) {
        c cVar = new c(obj, obj2);
        this.f26062d++;
        c cVar2 = this.f26060b;
        if (cVar2 == null) {
            this.f26059a = cVar;
            this.f26060b = cVar;
            return cVar;
        }
        cVar2.f26065c = cVar;
        cVar.f26066d = cVar2;
        this.f26060b = cVar;
        return cVar;
    }

    public Object n(Object obj, Object obj2) {
        c g10 = g(obj);
        if (g10 != null) {
            return g10.f26064b;
        }
        m(obj, obj2);
        return null;
    }

    public Object o(Object obj) {
        c g10 = g(obj);
        if (g10 == null) {
            return null;
        }
        this.f26062d--;
        if (!this.f26061c.isEmpty()) {
            for (f fVar : this.f26061c.keySet()) {
                fVar.b(g10);
            }
        }
        c cVar = g10.f26066d;
        if (cVar != null) {
            cVar.f26065c = g10.f26065c;
        } else {
            this.f26059a = g10.f26065c;
        }
        c cVar2 = g10.f26065c;
        if (cVar2 != null) {
            cVar2.f26066d = cVar;
        } else {
            this.f26060b = cVar;
        }
        g10.f26065c = null;
        g10.f26066d = null;
        return g10.f26064b;
    }

    public int size() {
        return this.f26062d;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        Iterator it = iterator();
        while (it.hasNext()) {
            sb2.append(((Map.Entry) it.next()).toString());
            if (it.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }
}
