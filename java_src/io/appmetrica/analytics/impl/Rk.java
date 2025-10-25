package io.appmetrica.analytics.impl;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class Rk implements InterfaceC1314l8 {

    /* renamed from: a  reason: collision with root package name */
    public final Xi f18901a;

    public Rk() {
        this(new Xi());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final List<Ci> fromModel(Qk qk) {
        E8 e82 = new E8();
        e82.f18157a = 1;
        e82.f18158b = new D8();
        Ci fromModel = this.f18901a.fromModel(qk.f18826a);
        e82.f18158b.f18082a = (A8) fromModel.f18057a;
        C1483s3 c1483s3 = new C1483s3(C1483s3.b(fromModel));
        fromModel.f18058b.getBytesTruncated();
        return Collections.singletonList(new Ci(e82, c1483s3));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    public Rk(Xi xi) {
        this.f18901a = xi;
    }

    public final Qk a(List<Ci> list) {
        throw new UnsupportedOperationException();
    }
}
