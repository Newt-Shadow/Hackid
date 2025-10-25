package com.yandex.metrica.impl.ob;

import android.os.Handler;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.c1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class RunnableC0446c1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Handler> f12115a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<B> f12116b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0446c1(Handler handler, B b10) {
        this.f12115a = new WeakReference<>(handler);
        this.f12116b = new WeakReference<>(b10);
    }

    @Override // java.lang.Runnable
    public void run() {
        Handler handler = this.f12115a.get();
        B b10 = this.f12116b.get();
        if (handler != null && b10 != null && b10.e()) {
            C0421b1.a(handler, b10, this);
        }
    }
}
