package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public class L9 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final K9 f10704a;

    /* renamed from: b  reason: collision with root package name */
    private final M9 f10705b;

    public L9() {
        this(new K9(), new M9());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.k fromModel(C0756oc c0756oc) {
        If.k kVar = new If.k();
        kVar.f10307a = this.f10704a.fromModel(c0756oc.f13064a);
        kVar.f10308b = this.f10705b.fromModel(c0756oc.f13065b);
        return kVar;
    }

    L9(K9 k92, M9 m92) {
        this.f10704a = k92;
        this.f10705b = m92;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0756oc toModel(If.k kVar) {
        K9 k92 = this.f10704a;
        If.k.a aVar = kVar.f10307a;
        If.k.a aVar2 = new If.k.a();
        if (aVar == null) {
            aVar = aVar2;
        }
        C0706mc model = k92.toModel(aVar);
        M9 m92 = this.f10705b;
        If.k.b bVar = kVar.f10308b;
        If.k.b bVar2 = new If.k.b();
        if (bVar == null) {
            bVar = bVar2;
        }
        return new C0756oc(model, m92.toModel(bVar));
    }
}
