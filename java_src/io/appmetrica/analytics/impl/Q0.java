package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
/* loaded from: classes2.dex */
public final class Q0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ DeferredDeeplinkParametersListener f18796a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f18797b;

    public Q0(C1282k1 c1282k1, DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        this.f18797b = c1282k1;
        this.f18796a = deferredDeeplinkParametersListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18797b.f19881a.getClass();
        C1381o0 c1381o0 = C1381o0.f20244e;
        c1381o0.f().a(this.f18796a);
    }
}
