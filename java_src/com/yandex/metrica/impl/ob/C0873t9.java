package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* renamed from: com.yandex.metrica.impl.ob.t9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0873t9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0594i toModel(If.b bVar) {
        return new C0594i(bVar.f10261a, bVar.f10262b);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C0594i c0594i = (C0594i) obj;
        If.b bVar = new If.b();
        bVar.f10261a = c0594i.f12575a;
        bVar.f10262b = c0594i.f12576b;
        return bVar;
    }
}
