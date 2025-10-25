package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
/* loaded from: classes2.dex */
public final class Y8 implements ProtobufConverter {
    public static F9 a(X8 x82) {
        F9 f92 = new F9();
        f92.f18221d = new int[x82.f19229b.size()];
        int i10 = 0;
        for (Integer num : x82.f19229b) {
            f92.f18221d[i10] = num.intValue();
            i10++;
        }
        f92.f18220c = x82.f19231d;
        f92.f18219b = x82.f19230c;
        f92.f18218a = x82.f19228a;
        return f92;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final /* bridge */ /* synthetic */ Object fromModel(Object obj) {
        return a((X8) obj);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        F9 f92 = (F9) obj;
        return new X8(f92.f18218a, f92.f18219b, f92.f18220c, CollectionUtils.hashSetFromIntArray(f92.f18221d));
    }
}
