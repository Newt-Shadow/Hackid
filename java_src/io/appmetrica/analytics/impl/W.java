package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
/* loaded from: classes2.dex */
public final class W implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final Q f19136a;

    /* renamed from: b  reason: collision with root package name */
    public final C1561v6 f19137b;

    public W() {
        this(new Q(new C1130dn()), new C1561v6());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1213h6 fromModel(V v10) {
        C1213h6 c1213h6 = new C1213h6();
        c1213h6.f19719a = this.f19136a.fromModel(v10.f19099a);
        String str = v10.f19100b;
        if (str != null) {
            c1213h6.f19720b = str;
        }
        c1213h6.f19721c = this.f19137b.a(v10.f19101c);
        return c1213h6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        C1213h6 c1213h6 = (C1213h6) obj;
        throw new UnsupportedOperationException();
    }

    public W(Q q10, C1561v6 c1561v6) {
        this.f19136a = q10;
        this.f19137b = c1561v6;
    }

    public final V a(C1213h6 c1213h6) {
        throw new UnsupportedOperationException();
    }
}
