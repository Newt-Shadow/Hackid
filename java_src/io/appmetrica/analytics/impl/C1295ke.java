package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
/* renamed from: io.appmetrica.analytics.impl.ke  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1295ke implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Integer fromModel(Boolean bool) {
        int i10;
        if (bool == null) {
            i10 = -1;
        } else if (kotlin.jvm.internal.m.a(bool, Boolean.TRUE)) {
            i10 = 1;
        } else if (!kotlin.jvm.internal.m.a(bool, Boolean.FALSE)) {
            throw new xc.i();
        } else {
            i10 = 0;
        }
        return Integer.valueOf(i10);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final /* bridge */ /* synthetic */ Object toModel(Object obj) {
        return a(((Number) obj).intValue());
    }

    public final Boolean a(int i10) {
        if (i10 != -1) {
            if (i10 == 0) {
                return Boolean.FALSE;
            }
            if (i10 == 1) {
                return Boolean.TRUE;
            }
        }
        return null;
    }
}
