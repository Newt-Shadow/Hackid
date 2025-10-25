package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C0975xf;
/* renamed from: com.yandex.metrica.impl.ob.a3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0398a3 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0975xf.a fromModel(zb.a aVar) {
        int i10;
        C0975xf.a aVar2 = new C0975xf.a();
        int ordinal = aVar.f33593a.ordinal();
        if (ordinal != 0) {
            i10 = 1;
            if (ordinal == 1) {
                i10 = 3;
            }
        } else {
            i10 = 2;
        }
        aVar2.f13949a = i10;
        aVar2.f13950b = aVar.f33594b;
        aVar2.f13951c = aVar.f33595c;
        aVar2.f13952d = aVar.f33596d;
        aVar2.f13953e = aVar.f33597e;
        return aVar2;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public zb.a toModel(C0975xf.a aVar) {
        zb.e eVar;
        int i10 = aVar.f13949a;
        if (i10 == 2) {
            eVar = zb.e.INAPP;
        } else if (i10 != 3) {
            eVar = zb.e.UNKNOWN;
        } else {
            eVar = zb.e.SUBS;
        }
        return new zb.a(eVar, aVar.f13950b, aVar.f13951c, aVar.f13952d, aVar.f13953e);
    }
}
