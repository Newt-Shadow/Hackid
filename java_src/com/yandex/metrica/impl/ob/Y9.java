package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public final class Y9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0858si toModel(If.r rVar) {
        return new C0858si(rVar.f10371a);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        If.r rVar = new If.r();
        rVar.f10371a = ((C0858si) obj).a();
        return rVar;
    }
}
