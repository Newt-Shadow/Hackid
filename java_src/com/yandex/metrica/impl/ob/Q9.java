package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public class Q9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C0413ai c0413ai = (C0413ai) obj;
        If.n nVar = new If.n();
        nVar.f10345a = c0413ai.f11982a;
        nVar.f10346b = c0413ai.f11983b;
        return nVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        If.n nVar = (If.n) obj;
        return new C0413ai(nVar.f10345a, nVar.f10346b);
    }
}
