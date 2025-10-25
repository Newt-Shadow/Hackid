package io.appmetrica.analytics.coreutils.internal.services;

import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrier;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback;
import io.appmetrica.analytics.coreutils.impl.m;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
/* loaded from: classes2.dex */
public class WaitForActivationDelayBarrier implements ActivationBarrier {

    /* renamed from: a  reason: collision with root package name */
    private long f17755a;

    /* renamed from: b  reason: collision with root package name */
    private final SystemTimeProvider f17756b;

    /* loaded from: classes2.dex */
    public static class ActivationBarrierHelper {

        /* renamed from: a  reason: collision with root package name */
        private boolean f17757a = false;

        /* renamed from: b  reason: collision with root package name */
        private final a f17758b;

        /* renamed from: c  reason: collision with root package name */
        private final WaitForActivationDelayBarrier f17759c;

        public ActivationBarrierHelper(Runnable runnable, WaitForActivationDelayBarrier waitForActivationDelayBarrier) {
            this.f17758b = new a(this, runnable);
            this.f17759c = waitForActivationDelayBarrier;
        }

        public void subscribeIfNeeded(long j10, ICommonExecutor iCommonExecutor) {
            if (!this.f17757a) {
                this.f17759c.subscribe(j10, iCommonExecutor, this.f17758b);
            } else {
                iCommonExecutor.execute(new b(this));
            }
        }
    }

    public WaitForActivationDelayBarrier() {
        this(new SystemTimeProvider());
    }

    public void activate() {
        this.f17755a = this.f17756b.currentTimeMillis();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrier
    public void subscribe(long j10, ICommonExecutor iCommonExecutor, ActivationBarrierCallback activationBarrierCallback) {
        iCommonExecutor.executeDelayed(new m(activationBarrierCallback), Math.max(j10 - (this.f17756b.currentTimeMillis() - this.f17755a), 0L));
    }

    WaitForActivationDelayBarrier(SystemTimeProvider systemTimeProvider) {
        this.f17756b = systemTimeProvider;
    }
}
