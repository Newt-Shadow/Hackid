package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.oj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1400oj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f20307a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Throwable f20308b;

    public C1400oj(String str, Throwable th) {
        this.f20307a = str;
        this.f20308b = th;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.reportError(this.f20307a, this.f20308b);
    }
}
