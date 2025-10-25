package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
/* loaded from: classes2.dex */
public final class B3 implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final Af f17976a;

    /* renamed from: b  reason: collision with root package name */
    public final H7 f17977b;

    /* renamed from: c  reason: collision with root package name */
    public final C1545uf f17978c;

    /* renamed from: d  reason: collision with root package name */
    public final C1098cg f17979d;

    public B3() {
        this(new Af(), new H7(), new C1545uf(), new C1098cg());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Ci fromModel(C3 c32) {
        Ci ci;
        C1389o8 c1389o8 = new C1389o8();
        Ci fromModel = this.f17976a.fromModel(c32.f18030a);
        c1389o8.f20283a = (C1613x8) fromModel.f18057a;
        c1389o8.f20285c = this.f17977b.fromModel(c32.f18031b);
        Ci fromModel2 = this.f17978c.fromModel(c32.f18032c);
        c1389o8.f20286d = (C1588w8) fromModel2.f18057a;
        C1571vg c1571vg = c32.f18033d;
        if (c1571vg != null) {
            ci = this.f17979d.fromModel(c1571vg);
            c1389o8.f20284b = (C1663z8) ci.f18057a;
        } else {
            ci = null;
        }
        return new Ci(c1389o8, new C1483s3(C1483s3.b(fromModel, fromModel2, ci)));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        Ci ci = (Ci) obj;
        throw new UnsupportedOperationException();
    }

    public B3(Af af2, H7 h72, C1545uf c1545uf, C1098cg c1098cg) {
        this.f17976a = af2;
        this.f17977b = h72;
        this.f17978c = c1545uf;
        this.f17979d = c1098cg;
    }

    public final C3 a(Ci ci) {
        throw new UnsupportedOperationException();
    }
}
