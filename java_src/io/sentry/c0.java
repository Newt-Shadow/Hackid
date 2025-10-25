package io.sentry;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: g  reason: collision with root package name */
    private static final Map f22913g;

    /* renamed from: a  reason: collision with root package name */
    private final Map f22914a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final List f22915b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private b f22916c = null;

    /* renamed from: d  reason: collision with root package name */
    private b f22917d = null;

    /* renamed from: e  reason: collision with root package name */
    private b f22918e = null;

    /* renamed from: f  reason: collision with root package name */
    private z2 f22919f = null;

    static {
        HashMap hashMap = new HashMap();
        f22913g = hashMap;
        hashMap.put("boolean", Boolean.class);
        hashMap.put("char", Character.class);
        hashMap.put("byte", Byte.class);
        hashMap.put("short", Short.class);
        hashMap.put("int", Integer.class);
        hashMap.put("long", Long.class);
        hashMap.put("float", Float.class);
        hashMap.put("double", Double.class);
    }

    private boolean j(Object obj, Class cls) {
        Class cls2 = (Class) f22913g.get(cls.getCanonicalName());
        if (obj != null && cls.isPrimitive() && cls2 != null && cls2.isInstance(obj)) {
            return true;
        }
        return false;
    }

    public void a(List list) {
        if (list != null) {
            this.f22915b.addAll(list);
        }
    }

    public synchronized void b() {
        Iterator it = this.f22914a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (entry.getKey() == null || !((String) entry.getKey()).startsWith("sentry:")) {
                it.remove();
            }
        }
    }

    public synchronized Object c(String str) {
        return this.f22914a.get(str);
    }

    public synchronized Object d(String str, Class cls) {
        Object obj = this.f22914a.get(str);
        if (cls.isInstance(obj)) {
            return obj;
        }
        if (j(obj, cls)) {
            return obj;
        }
        return null;
    }

    public List e() {
        return new ArrayList(this.f22915b);
    }

    public z2 f() {
        return this.f22919f;
    }

    public b g() {
        return this.f22916c;
    }

    public b h() {
        return this.f22918e;
    }

    public b i() {
        return this.f22917d;
    }

    public synchronized void k(String str, Object obj) {
        this.f22914a.put(str, obj);
    }

    public void l(z2 z2Var) {
        this.f22919f = z2Var;
    }

    public void m(b bVar) {
        this.f22916c = bVar;
    }

    public void n(b bVar) {
        this.f22918e = bVar;
    }

    public void o(b bVar) {
        this.f22917d = bVar;
    }
}
