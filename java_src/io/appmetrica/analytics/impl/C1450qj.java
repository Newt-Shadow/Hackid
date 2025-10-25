package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.qj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1450qj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Throwable f20444a;

    public C1450qj(Throwable th) {
        this.f20444a = th;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.reportUnhandledException(this.f20444a);
    }
}
