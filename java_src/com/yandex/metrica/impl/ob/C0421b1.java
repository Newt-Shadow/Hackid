package com.yandex.metrica.impl.ob;

import android.os.Handler;
import android.os.SystemClock;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.b1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0421b1 {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f11993a;

    /* renamed from: b  reason: collision with root package name */
    private final B f11994b;

    /* renamed from: c  reason: collision with root package name */
    private final RunnableC0446c1 f11995c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0421b1(Handler handler, B b10) {
        this.f11993a = handler;
        this.f11994b = b10;
        this.f11995c = new RunnableC0446c1(handler, b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f11993a.removeCallbacks(this.f11995c, this.f11994b.f9735b.b().b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a(this.f11993a, this.f11994b, this.f11995c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Handler handler, B b10, Runnable runnable) {
        handler.removeCallbacks(runnable, b10.f9735b.b().b());
        String b11 = b10.f9735b.b().b();
        long uptimeMillis = SystemClock.uptimeMillis();
        Integer N = b10.f9735b.b().N();
        if (N == null) {
            N = 10;
        }
        handler.postAtTime(runnable, b11, uptimeMillis + (N.intValue() * 500));
    }
}
