package io.appmetrica.analytics.impl;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class Nk implements InterfaceC1314l8 {

    /* renamed from: a  reason: collision with root package name */
    public final Xi f18653a;

    /* renamed from: b  reason: collision with root package name */
    public final Af f18654b;

    public Nk() {
        this(new Xi(), new Af());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final List<Ci> fromModel(Mk mk) {
        E8 e82 = new E8();
        e82.f18157a = 2;
        e82.f18159c = new B8();
        Ci fromModel = this.f18653a.fromModel(mk.f18607b);
        e82.f18159c.f17990b = (A8) fromModel.f18057a;
        Ci fromModel2 = this.f18654b.fromModel(mk.f18606a);
        e82.f18159c.f17989a = (C1613x8) fromModel2.f18057a;
        return Collections.singletonList(new Ci(e82, new C1483s3(C1483s3.b(fromModel, fromModel2))));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    public Nk(Xi xi, Af af2) {
        this.f18653a = xi;
        this.f18654b = af2;
    }

    public final Mk a(List<Ci> list) {
        throw new UnsupportedOperationException();
    }
}
