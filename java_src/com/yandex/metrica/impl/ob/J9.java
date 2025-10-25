package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public class J9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Zh toModel(If.j jVar) {
        return new Zh(jVar.f10305a);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        If.j jVar = new If.j();
        jVar.f10305a = ((Zh) obj).f11890a;
        return jVar;
    }
}
