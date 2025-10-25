package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ListConverter;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.ml  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1352ml implements ListConverter {

    /* renamed from: a  reason: collision with root package name */
    public final C1377nl f20137a = new C1377nl();

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1387o6[] fromModel(List<C1402ol> list) {
        C1387o6[] c1387o6Arr = new C1387o6[list.size()];
        int i10 = 0;
        for (C1402ol c1402ol : list) {
            c1387o6Arr[i10] = this.f20137a.fromModel(c1402ol);
            i10++;
        }
        return c1387o6Arr;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        C1387o6[] c1387o6Arr = (C1387o6[]) obj;
        throw new UnsupportedOperationException();
    }

    public final List<C1402ol> a(C1387o6[] c1387o6Arr) {
        throw new UnsupportedOperationException();
    }
}
