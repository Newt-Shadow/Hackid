package com.yandex.metrica.impl.ob;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class Zl<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<K, V> f11895a;

    /* renamed from: b  reason: collision with root package name */
    private final V f11896b;

    public Zl(V v10) {
        this(new HashMap(), v10);
    }

    public void a(K k10, V v10) {
        this.f11895a.put(k10, v10);
    }

    public Zl(Map<K, V> map, V v10) {
        this.f11895a = map;
        this.f11896b = v10;
    }

    public V a(K k10) {
        V v10 = this.f11895a.get(k10);
        return v10 == null ? this.f11896b : v10;
    }

    public Set<K> a() {
        return this.f11895a.keySet();
    }
}
