package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
/* renamed from: io.appmetrica.analytics.impl.cg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1098cg implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final Xi f19475a;

    /* renamed from: b  reason: collision with root package name */
    public final Ea f19476b;

    /* renamed from: c  reason: collision with root package name */
    public final Ea f19477c;

    public C1098cg() {
        this(new Xi(), new Ea(100), new Ea(2048));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Ci fromModel(C1571vg c1571vg) {
        Ci ci;
        C1663z8 c1663z8 = new C1663z8();
        C1503sn a10 = this.f19476b.a(c1571vg.f20807a);
        c1663z8.f21033a = StringUtils.getUTF8Bytes((String) a10.f20611a);
        C1503sn a11 = this.f19477c.a(c1571vg.f20808b);
        c1663z8.f21034b = StringUtils.getUTF8Bytes((String) a11.f20611a);
        C1076bj c1076bj = c1571vg.f20809c;
        if (c1076bj != null) {
            ci = this.f19475a.fromModel(c1076bj);
            c1663z8.f21035c = (A8) ci.f18057a;
        } else {
            ci = null;
        }
        return new Ci(c1663z8, new C1483s3(C1483s3.b(a10, a11, ci)));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        Ci ci = (Ci) obj;
        throw new UnsupportedOperationException();
    }

    public C1098cg(Xi xi, Ea ea2, Ea ea3) {
        this.f19475a = xi;
        this.f19476b = ea2;
        this.f19477c = ea3;
    }

    public final C1571vg a(Ci ci) {
        throw new UnsupportedOperationException();
    }
}
