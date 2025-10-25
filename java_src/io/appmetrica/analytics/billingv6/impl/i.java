package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* loaded from: classes2.dex */
public final class i extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ k f17593a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ r f17594b;

    public i(k kVar, r rVar) {
        this.f17593a = kVar;
        this.f17594b = rVar;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.f17593a.f17602f.a(this.f17594b);
    }
}
