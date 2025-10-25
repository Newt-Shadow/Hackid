package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class J0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ boolean f18416a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f18417b;

    public J0(C1282k1 c1282k1, boolean z10) {
        this.f18417b = c1282k1;
        this.f18416a = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1406p0 c1406p0 = this.f18417b.f19881a;
        boolean z10 = this.f18416a;
        c1406p0.getClass();
        C1381o0.c().setDataSendingEnabled(z10);
    }
}
