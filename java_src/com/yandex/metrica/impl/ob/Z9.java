package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public class Z9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0882ti toModel(If.s sVar) {
        return new C0882ti(sVar.f10372a);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        If.s sVar = new If.s();
        sVar.f10372a = ((C0882ti) obj).f13651a;
        return sVar;
    }
}
