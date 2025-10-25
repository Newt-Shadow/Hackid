package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Ej implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f18184a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ byte[] f18185b;

    public Ej(String str, byte[] bArr) {
        this.f18184a = str;
        this.f18185b = bArr;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.setSessionExtra(this.f18184a, this.f18185b);
    }
}
