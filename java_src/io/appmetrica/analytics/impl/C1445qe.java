package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.qe  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1445qe implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final Ha f20442a;

    public C1445qe() {
        this(new Ha(20480, 100, 1000));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Ci fromModel(Map<String, String> map) {
        C1503sn a10 = this.f20442a.a(map);
        C1563v8 c1563v8 = new C1563v8();
        c1563v8.f20779b = ((E4) a10.f20612b).f18140b;
        Map map2 = (Map) a10.f20611a;
        if (map2 != null) {
            c1563v8.f20778a = new C1538u8[map2.size()];
            int i10 = 0;
            for (Map.Entry entry : map2.entrySet()) {
                c1563v8.f20778a[i10] = new C1538u8();
                c1563v8.f20778a[i10].f20716a = StringUtils.getUTF8Bytes((String) entry.getKey());
                c1563v8.f20778a[i10].f20717b = StringUtils.getUTF8Bytes((String) entry.getValue());
                i10++;
            }
        }
        InterfaceC1508t3 interfaceC1508t3 = a10.f20612b;
        int i11 = ((E4) interfaceC1508t3).f20571a;
        return new Ci(c1563v8, interfaceC1508t3);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        Ci ci = (Ci) obj;
        throw new UnsupportedOperationException();
    }

    public C1445qe(Ha ha2) {
        this.f20442a = ha2;
    }

    public final Map<String, String> a(Ci ci) {
        throw new UnsupportedOperationException();
    }
}
