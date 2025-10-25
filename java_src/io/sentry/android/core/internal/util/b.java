package io.sentry.android.core.internal.util;

import android.os.SystemClock;
/* loaded from: classes2.dex */
public final class b implements io.sentry.transport.p {

    /* renamed from: a  reason: collision with root package name */
    private static final io.sentry.transport.p f22340a = new b();

    private b() {
    }

    public static io.sentry.transport.p b() {
        return f22340a;
    }

    @Override // io.sentry.transport.p
    public long a() {
        return SystemClock.uptimeMillis();
    }
}
