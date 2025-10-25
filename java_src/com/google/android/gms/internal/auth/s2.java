package com.google.android.gms.internal.auth;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class s2 extends LinkedHashMap {

    /* renamed from: b  reason: collision with root package name */
    private static final s2 f6167b;

    /* renamed from: a  reason: collision with root package name */
    private boolean f6168a;

    static {
        s2 s2Var = new s2();
        f6167b = s2Var;
        s2Var.f6168a = false;
    }

    private s2() {
        this.f6168a = true;
    }

    public static s2 a() {
        return f6167b;
    }

    private static int i(Object obj) {
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = f2.f6011d;
            int length = bArr.length;
            int b10 = f2.b(length, bArr, 0, length);
            if (b10 == 0) {
                return 1;
            }
            return b10;
        }
        return obj.hashCode();
    }

    private final void j() {
        if (this.f6168a) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final s2 b() {
        if (isEmpty()) {
            return new s2();
        }
        return new s2(this);
    }

    public final void c() {
        this.f6168a = false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        j();
        super.clear();
    }

    public final void e(s2 s2Var) {
        j();
        if (!s2Var.isEmpty()) {
            putAll(s2Var);
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (isEmpty()) {
            return Collections.emptySet();
        }
        return super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        boolean equals;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this != map) {
                if (size() == map.size()) {
                    Iterator it = entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        if (map.containsKey(entry.getKey())) {
                            Object value = entry.getValue();
                            Object obj2 = map.get(entry.getKey());
                            if ((value instanceof byte[]) && (obj2 instanceof byte[])) {
                                equals = Arrays.equals((byte[]) value, (byte[]) obj2);
                                continue;
                            } else {
                                equals = value.equals(obj2);
                                continue;
                            }
                            if (!equals) {
                                return false;
                            }
                        } else {
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public final boolean f() {
        return this.f6168a;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        Iterator it = entrySet().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            i10 += i(entry.getValue()) ^ i(entry.getKey());
        }
        return i10;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        j();
        byte[] bArr = f2.f6011d;
        obj.getClass();
        obj2.getClass();
        return super.put(obj, obj2);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        j();
        for (Object obj : map.keySet()) {
            byte[] bArr = f2.f6011d;
            obj.getClass();
            map.get(obj).getClass();
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        j();
        return super.remove(obj);
    }

    private s2(Map map) {
        super(map);
        this.f6168a = true;
    }
}
