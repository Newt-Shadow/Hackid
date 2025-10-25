package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* renamed from: io.appmetrica.analytics.impl.u1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1531u1 extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ D1 f20693a;

    public C1531u1(D1 d12) {
        this.f20693a = d12;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        synchronized (this.f20693a) {
            D1 d12 = this.f20693a;
            if (!d12.f18072c) {
                return;
            }
            d12.f18071b.onCreate();
        }
    }
}
