package y0;

import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.m;
import xc.t;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final b f32809a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final Map f32810b = new LinkedHashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Set f32811c = new LinkedHashSet();

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f32812d;

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    public final void d(String key, AutoCloseable closeable) {
        AutoCloseable autoCloseable;
        m.e(key, "key");
        m.e(closeable, "closeable");
        if (this.f32812d) {
            f(closeable);
            return;
        }
        synchronized (this.f32809a) {
            autoCloseable = (AutoCloseable) this.f32810b.put(key, closeable);
        }
        f(autoCloseable);
    }

    public final void e() {
        if (this.f32812d) {
            return;
        }
        this.f32812d = true;
        synchronized (this.f32809a) {
            for (AutoCloseable autoCloseable : this.f32810b.values()) {
                f(autoCloseable);
            }
            for (AutoCloseable autoCloseable2 : this.f32811c) {
                f(autoCloseable2);
            }
            this.f32811c.clear();
            t tVar = t.f32733a;
        }
    }

    public final AutoCloseable g(String key) {
        AutoCloseable autoCloseable;
        m.e(key, "key");
        synchronized (this.f32809a) {
            autoCloseable = (AutoCloseable) this.f32810b.get(key);
        }
        return autoCloseable;
    }
}
