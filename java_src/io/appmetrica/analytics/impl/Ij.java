package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Ij implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f18404a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f18405b;

    public Ij(String str, String str2) {
        this.f18404a = str;
        this.f18405b = str2;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.putAppEnvironmentValue(this.f18404a, this.f18405b);
    }
}
