package io.appmetrica.analytics.impl;

import java.util.concurrent.TimeUnit;
/* renamed from: io.appmetrica.analytics.impl.n0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1356n0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1381o0 f20153a;

    public RunnableC1356n0(C1381o0 c1381o0) {
        this.f20153a = c1381o0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1509t4.j().f20620c.a().executeDelayed(new RunnableC1332m1(this.f20153a.f20247a), TimeUnit.SECONDS.toMillis(5L));
    }
}
