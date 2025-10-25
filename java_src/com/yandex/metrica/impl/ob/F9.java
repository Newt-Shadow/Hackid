package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public class F9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Wb wb2 = (Wb) obj;
        If.k.a.C0124a.C0125a c0125a = new If.k.a.C0124a.C0125a();
        c0125a.f10329a = wb2.f11692a;
        c0125a.f10330b = wb2.f11693b;
        return c0125a;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        If.k.a.C0124a.C0125a c0125a = (If.k.a.C0124a.C0125a) obj;
        return new Wb(c0125a.f10329a, c0125a.f10330b);
    }
}
