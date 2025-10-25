package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public class I9 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final H9 f10224a;

    public I9() {
        this(new H9());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.k.a.b fromModel(C0457cc c0457cc) {
        If.k.a.b bVar = new If.k.a.b();
        Qc qc2 = c0457cc.f12155a;
        bVar.f10331a = qc2.f11152a;
        bVar.f10332b = qc2.f11153b;
        C0407ac c0407ac = c0457cc.f12156b;
        if (c0407ac != null) {
            bVar.f10333c = this.f10224a.fromModel(c0407ac);
        }
        return bVar;
    }

    I9(H9 h92) {
        this.f10224a = h92;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0457cc toModel(If.k.a.b bVar) {
        If.k.a.b.C0126a c0126a = bVar.f10333c;
        return new C0457cc(new Qc(bVar.f10331a, bVar.f10332b), c0126a != null ? this.f10224a.toModel(c0126a) : null);
    }
}
