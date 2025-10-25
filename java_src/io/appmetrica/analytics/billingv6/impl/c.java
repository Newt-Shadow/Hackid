package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* loaded from: classes2.dex */
public final class c extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f17575a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f17576b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ p f17577c;

    public c(d dVar, String str, p pVar) {
        this.f17575a = dVar;
        this.f17576b = str;
        this.f17577c = pVar;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        if (this.f17575a.f17579b.h()) {
            this.f17575a.f17579b.l(c2.p.a().b(this.f17576b).a(), this.f17577c);
            return;
        }
        this.f17575a.f17580c.getWorkerExecutor().execute(new b(this.f17575a, this.f17577c));
        this.f17575a.f17582e.onUpdateFinished();
    }
}
