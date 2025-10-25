package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;
/* loaded from: classes2.dex */
public final class O0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AdRevenue f18677a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f18678b;

    public O0(C1282k1 c1282k1, AdRevenue adRevenue) {
        this.f18678b = c1282k1;
        this.f18677a = adRevenue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f18678b).reportAdRevenue(this.f18677a);
    }
}
