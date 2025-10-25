package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public final class B9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0936w0 toModel(If.g gVar) {
        return new C0936w0(gVar.f10275a);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        If.g gVar = new If.g();
        gVar.f10275a = ((C0936w0) obj).a();
        return gVar;
    }
}
