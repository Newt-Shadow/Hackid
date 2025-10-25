package lb;

import java.util.UUID;
/* loaded from: classes.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    public static final c0 f25423a = new c0();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f25424b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static final UUID f25425c;

    /* renamed from: d  reason: collision with root package name */
    private static UUID f25426d;

    static {
        UUID uuid = new UUID(0L, 0L);
        f25425c = uuid;
        f25426d = uuid;
    }

    private c0() {
    }

    public final void a() {
        synchronized (f25424b) {
            f25426d = f25425c;
            xc.t tVar = xc.t.f32733a;
        }
    }

    public final UUID b() {
        UUID uuid;
        synchronized (f25424b) {
            if (!kotlin.jvm.internal.m.a(f25426d, f25425c)) {
                uuid = f25426d;
            } else {
                uuid = null;
            }
            xc.t tVar = xc.t.f32733a;
        }
        return uuid;
    }

    public final boolean c() {
        boolean z10;
        synchronized (f25424b) {
            if (!kotlin.jvm.internal.m.a(f25426d, f25425c)) {
                z10 = true;
            } else {
                z10 = false;
            }
            xc.t tVar = xc.t.f32733a;
        }
        return z10;
    }

    public final void d() {
        synchronized (f25424b) {
            if (kotlin.jvm.internal.m.a(f25426d, f25425c)) {
                f25426d = nb.a.f26549a.c();
            }
            xc.t tVar = xc.t.f32733a;
        }
    }
}
