package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class C2 implements InterfaceC0716mm<C0467cm> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9823a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2(D2 d22, String str) {
        this.f9823a = str;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
    public void b(C0467cm c0467cm) {
        C0467cm c0467cm2 = c0467cm;
        if (c0467cm2.isEnabled()) {
            c0467cm2.i(this.f9823a);
        }
    }
}
