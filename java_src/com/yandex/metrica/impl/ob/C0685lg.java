package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.lg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0685lg implements InterfaceC0635jg {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0610ig f12808a;

    public C0685lg(InterfaceC0610ig interfaceC0610ig) {
        this.f12808a = interfaceC0610ig;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0635jg
    public boolean a(C0486dg c0486dg) {
        if (c0486dg != null && !((U3) this.f12808a).x().f()) {
            return true;
        }
        return false;
    }
}
