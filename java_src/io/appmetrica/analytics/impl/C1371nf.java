package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
/* renamed from: io.appmetrica.analytics.impl.nf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1371nf implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Integer fromModel(EnumC1065b8 enumC1065b8) {
        int ordinal = enumC1065b8.ordinal();
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

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final EnumC1065b8 toModel(Integer num) {
        int intValue = num.intValue();
        if (intValue != 1) {
            if (intValue != 2) {
                if (intValue != 3) {
                    return EnumC1065b8.f19424b;
                }
                return EnumC1065b8.f19426d;
            }
            return EnumC1065b8.f19427e;
        }
        return EnumC1065b8.f19425c;
    }
}
