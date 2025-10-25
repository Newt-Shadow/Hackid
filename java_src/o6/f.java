package o6;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class f implements z {

    /* renamed from: a  reason: collision with root package name */
    private transient Set f27425a;

    /* renamed from: b  reason: collision with root package name */
    private transient Collection f27426b;

    /* renamed from: c  reason: collision with root package name */
    private transient Map f27427c;

    /* loaded from: classes.dex */
    class a extends AbstractCollection {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            f.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return f.this.b(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return f.this.g();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return f.this.size();
        }
    }

    @Override // o6.z
    public Map a() {
        Map map = this.f27427c;
        if (map == null) {
            Map c10 = c();
            this.f27427c = c10;
            return c10;
        }
        return map;
    }

    public boolean b(Object obj) {
        for (Collection collection : a().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    abstract Map c();

    abstract Set d();

    abstract Collection e();

    public boolean equals(Object obj) {
        return c0.a(this, obj);
    }

    public Set f() {
        Set set = this.f27425a;
        if (set == null) {
            Set d10 = d();
            this.f27425a = d10;
            return d10;
        }
        return set;
    }

    abstract Iterator g();

    public int hashCode() {
        return a().hashCode();
    }

    public String toString() {
        return a().toString();
    }

    @Override // o6.z
    public Collection values() {
        Collection collection = this.f27426b;
        if (collection == null) {
            Collection e10 = e();
            this.f27426b = e10;
            return e10;
        }
        return collection;
    }
}
