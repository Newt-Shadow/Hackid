package io.sentry.util.thread;
/* loaded from: classes2.dex */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private static final long f23802a = Thread.currentThread().getId();

    /* renamed from: b  reason: collision with root package name */
    private static final b f23803b = new b();

    private b() {
    }

    public static b b() {
        return f23803b;
    }

    @Override // io.sentry.util.thread.a
    public boolean a() {
        return d(Thread.currentThread());
    }

    public boolean c(long j10) {
        if (f23802a == j10) {
            return true;
        }
        return false;
    }

    public boolean d(Thread thread) {
        return c(thread.getId());
    }
}
