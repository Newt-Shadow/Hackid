package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
/* loaded from: classes2.dex */
public class J6 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private V6 f10483a;

    public J6(V6 v62) {
        this.f10483a = v62;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0485df fromModel(C0942w6 c0942w6) {
        C0485df c0485df = new C0485df();
        E6 e62 = c0942w6.f13856a;
        if (e62 != null) {
            c0485df.f12214a = this.f10483a.fromModel(e62);
        }
        c0485df.f12215b = new C0659kf[c0942w6.f13857b.size()];
        int i10 = 0;
        for (E6 e63 : c0942w6.f13857b) {
            c0485df.f12215b[i10] = this.f10483a.fromModel(e63);
            i10++;
        }
        String str = c0942w6.f13858c;
        if (str != null) {
            c0485df.f12216c = str;
        }
        return c0485df;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0485df c0485df = (C0485df) obj;
        throw new UnsupportedOperationException();
    }
}
