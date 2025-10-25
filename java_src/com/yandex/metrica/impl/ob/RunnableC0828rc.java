package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.rc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class RunnableC0828rc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C0924vc f13493a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0828rc(C0924vc c0924vc) {
        this.f13493a = c0924vc;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f13493a.f13812e != null) {
                this.f13493a.f13812e.c();
            }
        } catch (Throwable unused) {
        }
    }
}
