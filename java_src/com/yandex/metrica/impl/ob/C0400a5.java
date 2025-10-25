package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.a5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0400a5 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final C0428b8 f11959b;

    public C0400a5(L3 l32) {
        this(l32, l32.x());
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        L3 a10 = a();
        if (!this.f11959b.k()) {
            if (!this.f11959b.l()) {
                a10.r().a(C0445c0.b(c0445c0));
            }
            this.f11959b.a(true);
            return false;
        }
        return false;
    }

    C0400a5(L3 l32, C0428b8 c0428b8) {
        super(l32);
        this.f11959b = c0428b8;
    }
}
