package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.be  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0434be extends AbstractC0864t0<C0509ee> {
    @Override // com.yandex.metrica.impl.ob.AbstractC0864t0
    public boolean a(C0509ee c0509ee, C0509ee c0509ee2) {
        C0509ee c0509ee3 = c0509ee;
        C0509ee c0509ee4 = c0509ee2;
        if (c0509ee3.f12325c) {
            if (c0509ee4.f12325c) {
                int intValue = a().a(c0509ee3.f12327e).intValue();
                Integer a10 = a().a(c0509ee4.f12327e);
                kotlin.jvm.internal.m.d(a10, "priorities[oldData.source]");
                if (kotlin.jvm.internal.m.f(intValue, a10.intValue()) > 0) {
                }
            }
            return true;
        }
        return false;
    }
}
