package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
/* loaded from: classes2.dex */
public final class D2 implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final X1 fromModel(F2 f22) {
        X1 x12 = new X1();
        E2 e22 = f22.f18197a;
        if (e22 != null) {
            int ordinal = e22.ordinal();
            if (ordinal == 1) {
                x12.f19216a = 1;
            } else if (ordinal == 2) {
                x12.f19216a = 2;
            } else if (ordinal == 3) {
                x12.f19216a = 3;
            } else if (ordinal == 4) {
                x12.f19216a = 4;
            } else if (ordinal == 5) {
                x12.f19216a = 5;
            }
        }
        Boolean bool = f22.f18198b;
        if (bool != null) {
            if (bool.booleanValue()) {
                x12.f19217b = 1;
            } else {
                x12.f19217b = 0;
            }
        }
        return x12;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final F2 toModel(X1 x12) {
        E2 e22;
        int i10 = x12.f19216a;
        Boolean bool = null;
        if (i10 == 1) {
            e22 = E2.ACTIVE;
        } else if (i10 == 2) {
            e22 = E2.WORKING_SET;
        } else if (i10 == 3) {
            e22 = E2.FREQUENT;
        } else if (i10 != 4) {
            e22 = i10 != 5 ? null : E2.RESTRICTED;
        } else {
            e22 = E2.RARE;
        }
        int i11 = x12.f19217b;
        if (i11 == 0) {
            bool = Boolean.FALSE;
        } else if (i11 == 1) {
            bool = Boolean.TRUE;
        }
        return new F2(e22, bool);
    }
}
