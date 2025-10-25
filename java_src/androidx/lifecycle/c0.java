package androidx.lifecycle;

import androidx.lifecycle.i;
import java.io.Closeable;
/* loaded from: classes.dex */
public final class c0 implements k, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final String f2946a;

    /* renamed from: b  reason: collision with root package name */
    private final a0 f2947b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2948c;

    public c0(String key, a0 handle) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(handle, "handle");
        this.f2946a = key;
        this.f2947b = handle;
    }

    @Override // androidx.lifecycle.k
    public void a(m source, i.a event) {
        kotlin.jvm.internal.m.e(source, "source");
        kotlin.jvm.internal.m.e(event, "event");
        if (event == i.a.ON_DESTROY) {
            this.f2948c = false;
            source.getLifecycle().c(this);
        }
    }

    public final void b(h1.d registry, i lifecycle) {
        kotlin.jvm.internal.m.e(registry, "registry");
        kotlin.jvm.internal.m.e(lifecycle, "lifecycle");
        if (!this.f2948c) {
            this.f2948c = true;
            lifecycle.a(this);
            registry.h(this.f2946a, this.f2947b.c());
            return;
        }
        throw new IllegalStateException("Already attached to lifecycleOwner".toString());
    }

    public final a0 c() {
        return this.f2947b;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final boolean e() {
        return this.f2948c;
    }
}
