package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* renamed from: com.yandex.metrica.impl.ob.w9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0945w9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.c fromModel(Ph ph) {
        If.c cVar = new If.c();
        cVar.f10263a = ph.f11110a;
        cVar.f10264b = ph.f11111b;
        cVar.f10265c = ph.f11112c;
        cVar.f10266d = ph.f11113d;
        return cVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Ph toModel(If.c cVar) {
        return new Ph(cVar.f10263a, cVar.f10264b, cVar.f10265c, cVar.f10266d);
    }
}
