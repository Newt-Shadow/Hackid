package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0709mf;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class Qa implements Fa {

    /* renamed from: a  reason: collision with root package name */
    private final Ja f11150a;

    /* renamed from: b  reason: collision with root package name */
    private final Ma f11151b;

    public Qa() {
        this(new Ja(), new Ma());
    }

    @Override // com.yandex.metrica.impl.ob.Fa, com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Na<C0709mf.m, Vm> na2;
        C0481db c0481db = (C0481db) obj;
        C0709mf c0709mf = new C0709mf();
        c0709mf.f12880a = 3;
        c0709mf.f12883d = new C0709mf.p();
        Na<C0709mf.k, Vm> fromModel = this.f11150a.fromModel(c0481db.f12207b);
        c0709mf.f12883d.f12931a = fromModel.f10887a;
        C0406ab c0406ab = c0481db.f12208c;
        if (c0406ab != null) {
            na2 = this.f11151b.fromModel(c0406ab);
            c0709mf.f12883d.f12932b = na2.f10887a;
        } else {
            na2 = null;
        }
        return Collections.singletonList(new Na(c0709mf, Um.a(fromModel, na2)));
    }

    @Override // com.yandex.metrica.impl.ob.Fa, com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    Qa(Ja ja2, Ma ma2) {
        this.f11150a = ja2;
        this.f11151b = ma2;
    }
}
