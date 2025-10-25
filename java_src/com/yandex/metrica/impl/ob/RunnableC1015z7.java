package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.z7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class RunnableC1015z7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ InterfaceC0741nm f14064a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ C0991y7 f14065b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1015z7(C0991y7 c0991y7, InterfaceC0741nm interfaceC0741nm) {
        this.f14065b = c0991y7;
        this.f14064a = interfaceC0741nm;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f14065b.a(this.f14064a);
    }
}
