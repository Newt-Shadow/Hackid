package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class B7 {

    /* renamed from: c  reason: collision with root package name */
    private static final B7 f9763c = new B7(new C0427b7());

    /* renamed from: a  reason: collision with root package name */
    private final C0427b7 f9764a;

    /* renamed from: b  reason: collision with root package name */
    private a f9765b = a.BLANK;

    /* loaded from: classes2.dex */
    private enum a {
        BLANK,
        LOADING_ERROR,
        LOADED
    }

    B7(C0427b7 c0427b7) {
        this.f9764a = c0427b7;
    }

    public static B7 a() {
        return f9763c;
    }

    public synchronized boolean b() {
        a aVar = this.f9765b;
        a aVar2 = a.LOADED;
        if (aVar == aVar2) {
            return true;
        }
        if (aVar == a.LOADING_ERROR) {
            return false;
        }
        this.f9764a.getClass();
        System.loadLibrary("appmetrica-service-native");
        this.f9765b = aVar2;
        return true;
    }
}
