package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: d  reason: collision with root package name */
    private static final o6.s f6263d = o6.s.F("_syn", "_err", "_el");

    /* renamed from: a  reason: collision with root package name */
    private String f6264a;

    /* renamed from: b  reason: collision with root package name */
    private final long f6265b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f6266c;

    public b(String str, long j10, Map map) {
        this.f6264a = str;
        this.f6265b = j10;
        HashMap hashMap = new HashMap();
        this.f6266c = hashMap;
        if (map != null) {
            hashMap.putAll(map);
        }
    }

    public static Object h(String str, Object obj, Object obj2) {
        if (f6263d.contains(str) && (obj2 instanceof Double)) {
            return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
        }
        if (str.startsWith("_")) {
            if (!(obj instanceof String) && obj != null) {
                return obj;
            }
        } else if (!(obj instanceof Double)) {
            if (obj instanceof Long) {
                return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
            }
            if (obj instanceof String) {
                return obj2.toString();
            }
        }
        return obj2;
    }

    public final long a() {
        return this.f6265b;
    }

    public final String b() {
        return this.f6264a;
    }

    public final void c(String str) {
        this.f6264a = str;
    }

    public final void d(String str, Object obj) {
        if (obj == null) {
            this.f6266c.remove(str);
            return;
        }
        Map map = this.f6266c;
        map.put(str, h(str, map.get(str), obj));
    }

    public final Object e(String str) {
        Map map = this.f6266c;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f6265b != bVar.f6265b || !this.f6264a.equals(bVar.f6264a)) {
            return false;
        }
        return this.f6266c.equals(bVar.f6266c);
    }

    public final Map f() {
        return this.f6266c;
    }

    /* renamed from: g */
    public final b clone() {
        return new b(this.f6264a, this.f6265b, new HashMap(this.f6266c));
    }

    public final int hashCode() {
        long j10 = this.f6265b;
        return (((this.f6264a.hashCode() * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f6266c.hashCode();
    }

    public final String toString() {
        String str = this.f6264a;
        String obj = this.f6266c.toString();
        int length = String.valueOf(str).length();
        long j10 = this.f6265b;
        StringBuilder sb2 = new StringBuilder(length + 25 + String.valueOf(j10).length() + 9 + obj.length() + 1);
        sb2.append("Event{name='");
        sb2.append(str);
        sb2.append("', timestamp=");
        sb2.append(j10);
        sb2.append(", params=");
        sb2.append(obj);
        sb2.append("}");
        return sb2.toString();
    }
}
