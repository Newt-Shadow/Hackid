package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* loaded from: classes2.dex */
public final class b extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f17573a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ p f17574b;

    public b(d dVar, p pVar) {
        this.f17573a = dVar;
        this.f17574b = pVar;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.f17573a.f17581d.a(this.f17574b);
    }
}
