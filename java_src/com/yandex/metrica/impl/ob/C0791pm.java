package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.util.Pair;
import java.util.LinkedHashMap;
import java.util.Map;
@SuppressLint({"all"})
/* renamed from: com.yandex.metrica.impl.ob.pm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0791pm<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<K, V> f13183a;

    /* renamed from: b  reason: collision with root package name */
    private int f13184b;

    /* renamed from: c  reason: collision with root package name */
    private int f13185c;

    /* renamed from: d  reason: collision with root package name */
    private int f13186d;

    /* renamed from: e  reason: collision with root package name */
    private int f13187e;

    /* renamed from: f  reason: collision with root package name */
    private int f13188f;

    /* renamed from: g  reason: collision with root package name */
    private int f13189g;

    public C0791pm(int i10) {
        if (i10 > 0) {
            this.f13185c = i10;
            this.f13183a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private int b(K k10, V v10) {
        Pair pair = (Pair) v10;
        int length = C0419b.b(((C0956wk) k10).f13899b).length + 4 + 4 + 4;
        if (length >= 0) {
            return length;
        }
        throw new IllegalStateException("Negative size: " + k10 + "=" + v10);
    }

    public final synchronized V a(K k10) {
        V v10 = this.f13183a.get(k10);
        if (v10 != null) {
            this.f13188f++;
            return v10;
        }
        this.f13189g++;
        return null;
    }

    public final synchronized String toString() {
        int i10;
        int i11 = this.f13188f;
        int i12 = this.f13189g + i11;
        if (i12 != 0) {
            i10 = (i11 * 100) / i12;
        } else {
            i10 = 0;
        }
        return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f13185c), Integer.valueOf(this.f13188f), Integer.valueOf(this.f13189g), Integer.valueOf(i10));
    }

    public final synchronized V a(K k10, V v10) {
        V put;
        this.f13186d++;
        this.f13184b += b(k10, v10);
        put = this.f13183a.put(k10, v10);
        if (put != null) {
            this.f13184b -= b(k10, put);
        }
        a(this.f13185c);
        return put;
    }

    private void a(int i10) {
        Map.Entry<K, V> next;
        while (this.f13184b > i10 && !this.f13183a.isEmpty() && (next = this.f13183a.entrySet().iterator().next()) != null) {
            K key = next.getKey();
            V value = next.getValue();
            this.f13183a.remove(key);
            this.f13184b -= b(key, value);
            this.f13187e++;
        }
        if (this.f13184b < 0 || (this.f13183a.isEmpty() && this.f13184b != 0)) {
            throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
        }
    }

    public final synchronized void a() {
        a(-1);
    }
}
