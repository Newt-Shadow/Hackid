package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C0709mf;
import java.math.BigDecimal;
/* loaded from: classes2.dex */
public class Ea implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0709mf.e fromModel(BigDecimal bigDecimal) {
        xc.k a10 = Ol.a(bigDecimal);
        Nl nl = new Nl(((Number) a10.c()).longValue(), ((Number) a10.d()).intValue());
        C0709mf.e eVar = new C0709mf.e();
        eVar.f12895a = nl.b();
        eVar.f12896b = nl.a();
        return eVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0709mf.e eVar = (C0709mf.e) obj;
        throw new UnsupportedOperationException();
    }
}
