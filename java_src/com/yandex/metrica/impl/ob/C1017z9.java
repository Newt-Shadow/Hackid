package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* renamed from: com.yandex.metrica.impl.ob.z9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1017z9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0803qa toModel(If.e eVar) {
        return new C0803qa(eVar.f10270a, eVar.f10271b);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C0803qa c0803qa = (C0803qa) obj;
        If.e eVar = new If.e();
        eVar.f10270a = c0803qa.f13255a;
        eVar.f10271b = c0803qa.f13256b;
        return eVar;
    }
}
