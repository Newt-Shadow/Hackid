package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.ei  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1150ei implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1225hi f19597a;

    public RunnableC1150ei(C1225hi c1225hi) {
        this.f19597a = c1225hi;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f19597a;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).clearAppEnvironment();
    }
}
