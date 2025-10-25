package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Nm implements InterfaceC1478rn {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1478rn f18658a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f18659b;

    public Nm(InterfaceC1478rn interfaceC1478rn, Object obj) {
        this.f18658a = interfaceC1478rn;
        this.f18659b = obj;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1478rn
    public final Object a(Object obj) {
        if (obj != this.f18658a.a(obj)) {
            return this.f18659b;
        }
        return obj;
    }
}
