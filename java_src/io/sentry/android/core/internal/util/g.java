package io.sentry.android.core.internal.util;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final long f22345a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.transport.p f22346b;

    /* renamed from: d  reason: collision with root package name */
    private final int f22348d;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicInteger f22347c = new AtomicInteger(0);

    /* renamed from: e  reason: collision with root package name */
    private final AtomicLong f22349e = new AtomicLong(0);

    public g(io.sentry.transport.p pVar, long j10, int i10) {
        this.f22346b = pVar;
        this.f22345a = j10;
        this.f22348d = i10 <= 0 ? 1 : i10;
    }

    public boolean a() {
        long a10 = this.f22346b.a();
        if (this.f22349e.get() != 0 && this.f22349e.get() + this.f22345a > a10) {
            if (this.f22347c.incrementAndGet() < this.f22348d) {
                return false;
            }
            this.f22347c.set(0);
            return true;
        }
        this.f22347c.set(0);
        this.f22349e.set(a10);
        return false;
    }
}
