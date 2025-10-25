package io.appmetrica.analytics.impl;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class A3 implements InterfaceC1314l8 {

    /* renamed from: a  reason: collision with root package name */
    public final B3 f17924a;

    public A3() {
        this(new B3());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final List<Ci> fromModel(C1658z3 c1658z3) {
        E8 e82 = new E8();
        e82.f18161e = new C1364n8();
        Ci fromModel = this.f17924a.fromModel(c1658z3.f21013b);
        e82.f18161e.f20166a = (C1389o8) fromModel.f18057a;
        e82.f18157a = c1658z3.f21012a;
        return Collections.singletonList(new Ci(e82, new C1483s3(C1483s3.b(fromModel))));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    public A3(B3 b32) {
        this.f17924a = b32;
    }

    public final C1658z3 a(List<Ci> list) {
        throw new UnsupportedOperationException();
    }
}
