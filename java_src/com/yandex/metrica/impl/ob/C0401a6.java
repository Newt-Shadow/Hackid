package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.a6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0401a6 {

    /* renamed from: a  reason: collision with root package name */
    private final C0428b8 f11960a;

    public C0401a6(C0428b8 c0428b8) {
        this.f11960a = c0428b8;
    }

    public long a() {
        long h10 = this.f11960a.h();
        long j10 = 10000000000L;
        if (h10 >= 10000000000L) {
            j10 = 1 + h10;
        }
        this.f11960a.a(j10);
        return j10;
    }
}
