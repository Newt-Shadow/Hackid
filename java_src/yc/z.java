package yc;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class z implements Map, Serializable, jd.a {

    /* renamed from: a  reason: collision with root package name */
    public static final z f33244a = new z();

    private z() {
    }

    public boolean a(Void value) {
        kotlin.jvm.internal.m.e(value, "value");
        return false;
    }

    @Override // java.util.Map
    /* renamed from: b */
    public Void get(Object obj) {
        return null;
    }

    public Set c() {
        return a0.f33225a;
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (!(obj instanceof Void)) {
            return false;
        }
        return a((Void) obj);
    }

    public Set e() {
        return a0.f33225a;
    }

    @Override // java.util.Map
    public final /* bridge */ Set entrySet() {
        return c();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if ((obj instanceof Map) && ((Map) obj).isEmpty()) {
            return true;
        }
        return false;
    }

    public int f() {
        return 0;
    }

    public Collection g() {
        return y.f33243a;
    }

    @Override // java.util.Map
    /* renamed from: h */
    public Void remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public int hashCode() {
        return 0;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ Set keySet() {
        return e();
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return f();
    }

    public String toString() {
        return "{}";
    }

    @Override // java.util.Map
    public final /* bridge */ Collection values() {
        return g();
    }
}
