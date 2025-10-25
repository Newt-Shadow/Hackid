package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
/* renamed from: com.yandex.metrica.impl.ob.de  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0484de implements Converter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Integer fromModel(EnumC0888u0 enumC0888u0) {
        int ordinal = enumC0888u0.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    return 0;
                }
                return 2;
            }
            return 3;
        }
        return 1;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public EnumC0888u0 toModel(Integer num) {
        int intValue = num.intValue();
        if (intValue != 1) {
            if (intValue != 2) {
                if (intValue != 3) {
                    return EnumC0888u0.UNDEFINED;
                }
                return EnumC0888u0.SATELLITE;
            }
            return EnumC0888u0.RETAIL;
        }
        return EnumC0888u0.APP;
    }
}
