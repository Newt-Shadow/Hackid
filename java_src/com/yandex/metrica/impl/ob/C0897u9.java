package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C0951wf;
import com.yandex.metrica.impl.ob.C1007z;
/* renamed from: com.yandex.metrica.impl.ob.u9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0897u9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0951wf.a fromModel(C1007z c1007z) {
        C0951wf.a aVar = new C0951wf.a();
        C1007z.a aVar2 = c1007z.f14034a;
        if (aVar2 != null) {
            int ordinal = aVar2.ordinal();
            if (ordinal == 0) {
                aVar.f13882a = 1;
            } else if (ordinal == 1) {
                aVar.f13882a = 2;
            } else if (ordinal == 2) {
                aVar.f13882a = 3;
            } else if (ordinal == 3) {
                aVar.f13882a = 4;
            } else if (ordinal == 4) {
                aVar.f13882a = 5;
            }
        }
        Boolean bool = c1007z.f14035b;
        if (bool != null) {
            if (bool.booleanValue()) {
                aVar.f13883b = 1;
            } else {
                aVar.f13883b = 0;
            }
        }
        return aVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1007z toModel(C0951wf.a aVar) {
        C1007z.a aVar2;
        int i10 = aVar.f13882a;
        Boolean bool = null;
        if (i10 == 1) {
            aVar2 = C1007z.a.ACTIVE;
        } else if (i10 == 2) {
            aVar2 = C1007z.a.WORKING_SET;
        } else if (i10 == 3) {
            aVar2 = C1007z.a.FREQUENT;
        } else if (i10 != 4) {
            aVar2 = i10 != 5 ? null : C1007z.a.RESTRICTED;
        } else {
            aVar2 = C1007z.a.RARE;
        }
        int i11 = aVar.f13883b;
        if (i11 == 0) {
            bool = Boolean.FALSE;
        } else if (i11 == 1) {
            bool = Boolean.TRUE;
        }
        return new C1007z(aVar2, bool);
    }
}
