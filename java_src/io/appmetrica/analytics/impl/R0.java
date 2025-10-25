package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.DeferredDeeplinkListener;
/* loaded from: classes2.dex */
public final class R0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ DeferredDeeplinkListener f18858a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f18859b;

    public R0(C1282k1 c1282k1, DeferredDeeplinkListener deferredDeeplinkListener) {
        this.f18859b = c1282k1;
        this.f18858a = deferredDeeplinkListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18859b.f19881a.getClass();
        C1381o0 c1381o0 = C1381o0.f20244e;
        c1381o0.f().a(this.f18858a);
    }
}
