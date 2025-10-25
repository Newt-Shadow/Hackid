package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;
/* loaded from: classes2.dex */
public final class Fj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AdRevenue f18228a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f18229b;

    public Fj(AdRevenue adRevenue, boolean z10) {
        this.f18228a = adRevenue;
        this.f18229b = z10;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.reportAdRevenue(this.f18228a, this.f18229b);
    }
}
