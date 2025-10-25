package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* loaded from: classes2.dex */
public final class j extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ k f17595a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ r f17596b;

    public j(k kVar, r rVar) {
        this.f17595a = kVar;
        this.f17596b = rVar;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        if (this.f17595a.f17598b.h()) {
            this.f17595a.f17598b.n(c2.q.a().b(this.f17595a.f17597a).a(), this.f17596b);
            return;
        }
        this.f17595a.f17599c.getWorkerExecutor().execute(new i(this.f17595a, this.f17596b));
        this.f17595a.f17603g.onUpdateFinished();
    }
}
