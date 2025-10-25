package io.appmetrica.analytics.impl;

import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.nc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1368nc {

    /* renamed from: a  reason: collision with root package name */
    public final Og f20198a;

    /* renamed from: b  reason: collision with root package name */
    public final C9 f20199b;

    /* renamed from: c  reason: collision with root package name */
    public final F4 f20200c;

    /* renamed from: d  reason: collision with root package name */
    public final Ue f20201d;

    /* renamed from: e  reason: collision with root package name */
    public final C1137e5 f20202e;

    /* renamed from: f  reason: collision with root package name */
    public final Hc f20203f = new Hc();

    /* renamed from: g  reason: collision with root package name */
    public final xc.d f20204g;

    public C1368nc(W6 w62, Og og, C9 c92, F4 f42, Ue ue2) {
        xc.d a10;
        this.f20198a = og;
        this.f20199b = c92;
        this.f20200c = f42;
        this.f20201d = ue2;
        this.f20202e = new C1137e5(w62, og);
        a10 = xc.f.a(new C1343mc(this));
        this.f20204g = a10;
    }

    public final List<O8> a() {
        return this.f20202e.a();
    }

    public final List<O8> b() {
        List b10;
        List b11;
        List<O8> c02;
        b10 = yc.n.b(this.f20202e.f19570c);
        b11 = yc.n.b((O8) this.f20204g.getValue());
        c02 = yc.w.c0(b10, b11);
        return c02;
    }
}
