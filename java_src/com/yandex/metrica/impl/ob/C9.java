package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public final class C9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.h fromModel(Uh uh) {
        If.h hVar = new If.h();
        hVar.f10276a = uh.c();
        hVar.f10277b = uh.b();
        hVar.f10278c = uh.a();
        hVar.f10280e = uh.e();
        hVar.f10279d = uh.d();
        return hVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Uh toModel(If.h hVar) {
        String str = hVar.f10276a;
        kotlin.jvm.internal.m.d(str, "nano.url");
        return new Uh(str, hVar.f10277b, hVar.f10278c, hVar.f10279d, hVar.f10280e);
    }
}
