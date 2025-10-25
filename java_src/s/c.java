package s;

import java.util.LinkedHashMap;
import java.util.Set;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap f29219a;

    public c(int i10, float f10) {
        this.f29219a = new LinkedHashMap(i10, f10, true);
    }

    public final Object a(Object key) {
        m.e(key, "key");
        return this.f29219a.get(key);
    }

    public final Set b() {
        Set entrySet = this.f29219a.entrySet();
        m.d(entrySet, "map.entries");
        return entrySet;
    }

    public final boolean c() {
        return this.f29219a.isEmpty();
    }

    public final Object d(Object key, Object value) {
        m.e(key, "key");
        m.e(value, "value");
        return this.f29219a.put(key, value);
    }

    public final Object e(Object key) {
        m.e(key, "key");
        return this.f29219a.remove(key);
    }
}
