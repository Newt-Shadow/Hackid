package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class M0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f18568a;

    public M0(C1282k1 c1282k1) {
        this.f18568a = c1282k1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f18568a).sendEventsBuffer();
    }
}
