package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.t  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class RunnableC0863t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ E1 f13606a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ C0619j0 f13607b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0863t(C0887u c0887u, E1 e12, C0619j0 c0619j0) {
        this.f13606a = e12;
        this.f13607b = c0619j0;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f13606a.b(this.f13607b);
    }
}
