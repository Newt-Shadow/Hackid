package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0709mf;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class Ba implements Fa {

    /* renamed from: a  reason: collision with root package name */
    private final Ca f9770a;

    public Ba() {
        this(new Ca());
    }

    @Override // com.yandex.metrica.impl.ob.Fa, com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Ta ta2 = (Ta) obj;
        C0709mf c0709mf = new C0709mf();
        c0709mf.f12884e = new C0709mf.b();
        Na<C0709mf.c, Vm> fromModel = this.f9770a.fromModel(ta2.f11406c);
        c0709mf.f12884e.f12889a = fromModel.f10887a;
        c0709mf.f12880a = ta2.f11405b;
        return Collections.singletonList(new Na(c0709mf, Um.a(fromModel)));
    }

    @Override // com.yandex.metrica.impl.ob.Fa, com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    Ba(Ca ca2) {
        this.f9770a = ca2;
    }
}
