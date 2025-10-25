package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Af implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final C1445qe f17951a;

    /* renamed from: b  reason: collision with root package name */
    public final C1545uf f17952b;

    /* renamed from: c  reason: collision with root package name */
    public final D3 f17953c;

    /* renamed from: d  reason: collision with root package name */
    public final Ef f17954d;

    /* renamed from: e  reason: collision with root package name */
    public final Ea f17955e;

    /* renamed from: f  reason: collision with root package name */
    public final Ea f17956f;

    public Af() {
        this(new C1445qe(), new C1545uf(), new D3(), new Ef(), new Ea(100), new Ea(1000));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Ci fromModel(Df df2) {
        Ci ci;
        Ci ci2;
        Ci ci3;
        Ci ci4;
        C1613x8 c1613x8 = new C1613x8();
        C1503sn a10 = this.f17955e.a(df2.f18105a);
        c1613x8.f20920a = StringUtils.getUTF8Bytes((String) a10.f20611a);
        C1503sn a11 = this.f17956f.a(df2.f18106b);
        c1613x8.f20921b = StringUtils.getUTF8Bytes((String) a11.f20611a);
        List<String> list = df2.f18107c;
        Ci ci5 = null;
        if (list != null) {
            ci = this.f17953c.fromModel(list);
            c1613x8.f20922c = (C1414p8) ci.f18057a;
        } else {
            ci = null;
        }
        Map<String, String> map = df2.f18108d;
        if (map != null) {
            ci2 = this.f17951a.fromModel(map);
            c1613x8.f20923d = (C1563v8) ci2.f18057a;
        } else {
            ci2 = null;
        }
        C1595wf c1595wf = df2.f18109e;
        if (c1595wf != null) {
            ci3 = this.f17952b.fromModel(c1595wf);
            c1613x8.f20924e = (C1588w8) ci3.f18057a;
        } else {
            ci3 = null;
        }
        C1595wf c1595wf2 = df2.f18110f;
        if (c1595wf2 != null) {
            ci4 = this.f17952b.fromModel(c1595wf2);
            c1613x8.f20925f = (C1588w8) ci4.f18057a;
        } else {
            ci4 = null;
        }
        List<String> list2 = df2.f18111g;
        if (list2 != null) {
            ci5 = this.f17954d.fromModel(list2);
            c1613x8.f20926g = (C1638y8[]) ci5.f18057a;
        }
        return new Ci(c1613x8, new C1483s3(C1483s3.b(a10, a11, ci, ci2, ci3, ci4, ci5)));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        Ci ci = (Ci) obj;
        throw new UnsupportedOperationException();
    }

    public Af(C1445qe c1445qe, C1545uf c1545uf, D3 d32, Ef ef2, Ea ea2, Ea ea3) {
        this.f17951a = c1445qe;
        this.f17952b = c1545uf;
        this.f17953c = d32;
        this.f17954d = ef2;
        this.f17955e = ea2;
        this.f17956f = ea3;
    }

    public final Df a(Ci ci) {
        throw new UnsupportedOperationException();
    }
}
