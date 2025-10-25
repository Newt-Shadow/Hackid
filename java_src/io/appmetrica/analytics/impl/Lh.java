package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Lh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1225hi f18538a;

    public Lh(C1225hi c1225hi) {
        this.f18538a = c1225hi;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f18538a;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).resumeSession();
    }
}
