package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Xi implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final C1445qe f19261a;

    /* renamed from: b  reason: collision with root package name */
    public final D3 f19262b;

    /* renamed from: c  reason: collision with root package name */
    public final Ea f19263c;

    /* renamed from: d  reason: collision with root package name */
    public final Ea f19264d;

    public Xi() {
        this(new C1445qe(), new D3(), new Ea(100), new Ea(1000));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Ci fromModel(C1076bj c1076bj) {
        Ci ci;
        A8 a82 = new A8();
        C1503sn a10 = this.f19263c.a(c1076bj.f19435a);
        a82.f17942a = StringUtils.getUTF8Bytes((String) a10.f20611a);
        List<String> list = c1076bj.f19436b;
        Ci ci2 = null;
        if (list != null) {
            ci = this.f19262b.fromModel(list);
            a82.f17943b = (C1414p8) ci.f18057a;
        } else {
            ci = null;
        }
        C1503sn a11 = this.f19264d.a(c1076bj.f19437c);
        a82.f17944c = StringUtils.getUTF8Bytes((String) a11.f20611a);
        Map<String, String> map = c1076bj.f19438d;
        if (map != null) {
            ci2 = this.f19261a.fromModel(map);
            a82.f17945d = (C1563v8) ci2.f18057a;
        }
        return new Ci(a82, new C1483s3(C1483s3.b(a10, ci, a11, ci2)));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        Ci ci = (Ci) obj;
        throw new UnsupportedOperationException();
    }

    public Xi(C1445qe c1445qe, D3 d32, Ea ea2, Ea ea3) {
        this.f19261a = c1445qe;
        this.f19262b = d32;
        this.f19263c = ea2;
        this.f19264d = ea3;
    }

    public final C1076bj a(Ci ci) {
        throw new UnsupportedOperationException();
    }
}
