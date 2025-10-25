package io.appmetrica.analytics.coreutils.internal.services;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback;
import io.appmetrica.analytics.coreutils.internal.services.WaitForActivationDelayBarrier;
/* loaded from: classes2.dex */
public final class a implements ActivationBarrierCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Runnable f17760a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ WaitForActivationDelayBarrier.ActivationBarrierHelper f17761b;

    public a(WaitForActivationDelayBarrier.ActivationBarrierHelper activationBarrierHelper, Runnable runnable) {
        this.f17761b = activationBarrierHelper;
        this.f17760a = runnable;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback
    public final void onWaitFinished() {
        this.f17761b.f17757a = true;
        this.f17760a.run();
    }
}
