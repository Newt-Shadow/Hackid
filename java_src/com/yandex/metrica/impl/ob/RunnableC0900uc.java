package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.uc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class RunnableC0900uc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C0924vc f13688a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0900uc(C0924vc c0924vc) {
        this.f13688a = c0924vc;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f13688a.f13812e != null) {
            this.f13688a.f13812e.a();
        }
        C0924vc.b(this.f13688a);
    }
}
