package io.appmetrica.analytics.coreapi.internal.servicecomponents;

import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
/* loaded from: classes2.dex */
public interface ActivationBarrier {
    void subscribe(long j10, ICommonExecutor iCommonExecutor, ActivationBarrierCallback activationBarrierCallback);
}
