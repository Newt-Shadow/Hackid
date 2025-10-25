package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class Tj {

    /* renamed from: a  reason: collision with root package name */
    public volatile long f18994a;

    /* renamed from: b  reason: collision with root package name */
    public Xe f18995b;

    /* renamed from: c  reason: collision with root package name */
    public TimeProvider f18996c;

    public static Tj c() {
        return Sj.f18943a;
    }

    public final synchronized long a() {
        return (System.currentTimeMillis() / 1000) + this.f18994a;
    }

    public final synchronized void b() {
        this.f18995b.d(false);
        this.f18995b.b();
    }

    public final synchronized long d() {
        return this.f18994a;
    }

    public final synchronized void e() {
        a(C1665za.E.x(), new SystemTimeProvider());
    }

    public final synchronized boolean f() {
        return this.f18995b.b(true);
    }

    public final synchronized void a(long j10, Long l10) {
        this.f18994a = (j10 - this.f18996c.currentTimeMillis()) / 1000;
        boolean z10 = true;
        if (this.f18995b.b(true)) {
            if (l10 != null) {
                long abs = Math.abs(j10 - this.f18996c.currentTimeMillis());
                Xe xe2 = this.f18995b;
                if (abs <= TimeUnit.SECONDS.toMillis(l10.longValue())) {
                    z10 = false;
                }
                xe2.d(z10);
            } else {
                this.f18995b.d(false);
            }
        }
        this.f18995b.d(this.f18994a);
        this.f18995b.b();
    }

    public final void a(Xe xe2, TimeProvider timeProvider) {
        this.f18995b = xe2;
        this.f18994a = xe2.a(0);
        this.f18996c = timeProvider;
    }
}
