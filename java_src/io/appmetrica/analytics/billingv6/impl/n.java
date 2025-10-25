package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* loaded from: classes2.dex */
public final class n extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ p f17610a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ k f17611b;

    public n(p pVar, k kVar) {
        this.f17610a = pVar;
        this.f17611b = kVar;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.f17610a.f17620e.a(this.f17611b);
    }
}
