package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Mj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f18604a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f18605b;

    public Mj(String str, String str2) {
        this.f18604a = str;
        this.f18605b = str2;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.reportEvent(this.f18604a, this.f18605b);
    }
}
