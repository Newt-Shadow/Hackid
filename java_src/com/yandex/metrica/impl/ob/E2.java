package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class E2 implements InterfaceC0716mm<C0467cm> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Throwable f9942a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9943b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public E2(D2 d22, Throwable th, String str) {
        this.f9942a = th;
        this.f9943b = str;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
    public void b(C0467cm c0467cm) {
        C0467cm c0467cm2 = c0467cm;
        if (c0467cm2.isEnabled()) {
            c0467cm2.e(this.f9942a, this.f9943b);
        }
    }
}
