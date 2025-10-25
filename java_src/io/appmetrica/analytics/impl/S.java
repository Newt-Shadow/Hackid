package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
/* loaded from: classes2.dex */
public final class S implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final H7 f18913a;

    /* renamed from: b  reason: collision with root package name */
    public final Ea f18914b;

    public S() {
        this(new H7(), new Ea(20));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Ci fromModel(T t10) {
        C1339m8 c1339m8 = new C1339m8();
        c1339m8.f20098b = this.f18913a.fromModel(t10.f18950a);
        C1503sn a10 = this.f18914b.a(t10.f18951b);
        c1339m8.f20097a = StringUtils.getUTF8Bytes((String) a10.f20611a);
        return new Ci(c1339m8, new C1483s3(C1483s3.b(a10)));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        Ci ci = (Ci) obj;
        throw new UnsupportedOperationException();
    }

    public S(H7 h72, Ea ea2) {
        this.f18913a = h72;
        this.f18914b = ea2;
    }

    public final T a(Ci ci) {
        throw new UnsupportedOperationException();
    }
}
