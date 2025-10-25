package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.ci  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1100ci implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1225hi f19483a;

    public RunnableC1100ci(C1225hi c1225hi) {
        this.f19483a = c1225hi;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f19483a;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).sendEventsBuffer();
    }
}
