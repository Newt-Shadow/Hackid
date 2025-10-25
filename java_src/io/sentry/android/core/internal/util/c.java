package io.sentry.android.core.internal.util;

import android.os.Looper;
import io.sentry.protocol.x;
/* loaded from: classes2.dex */
public final class c implements io.sentry.util.thread.a {

    /* renamed from: a  reason: collision with root package name */
    private static final c f22341a = new c();

    private c() {
    }

    public static c b() {
        return f22341a;
    }

    @Override // io.sentry.util.thread.a
    public boolean a() {
        return e(Thread.currentThread());
    }

    public boolean c(long j10) {
        if (Looper.getMainLooper().getThread().getId() == j10) {
            return true;
        }
        return false;
    }

    public boolean d(x xVar) {
        Long l10 = xVar.l();
        if (l10 != null && c(l10.longValue())) {
            return true;
        }
        return false;
    }

    public boolean e(Thread thread) {
        return c(thread.getId());
    }
}
