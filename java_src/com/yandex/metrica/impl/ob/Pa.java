package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0709mf;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class Pa implements Fa {

    /* renamed from: a  reason: collision with root package name */
    private final Oa f11058a;

    /* renamed from: b  reason: collision with root package name */
    private final Ja f11059b;

    public Pa() {
        this(new Oa(), new Ja());
    }

    @Override // com.yandex.metrica.impl.ob.Fa, com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C0456cb c0456cb = (C0456cb) obj;
        C0709mf c0709mf = new C0709mf();
        c0709mf.f12880a = 2;
        c0709mf.f12882c = new C0709mf.o();
        Na<C0709mf.n, Vm> fromModel = this.f11058a.fromModel(c0456cb.f12153c);
        c0709mf.f12882c.f12930b = fromModel.f10887a;
        Na<C0709mf.k, Vm> fromModel2 = this.f11059b.fromModel(c0456cb.f12152b);
        c0709mf.f12882c.f12929a = fromModel2.f10887a;
        return Collections.singletonList(new Na(c0709mf, Um.a(fromModel, fromModel2)));
    }

    @Override // com.yandex.metrica.impl.ob.Fa, com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    Pa(Oa oa2, Ja ja2) {
        this.f11058a = oa2;
        this.f11059b = ja2;
    }
}
