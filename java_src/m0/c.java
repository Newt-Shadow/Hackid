package m0;

import android.content.SharedPreferences;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.m;
import yc.g0;
import yc.w;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f25595a;

    /* renamed from: b  reason: collision with root package name */
    private final Set f25596b;

    public c(SharedPreferences prefs, Set set) {
        m.e(prefs, "prefs");
        this.f25595a = prefs;
        this.f25596b = set;
    }

    public final Map a() {
        int b10;
        boolean z10;
        Map<String, ?> all = this.f25595a.getAll();
        m.d(all, "prefs.all");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            Set set = this.f25596b;
            if (set != null) {
                z10 = set.contains(key);
            } else {
                z10 = true;
            }
            if (z10) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        b10 = g0.b(linkedHashMap.size());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(b10);
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            Object key2 = entry2.getKey();
            Object value = entry2.getValue();
            if (value instanceof Set) {
                value = w.o0((Iterable) value);
            }
            linkedHashMap2.put(key2, value);
        }
        return linkedHashMap2;
    }
}
