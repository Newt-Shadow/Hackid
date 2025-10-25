package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.D3;
/* loaded from: classes2.dex */
public class Q4 extends M4 {

    /* renamed from: b  reason: collision with root package name */
    private final C0842s2 f11142b;

    /* renamed from: c  reason: collision with root package name */
    private final Vc f11143c;

    public Q4(F3 f32, C0842s2 c0842s2, Vc vc2) {
        super(f32);
        this.f11142b = c0842s2;
        this.f11143c = vc2;
    }

    @Override // com.yandex.metrica.impl.ob.M4
    public boolean a(C0445c0 c0445c0, C0723n4 c0723n4) {
        D3.a a10 = c0723n4.b().a();
        this.f11142b.a(a10.f9885l);
        Boolean bool = a10.f9878e;
        Boolean bool2 = a10.f9889p;
        Boolean bool3 = Boolean.TRUE;
        if (!bool3.equals(bool) && (bool != null || !bool3.equals(bool2))) {
            if (Boolean.FALSE.equals(bool)) {
                this.f11143c.a(false);
            }
        } else {
            this.f11143c.a(true);
        }
        return false;
    }
}
