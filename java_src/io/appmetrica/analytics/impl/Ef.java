package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
/* loaded from: classes2.dex */
public final class Ef implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final Da f18181a;

    public Ef() {
        this(new Da(20, 100));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Ci fromModel(List<String> list) {
        C1503sn a10 = this.f18181a.a((List<Object>) list);
        List list2 = (List) a10.f20611a;
        C1638y8[] c1638y8Arr = new C1638y8[0];
        if (list2 != null) {
            c1638y8Arr = new C1638y8[list2.size()];
            for (int i10 = 0; i10 < list2.size(); i10++) {
                C1638y8 c1638y8 = new C1638y8();
                c1638y8Arr[i10] = c1638y8;
                c1638y8.f20979a = StringUtils.getUTF8Bytes((String) list2.get(i10));
            }
        }
        a10.f20612b.getBytesTruncated();
        return new Ci(c1638y8Arr, a10.f20612b);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        Ci ci = (Ci) obj;
        throw new UnsupportedOperationException();
    }

    public Ef(Da da2) {
        this.f18181a = da2;
    }

    public final List<String> a(Ci ci) {
        throw new UnsupportedOperationException();
    }
}
