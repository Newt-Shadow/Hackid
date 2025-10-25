package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.dn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1130dn implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final C1352ml f19545a;

    public C1130dn() {
        this(new C1352ml());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1412p6 fromModel(C1105cn c1105cn) {
        C1412p6 c1412p6 = new C1412p6();
        Integer num = c1105cn.f19492e;
        c1412p6.f20328e = num == null ? -1 : num.intValue();
        c1412p6.f20327d = c1105cn.f19491d;
        c1412p6.f20325b = c1105cn.f19489b;
        c1412p6.f20324a = c1105cn.f19488a;
        c1412p6.f20326c = c1105cn.f19490c;
        C1352ml c1352ml = this.f19545a;
        List<StackTraceElement> list = c1105cn.f19493f;
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : list) {
            arrayList.add(new C1402ol(stackTraceElement));
        }
        c1412p6.f20329f = c1352ml.fromModel(arrayList);
        return c1412p6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        C1412p6 c1412p6 = (C1412p6) obj;
        throw new UnsupportedOperationException();
    }

    public C1130dn(C1352ml c1352ml) {
        this.f19545a = c1352ml;
    }

    public final C1105cn a(C1412p6 c1412p6) {
        throw new UnsupportedOperationException();
    }
}
