package io.appmetrica.analytics.coreutils.impl;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback;
/* loaded from: classes2.dex */
public final class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ActivationBarrierCallback f17710a;

    public m(ActivationBarrierCallback activationBarrierCallback) {
        this.f17710a = activationBarrierCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17710a.onWaitFinished();
    }
}
