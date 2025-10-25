package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.c5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0450c5 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final C0428b8 f12125b;

    public C0450c5(L3 l32) {
        super(l32);
        this.f12125b = l32.x();
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        L3 a10 = a();
        a10.e().toString();
        if (this.f12125b.k() && a10.B()) {
            a10.r().d(C0445c0.a(c0445c0, a10));
            return false;
        }
        return false;
    }
}
