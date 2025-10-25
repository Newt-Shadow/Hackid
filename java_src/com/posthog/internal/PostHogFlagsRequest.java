package com.posthog.internal;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class PostHogFlagsRequest extends HashMap<String, Object> {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PostHogFlagsRequest(java.lang.String r2, java.lang.String r3, java.lang.String r4, java.util.Map<java.lang.String, java.lang.String> r5) {
        /*
            r1 = this;
            java.lang.String r0 = "apiKey"
            kotlin.jvm.internal.m.e(r2, r0)
            java.lang.String r0 = "distinctId"
            kotlin.jvm.internal.m.e(r3, r0)
            r1.<init>()
            java.lang.String r0 = "api_key"
            r1.put(r0, r2)
            java.lang.String r2 = "distinct_id"
            r1.put(r2, r3)
            r2 = 0
            r3 = 1
            if (r4 == 0) goto L24
            boolean r0 = rd.n.b0(r4)
            if (r0 == 0) goto L22
            goto L24
        L22:
            r0 = r2
            goto L25
        L24:
            r0 = r3
        L25:
            if (r0 != 0) goto L2c
            java.lang.String r0 = "$anon_distinct_id"
            r1.put(r0, r4)
        L2c:
            if (r5 == 0) goto L36
            boolean r4 = r5.isEmpty()
            r4 = r4 ^ r3
            if (r4 != r3) goto L36
            r2 = r3
        L36:
            if (r2 == 0) goto L3d
            java.lang.String r2 = "$groups"
            r1.put(r2, r5)
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.posthog.internal.PostHogFlagsRequest.<init>(java.lang.String, java.lang.String, java.lang.String, java.util.Map):void");
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return containsKey((String) obj);
        }
        return false;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<Map.Entry<String, Object>> entrySet() {
        return getEntries();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Object get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        return null;
    }

    public /* bridge */ Set<Map.Entry<String, Object>> getEntries() {
        return super.entrySet();
    }

    public /* bridge */ Set<String> getKeys() {
        return super.keySet();
    }

    @Override // java.util.HashMap, java.util.Map
    public final /* bridge */ Object getOrDefault(Object obj, Object obj2) {
        return !(obj instanceof String) ? obj2 : getOrDefault((String) obj, obj2);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ Collection<Object> getValues() {
        return super.values();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<String> keySet() {
        return getKeys();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Object remove(Object obj) {
        if (obj instanceof String) {
            return remove((String) obj);
        }
        return null;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Collection<Object> values() {
        return getValues();
    }

    public /* bridge */ boolean containsKey(String str) {
        return super.containsKey((Object) str);
    }

    public /* bridge */ Object get(String str) {
        return super.get((Object) str);
    }

    public /* bridge */ Object getOrDefault(String str, Object obj) {
        return super.getOrDefault((Object) str, (String) obj);
    }

    public /* bridge */ Object remove(String str) {
        return super.remove((Object) str);
    }

    @Override // java.util.HashMap, java.util.Map
    public final /* bridge */ boolean remove(Object obj, Object obj2) {
        if ((obj instanceof String) && obj2 != null) {
            return remove((String) obj, obj2);
        }
        return false;
    }

    public /* bridge */ boolean remove(String str, Object obj) {
        return super.remove((Object) str, obj);
    }
}
