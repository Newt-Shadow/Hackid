package lb;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import yc.h0;
/* loaded from: classes.dex */
public final class j implements m {

    /* renamed from: b  reason: collision with root package name */
    private final Object f25457b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final Map f25458c = new LinkedHashMap();

    @Override // lb.m
    public Object a(String key, Object obj) {
        kotlin.jvm.internal.m.e(key, "key");
        synchronized (this.f25457b) {
            Object obj2 = this.f25458c.get(key);
            if (obj2 != null) {
                obj = obj2;
            }
            xc.t tVar = xc.t.f32733a;
        }
        return obj;
    }

    @Override // lb.m
    public void b(String key, Object value) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(value, "value");
        synchronized (this.f25457b) {
            this.f25458c.put(key, value);
            xc.t tVar = xc.t.f32733a;
        }
    }

    @Override // lb.m
    public void c(List except) {
        kotlin.jvm.internal.m.e(except, "except");
        synchronized (this.f25457b) {
            Iterator it = this.f25458c.entrySet().iterator();
            while (it.hasNext()) {
                if (!except.contains(((Map.Entry) it.next()).getKey())) {
                    it.remove();
                }
            }
            xc.t tVar = xc.t.f32733a;
        }
    }

    @Override // lb.m
    public Map getAll() {
        Map q10;
        synchronized (this.f25457b) {
            q10 = h0.q(this.f25458c);
            xc.t tVar = xc.t.f32733a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : q10.entrySet()) {
            if (!m.f25459a.a().contains((String) entry.getKey())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @Override // lb.m
    public void remove(String key) {
        kotlin.jvm.internal.m.e(key, "key");
        synchronized (this.f25457b) {
            this.f25458c.remove(key);
        }
    }
}
