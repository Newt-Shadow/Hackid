package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
/* renamed from: io.appmetrica.analytics.impl.ra  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1465ra implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final AbstractC1320le f20522a;

    public C1465ra() {
        this(new Dl());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1129dm fromModel(C4 c42) {
        C1129dm c1129dm = new C1129dm();
        c1129dm.f19540b = c42.f18035b;
        c1129dm.f19539a = c42.f18034a;
        c1129dm.f19541c = c42.f18036c;
        c1129dm.f19542d = c42.f18037d;
        c1129dm.f19543e = c42.f18038e;
        c1129dm.f19544f = this.f20522a.a(c42.f18039f);
        return c1129dm;
    }

    public C1465ra(Dl dl) {
        this.f20522a = dl;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C4 toModel(C1129dm c1129dm) {
        A4 a42 = new A4();
        a42.f17928d = c1129dm.f19542d;
        a42.f17927c = c1129dm.f19541c;
        a42.f17926b = c1129dm.f19540b;
        a42.f17925a = c1129dm.f19539a;
        a42.f17929e = c1129dm.f19543e;
        a42.f17930f = this.f20522a.a(c1129dm.f19544f);
        return new C4(a42);
    }
}
