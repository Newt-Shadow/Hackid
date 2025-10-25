package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
/* loaded from: classes2.dex */
class O5 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Af fromModel(N5 n52) {
        Af af2 = new Af();
        af2.f9716d = new int[n52.b().size()];
        int i10 = 0;
        for (Integer num : n52.b()) {
            af2.f9716d[i10] = num.intValue();
            i10++;
        }
        af2.f9715c = n52.c();
        af2.f9714b = n52.d();
        af2.f9713a = n52.e();
        return af2;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public N5 toModel(Af af2) {
        return new N5(af2.f9713a, af2.f9714b, af2.f9715c, A2.a(af2.f9716d));
    }
}
