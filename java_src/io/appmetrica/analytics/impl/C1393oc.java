package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.oc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1393oc implements C9 {

    /* renamed from: a  reason: collision with root package name */
    public final C1660z5 f20292a;

    public C1393oc(G9 g92, W6 w62, Og og, F4 f42, C1212h5 c1212h5, Ue ue2) {
        C1368nc c1368nc = new C1368nc(w62, og, this, f42, ue2);
        this.f20292a = new C1660z5(g92, c1368nc.a(), c1368nc.b(), c1212h5);
    }

    @Override // io.appmetrica.analytics.impl.C9
    public final B9 a() {
        return this.f20292a;
    }

    public final C1660z5 b() {
        return this.f20292a;
    }
}
