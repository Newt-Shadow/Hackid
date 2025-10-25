package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class R4 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final C0428b8 f11178b;

    /* renamed from: c  reason: collision with root package name */
    private final C0542fm f11179c;

    public R4(L3 l32) {
        this(l32, l32.x(), C0542fm.c());
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        L3 a10 = a();
        if (!this.f11178b.k() && !this.f11178b.l()) {
            if (a10.m().P()) {
                this.f11179c.b();
            }
            a().j().a();
            return false;
        }
        return false;
    }

    R4(L3 l32, C0428b8 c0428b8, C0542fm c0542fm) {
        super(l32);
        this.f11178b = c0428b8;
        this.f11179c = c0542fm;
    }
}
