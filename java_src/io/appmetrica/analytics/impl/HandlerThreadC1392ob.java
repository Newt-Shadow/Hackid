package io.appmetrica.analytics.impl;

import android.os.HandlerThread;
import io.appmetrica.analytics.coreapi.internal.executors.IInterruptionSafeThread;
/* renamed from: io.appmetrica.analytics.impl.ob  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class HandlerThreadC1392ob extends HandlerThread implements IInterruptionSafeThread {

    /* renamed from: a  reason: collision with root package name */
    public volatile boolean f20291a;

    public HandlerThreadC1392ob(String str) {
        super(str);
        this.f20291a = true;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.IInterruptionSafeThread
    public final synchronized boolean isRunning() {
        return this.f20291a;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.IInterruptionSafeThread
    public final synchronized void stopRunning() {
        this.f20291a = false;
        interrupt();
    }
}
