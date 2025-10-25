package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.z;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class i0 extends LinkedHashMap {

    /* renamed from: b  reason: collision with root package name */
    private static final i0 f8480b;

    /* renamed from: a  reason: collision with root package name */
    private boolean f8481a;

    static {
        i0 i0Var = new i0();
        f8480b = i0Var;
        i0Var.l();
    }

    private i0() {
        this.f8481a = true;
    }

    static int a(Map map) {
        int i10 = 0;
        for (Map.Entry entry : map.entrySet()) {
            i10 += b(entry.getValue()) ^ b(entry.getKey());
        }
        return i10;
    }

    private static int b(Object obj) {
        if (obj instanceof byte[]) {
            return z.d((byte[]) obj);
        }
        if (!(obj instanceof z.a)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    private static void c(Map map) {
        for (Object obj : map.keySet()) {
            z.a(obj);
            z.a(map.get(obj));
        }
    }

    public static i0 e() {
        return f8480b;
    }

    private void f() {
        if (k()) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private static boolean i(Object obj, Object obj2) {
        if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
            return Arrays.equals((byte[]) obj, (byte[]) obj2);
        }
        return obj.equals(obj2);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean j(java.util.Map r4, java.util.Map r5) {
        /*
            r0 = 1
            if (r4 != r5) goto L4
            return r0
        L4:
            int r1 = r4.size()
            int r2 = r5.size()
            r3 = 0
            if (r1 == r2) goto L10
            return r3
        L10:
            java.util.Set r4 = r4.entrySet()
            java.util.Iterator r4 = r4.iterator()
        L18:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L42
            java.lang.Object r1 = r4.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            boolean r2 = r5.containsKey(r2)
            if (r2 != 0) goto L2f
            return r3
        L2f:
            java.lang.Object r2 = r1.getValue()
            java.lang.Object r1 = r1.getKey()
            java.lang.Object r1 = r5.get(r1)
            boolean r1 = i(r2, r1)
            if (r1 != 0) goto L18
            return r3
        L42:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.i0.j(java.util.Map, java.util.Map):boolean");
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        f();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        if (isEmpty()) {
            return Collections.emptySet();
        }
        return super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if ((obj instanceof Map) && j(this, (Map) obj)) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return a(this);
    }

    public boolean k() {
        return this.f8481a;
    }

    public void l() {
        this.f8481a = false;
    }

    public void m(i0 i0Var) {
        f();
        if (!i0Var.isEmpty()) {
            putAll(i0Var);
        }
    }

    public i0 n() {
        if (isEmpty()) {
            return new i0();
        }
        return new i0(this);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        f();
        z.a(obj);
        z.a(obj2);
        return super.put(obj, obj2);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map map) {
        f();
        c(map);
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        f();
        return super.remove(obj);
    }

    private i0(Map map) {
        super(map);
        this.f8481a = true;
    }
}
