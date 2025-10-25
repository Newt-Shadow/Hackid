package io.sentry;

import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes2.dex */
public final class h5 {

    /* renamed from: c  reason: collision with root package name */
    private static volatile h5 f23150c;

    /* renamed from: a  reason: collision with root package name */
    private final Set f23151a = new CopyOnWriteArraySet();

    /* renamed from: b  reason: collision with root package name */
    private final Set f23152b = new CopyOnWriteArraySet();

    private h5() {
    }

    public static h5 c() {
        if (f23150c == null) {
            synchronized (h5.class) {
                if (f23150c == null) {
                    f23150c = new h5();
                }
            }
        }
        return f23150c;
    }

    public void a(String str) {
        io.sentry.util.q.c(str, "integration is required.");
        this.f23151a.add(str);
    }

    public void b(String str, String str2) {
        io.sentry.util.q.c(str, "name is required.");
        io.sentry.util.q.c(str2, "version is required.");
        this.f23152b.add(new io.sentry.protocol.s(str, str2));
    }

    public Set d() {
        return this.f23151a;
    }

    public Set e() {
        return this.f23152b;
    }
}
