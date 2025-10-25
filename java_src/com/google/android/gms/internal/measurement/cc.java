package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class cc extends LinkedHashMap {

    /* renamed from: b  reason: collision with root package name */
    private static final cc f6342b;

    /* renamed from: a  reason: collision with root package name */
    private boolean f6343a;

    static {
        cc ccVar = new cc();
        f6342b = ccVar;
        ccVar.f6343a = false;
    }

    private cc() {
        this.f6343a = true;
    }

    public static cc a() {
        return f6342b;
    }

    private static int i(Object obj) {
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = ob.f6616b;
            int length = bArr.length;
            int c10 = ob.c(length, bArr, 0, length);
            if (c10 == 0) {
                return 1;
            }
            return c10;
        } else if (!(obj instanceof jb)) {
            return obj.hashCode();
        } else {
            throw new UnsupportedOperationException();
        }
    }

    private final void j() {
        if (this.f6343a) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void b(cc ccVar) {
        j();
        if (!ccVar.isEmpty()) {
            putAll(ccVar);
        }
    }

    public final cc c() {
        if (isEmpty()) {
            return new cc();
        }
        return new cc(this);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        j();
        super.clear();
    }

    public final void e() {
        this.f6343a = false;
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
        return this.f6343a;
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
        byte[] bArr = ob.f6616b;
        obj.getClass();
        obj2.getClass();
        return super.put(obj, obj2);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        j();
        for (Object obj : map.keySet()) {
            byte[] bArr = ob.f6616b;
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

    private cc(Map map) {
        super(map);
        this.f6343a = true;
    }
}
