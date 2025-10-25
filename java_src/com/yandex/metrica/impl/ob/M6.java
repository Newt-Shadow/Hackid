package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C0585hf;
/* loaded from: classes2.dex */
public class M6 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final S6 f10793a;

    public M6() {
        this(new S6());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0585hf fromModel(C1014z6 c1014z6) {
        C0585hf fromModel = this.f10793a.fromModel(c1014z6.f14062a);
        fromModel.f12537g = 1;
        C0585hf.a aVar = new C0585hf.a();
        fromModel.f12538h = aVar;
        aVar.f12542a = c1014z6.f14063b;
        return fromModel;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0585hf c0585hf = (C0585hf) obj;
        throw new UnsupportedOperationException();
    }

    M6(S6 s62) {
        this.f10793a = s62;
    }
}
