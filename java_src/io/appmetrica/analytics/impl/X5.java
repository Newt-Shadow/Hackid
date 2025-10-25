package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback;
import io.appmetrica.analytics.coreutils.internal.services.WaitForActivationDelayBarrier;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class X5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final List f19222a;

    /* renamed from: b  reason: collision with root package name */
    public final IHandlerExecutor f19223b = C1665za.j().w().a();

    /* renamed from: c  reason: collision with root package name */
    public final WaitForActivationDelayBarrier f19224c = C1665za.j().a();

    public X5(List list) {
        this.f19222a = list;
    }

    public static final void a(X5 x52) {
        for (Runnable runnable : x52.f19222a) {
            runnable.run();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19224c.subscribe(TimeUnit.SECONDS.toMillis(10L), this.f19223b, new ActivationBarrierCallback() { // from class: io.appmetrica.analytics.impl.jp
            @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback
            public final void onWaitFinished() {
                X5.a(X5.this);
            }
        });
    }
}
