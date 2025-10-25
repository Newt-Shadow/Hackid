package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.gpllibrary.a;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public class H9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.k.a.b.C0126a fromModel(C0407ac c0407ac) {
        If.k.a.b.C0126a c0126a = new If.k.a.b.C0126a();
        c0126a.f10334a = c0407ac.f11971b;
        c0126a.f10335b = c0407ac.f11972c;
        int ordinal = c0407ac.f11970a.ordinal();
        int i10 = 1;
        if (ordinal != 1) {
            i10 = 2;
            if (ordinal != 2) {
                i10 = 3;
                if (ordinal != 3) {
                    i10 = 0;
                }
            }
        }
        c0126a.f10336c = i10;
        return c0126a;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0407ac toModel(If.k.a.b.C0126a c0126a) {
        a.b bVar;
        int i10 = c0126a.f10336c;
        if (i10 == 1) {
            bVar = a.b.PRIORITY_LOW_POWER;
        } else if (i10 == 2) {
            bVar = a.b.PRIORITY_BALANCED_POWER_ACCURACY;
        } else if (i10 != 3) {
            bVar = a.b.PRIORITY_NO_POWER;
        } else {
            bVar = a.b.PRIORITY_HIGH_ACCURACY;
        }
        return new C0407ac(bVar, c0126a.f10334a, c0126a.f10335b);
    }
}
