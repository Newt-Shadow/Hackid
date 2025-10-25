package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Qc implements O8 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1494se f18817a;

    /* renamed from: b  reason: collision with root package name */
    public final id.a f18818b;

    public Qc(InterfaceC1494se interfaceC1494se, id.a aVar) {
        this.f18817a = interfaceC1494se;
        this.f18818b = aVar;
    }

    @Override // io.appmetrica.analytics.impl.O8
    public final boolean b() {
        if (((C1469re) this.f18817a).f20528b.get() >= ((Number) this.f18818b.invoke()).intValue()) {
            return true;
        }
        return false;
    }
}
