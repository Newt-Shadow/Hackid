package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.rg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class RunnableC0832rg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ InterfaceC0928vg f13519a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Throwable f13520b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0832rg(C0809qg c0809qg, InterfaceC0928vg interfaceC0928vg, Throwable th) {
        this.f13519a = interfaceC0928vg;
        this.f13520b = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f13519a.a(this.f13520b);
    }
}
