package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0709mf;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class Ra implements Fa {

    /* renamed from: a  reason: collision with root package name */
    private final Oa f11188a;

    public Ra() {
        this(new Oa());
    }

    @Override // com.yandex.metrica.impl.ob.Fa, com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C0709mf c0709mf = new C0709mf();
        c0709mf.f12880a = 1;
        c0709mf.f12881b = new C0709mf.q();
        Na<C0709mf.n, Vm> fromModel = this.f11188a.fromModel(((C0506eb) obj).f12310b);
        c0709mf.f12881b.f12933a = fromModel.f10887a;
        return Collections.singletonList(new Na(c0709mf, Um.a(fromModel)));
    }

    @Override // com.yandex.metrica.impl.ob.Fa, com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    Ra(Oa oa2) {
        this.f11188a = oa2;
    }
}
