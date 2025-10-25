package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
/* loaded from: classes2.dex */
public final class D3 implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final Da f18073a;

    public D3() {
        this(new Da(20, 100));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Ci fromModel(List<String> list) {
        C1503sn a10 = this.f18073a.a((List<Object>) list);
        C1414p8 c1414p8 = new C1414p8();
        c1414p8.f20349a = StringUtils.getUTF8Bytes((List) a10.f20611a);
        InterfaceC1508t3 interfaceC1508t3 = a10.f20612b;
        int i10 = ((E4) interfaceC1508t3).f20571a;
        return new Ci(c1414p8, interfaceC1508t3);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        Ci ci = (Ci) obj;
        throw new UnsupportedOperationException();
    }

    public D3(Da da2) {
        this.f18073a = da2;
    }

    public final List<String> a(Ci ci) {
        throw new UnsupportedOperationException();
    }
}
