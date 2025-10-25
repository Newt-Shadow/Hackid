package x4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    private final Map f32274a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private Map f32275b;

    public synchronized void a(Map map) {
        this.f32275b = null;
        this.f32274a.clear();
        this.f32274a.putAll(map);
    }

    public synchronized Map b() {
        if (this.f32275b == null) {
            this.f32275b = Collections.unmodifiableMap(new HashMap(this.f32274a));
        }
        return this.f32275b;
    }
}
