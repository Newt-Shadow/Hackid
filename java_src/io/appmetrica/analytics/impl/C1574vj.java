package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.Revenue;
/* renamed from: io.appmetrica.analytics.impl.vj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1574vj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Revenue f20834a;

    public C1574vj(Revenue revenue) {
        this.f20834a = revenue;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.reportRevenue(this.f20834a);
    }
}
