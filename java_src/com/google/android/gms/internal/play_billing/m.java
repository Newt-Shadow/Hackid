package com.google.android.gms.internal.play_billing;

import java.io.Serializable;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class m implements Map, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private transient n f7051a;

    /* renamed from: b  reason: collision with root package name */
    private transient n f7052b;

    /* renamed from: c  reason: collision with root package name */
    private transient g f7053c;

    public static m c(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        e.a("com.android.vending.billing.PURCHASES_UPDATED", obj2);
        e.a("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED", obj4);
        e.a("com.android.vending.billing.ALTERNATIVE_BILLING", obj6);
        return v.h(3, new Object[]{"com.android.vending.billing.PURCHASES_UPDATED", obj2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED", obj4, "com.android.vending.billing.ALTERNATIVE_BILLING", obj6}, null);
    }

    abstract g a();

    @Override // java.util.Map
    /* renamed from: b */
    public final g values() {
        g gVar = this.f7053c;
        if (gVar == null) {
            g a10 = a();
            this.f7053c = a10;
            return a10;
        }
        return gVar;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        if (get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    abstract n e();

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        return entrySet().equals(((Map) obj).entrySet());
    }

    abstract n f();

    @Override // java.util.Map
    /* renamed from: g */
    public final n entrySet() {
        n nVar = this.f7051a;
        if (nVar == null) {
            n e10 = e();
            this.f7051a = e10;
            return e10;
        }
        return nVar;
    }

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
    public final int hashCode() {
        return w.a(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        n nVar = this.f7052b;
        if (nVar == null) {
            n f10 = f();
            this.f7052b = f10;
            return f10;
        }
        return nVar;
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

    public final String toString() {
        int size = size();
        if (size >= 0) {
            StringBuilder sb2 = new StringBuilder((int) Math.min(size * 8, 1073741824L));
            sb2.append('{');
            boolean z10 = true;
            for (Map.Entry entry : entrySet()) {
                if (!z10) {
                    sb2.append(", ");
                }
                sb2.append(entry.getKey());
                sb2.append('=');
                sb2.append(entry.getValue());
                z10 = false;
            }
            sb2.append('}');
            return sb2.toString();
        }
        throw new IllegalArgumentException("size cannot be negative but was: " + size);
    }
}
