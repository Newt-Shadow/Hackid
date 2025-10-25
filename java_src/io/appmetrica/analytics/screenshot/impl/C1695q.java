package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import java.util.List;
/* renamed from: io.appmetrica.analytics.screenshot.impl.q  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1695q implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final L fromModel(C1693o c1693o) {
        L l10 = new L();
        l10.f21379a = c1693o.f21449a;
        Object[] array = c1693o.f21450b.toArray(new String[0]);
        if (array != null) {
            l10.f21381c = (String[]) array;
            l10.f21380b = c1693o.f21451c;
            return l10;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1693o toModel(L l10) {
        List Q;
        boolean z10 = l10.f21379a;
        Q = yc.k.Q(l10.f21381c);
        return new C1693o(z10, Q, l10.f21380b);
    }
}
