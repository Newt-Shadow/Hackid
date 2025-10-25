package io.sentry.hints;

import io.sentry.ILogger;
import io.sentry.j5;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class d implements f, i {

    /* renamed from: a  reason: collision with root package name */
    private final CountDownLatch f23155a = new CountDownLatch(1);

    /* renamed from: b  reason: collision with root package name */
    private final long f23156b;

    /* renamed from: c  reason: collision with root package name */
    private final ILogger f23157c;

    public d(long j10, ILogger iLogger) {
        this.f23156b = j10;
        this.f23157c = iLogger;
    }

    @Override // io.sentry.hints.f
    public void b() {
        this.f23155a.countDown();
    }

    @Override // io.sentry.hints.i
    public boolean e() {
        try {
            return this.f23155a.await(this.f23156b, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            Thread.currentThread().interrupt();
            this.f23157c.b(j5.ERROR, "Exception while awaiting for flush in BlockingFlushHint", e10);
            return false;
        }
    }
}
