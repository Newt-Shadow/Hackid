package com.google.android.gms.internal.play_billing;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class z2 extends LinkedHashMap {

    /* renamed from: b  reason: collision with root package name */
    private static final z2 f7178b;

    /* renamed from: a  reason: collision with root package name */
    private boolean f7179a;

    static {
        z2 z2Var = new z2();
        f7178b = z2Var;
        z2Var.f7179a = false;
    }

    private z2() {
        this.f7179a = true;
    }

    public static z2 a() {
        return f7178b;
    }

    private static int i(Object obj) {
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = j2.f7023d;
            int length = bArr.length;
            int b10 = j2.b(length, bArr, 0, length);
            if (b10 == 0) {
                return 1;
            }
            return b10;
        } else if (!(obj instanceof d2)) {
            return obj.hashCode();
        } else {
            throw new UnsupportedOperationException();
        }
    }

    private final void j() {
        if (this.f7179a) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final z2 b() {
        if (isEmpty()) {
            return new z2();
        }
        return new z2(this);
    }

    public final void c() {
        this.f7179a = false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        j();
        super.clear();
    }

    public final void e(z2 z2Var) {
        j();
        if (!z2Var.isEmpty()) {
            putAll(z2Var);
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
        return this.f7179a;
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
        byte[] bArr = j2.f7023d;
        obj.getClass();
        obj2.getClass();
        return super.put(obj, obj2);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        j();
        for (Object obj : map.keySet()) {
            byte[] bArr = j2.f7023d;
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

    private z2(Map map) {
        super(map);
        this.f7179a = true;
    }
}
