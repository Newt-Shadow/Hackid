package io.appmetrica.analytics.impl;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class Pk implements InterfaceC1314l8 {

    /* renamed from: a  reason: collision with root package name */
    public final Af f18790a;

    /* renamed from: b  reason: collision with root package name */
    public final C1098cg f18791b;

    public Pk() {
        this(new Af(), new C1098cg());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final List<Ci> fromModel(Ok ok) {
        Ci ci;
        E8 e82 = new E8();
        e82.f18157a = 3;
        e82.f18160d = new C8();
        Ci fromModel = this.f18790a.fromModel(ok.f18713a);
        e82.f18160d.f18044a = (C1613x8) fromModel.f18057a;
        C1571vg c1571vg = ok.f18714b;
        if (c1571vg != null) {
            ci = this.f18791b.fromModel(c1571vg);
            e82.f18160d.f18045b = (C1663z8) ci.f18057a;
        } else {
            ci = null;
        }
        return Collections.singletonList(new Ci(e82, new C1483s3(C1483s3.b(fromModel, ci))));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    public Pk(Af af2, C1098cg c1098cg) {
        this.f18790a = af2;
        this.f18791b = c1098cg;
    }

    public final Ok a(List<Ci> list) {
        throw new UnsupportedOperationException();
    }
}
