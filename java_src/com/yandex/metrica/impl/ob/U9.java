package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public class U9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.p fromModel(C0463ci c0463ci) {
        If.p pVar = new If.p();
        pVar.f10357a = c0463ci.f12189a;
        pVar.f10358b = c0463ci.f12190b;
        pVar.f10359c = c0463ci.f12191c;
        pVar.f10360d = c0463ci.f12192d;
        return pVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0463ci toModel(If.p pVar) {
        return new C0463ci(pVar.f10357a, pVar.f10358b, pVar.f10359c, pVar.f10360d);
    }
}
