package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0915v3;
/* renamed from: com.yandex.metrica.impl.ob.w3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0939w3 extends AbstractC0864t0<C0915v3.a> {
    @Override // com.yandex.metrica.impl.ob.AbstractC0864t0
    public boolean a(C0915v3.a aVar, C0915v3.a aVar2) {
        if (!A2.b(aVar2.b())) {
            if (A2.b(aVar.b())) {
                return false;
            }
            if (aVar.a() == EnumC0888u0.APP) {
                int intValue = a().a(aVar.a()).intValue();
                Integer a10 = a().a(aVar2.a());
                kotlin.jvm.internal.m.d(a10, "priorities[oldData.source]");
                if (kotlin.jvm.internal.m.f(intValue, a10.intValue()) < 0) {
                    return false;
                }
            } else {
                int intValue2 = a().a(aVar.a()).intValue();
                Integer a11 = a().a(aVar2.a());
                kotlin.jvm.internal.m.d(a11, "priorities[oldData.source]");
                if (kotlin.jvm.internal.m.f(intValue2, a11.intValue()) <= 0) {
                    return false;
                }
            }
        }
        return true;
    }
}
