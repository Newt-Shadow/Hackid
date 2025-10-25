package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.pj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1425pj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f20388a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f20389b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Throwable f20390c;

    public C1425pj(String str, String str2, Throwable th) {
        this.f20388a = str;
        this.f20389b = str2;
        this.f20390c = th;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.reportError(this.f20388a, this.f20389b, this.f20390c);
    }
}
