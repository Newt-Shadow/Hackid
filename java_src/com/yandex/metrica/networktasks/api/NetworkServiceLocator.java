package com.yandex.metrica.networktasks.api;
/* loaded from: classes2.dex */
public final class NetworkServiceLocator implements NetworkServiceLifecycleObserver {

    /* renamed from: b  reason: collision with root package name */
    private static volatile NetworkServiceLocator f14180b;

    /* renamed from: a  reason: collision with root package name */
    private NetworkCore f14181a;

    private NetworkServiceLocator() {
    }

    public static NetworkServiceLocator a() {
        return f14180b;
    }

    public static void c() {
        if (f14180b == null) {
            synchronized (NetworkServiceLocator.class) {
                if (f14180b == null) {
                    f14180b = new NetworkServiceLocator();
                }
            }
        }
    }

    public NetworkCore b() {
        return this.f14181a;
    }

    public void d() {
        if (this.f14181a == null) {
            synchronized (this) {
                if (this.f14181a == null) {
                    NetworkCore networkCore = new NetworkCore();
                    this.f14181a = networkCore;
                    networkCore.setName("YMM-NC");
                    this.f14181a.start();
                }
            }
        }
    }

    public void e() {
    }

    public void f() {
        NetworkCore networkCore = this.f14181a;
        if (networkCore != null) {
            networkCore.b();
        }
    }
}
