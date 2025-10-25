package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;
/* renamed from: io.appmetrica.analytics.impl.zj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1674zj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AdRevenue f21071a;

    public C1674zj(AdRevenue adRevenue) {
        this.f21071a = adRevenue;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.reportAdRevenue(this.f21071a);
    }
}
