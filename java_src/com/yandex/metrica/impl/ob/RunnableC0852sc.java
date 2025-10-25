package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.sc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class RunnableC0852sc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C0924vc f13584a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0852sc(C0924vc c0924vc) {
        this.f13584a = c0924vc;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f13584a.f13812e != null) {
            this.f13584a.f13812e.e();
        }
    }
}
