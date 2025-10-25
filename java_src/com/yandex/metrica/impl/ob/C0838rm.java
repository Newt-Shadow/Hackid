package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.rm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0838rm<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<K, Collection<V>> f13564a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f13565b;

    public C0838rm() {
        this(false);
    }

    public Collection<V> a(K k10) {
        return this.f13564a.get(k10);
    }

    public boolean b() {
        return this.f13564a.isEmpty();
    }

    public int c() {
        int i10 = 0;
        for (Collection<V> collection : this.f13564a.values()) {
            i10 += collection.size();
        }
        return i10;
    }

    public String toString() {
        return this.f13564a.toString();
    }

    public C0838rm(boolean z10) {
        this.f13564a = new HashMap<>();
        this.f13565b = z10;
    }

    public Collection<V> a(K k10, V v10) {
        ArrayList arrayList;
        Collection<V> collection = this.f13564a.get(k10);
        if (collection == null) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList(collection);
        }
        arrayList.add(v10);
        return this.f13564a.put(k10, arrayList);
    }

    public Collection<V> b(K k10) {
        return this.f13564a.remove(k10);
    }

    public Collection<V> b(K k10, V v10) {
        Collection<V> collection = this.f13564a.get(k10);
        if (collection == null || !collection.remove(v10)) {
            return null;
        }
        if (collection.isEmpty() && this.f13565b) {
            this.f13564a.remove(k10);
        }
        return new ArrayList(collection);
    }

    public Set<? extends Map.Entry<K, ? extends Collection<V>>> a() {
        return this.f13564a.entrySet();
    }
}
