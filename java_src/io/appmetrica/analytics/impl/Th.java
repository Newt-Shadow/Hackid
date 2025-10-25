package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Th implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ boolean f18992a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1225hi f18993b;

    public Th(C1225hi c1225hi, boolean z10) {
        this.f18993b = c1225hi;
        this.f18992a = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f18993b;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).setDataSendingEnabled(this.f18992a);
    }
}
