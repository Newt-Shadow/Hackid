package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
/* loaded from: classes2.dex */
public final class Q implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final C1130dn f18795a;

    public Q(C1130dn c1130dn) {
        this.f18795a = c1130dn;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1188g6 fromModel(P p10) {
        C1188g6 c1188g6 = new C1188g6();
        C1105cn c1105cn = p10.f18747a;
        if (c1105cn != null) {
            c1188g6.f19670a = this.f18795a.fromModel(c1105cn);
        }
        c1188g6.f19671b = new C1412p6[p10.f18748b.size()];
        int i10 = 0;
        for (C1105cn c1105cn2 : p10.f18748b) {
            c1188g6.f19671b[i10] = this.f18795a.fromModel(c1105cn2);
            i10++;
        }
        String str = p10.f18749c;
        if (str != null) {
            c1188g6.f19672c = str;
        }
        return c1188g6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        C1188g6 c1188g6 = (C1188g6) obj;
        throw new UnsupportedOperationException();
    }

    public final P a(C1188g6 c1188g6) {
        throw new UnsupportedOperationException();
    }
}
