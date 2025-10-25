package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.jh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1273jh extends AbstractC1063b6 {

    /* renamed from: b  reason: collision with root package name */
    public final C1386o5 f19865b;

    /* renamed from: c  reason: collision with root package name */
    public final InterfaceC1248ih f19866c;

    /* renamed from: d  reason: collision with root package name */
    public final U3 f19867d;

    public C1273jh(C1386o5 c1386o5, InterfaceC1248ih interfaceC1248ih) {
        this(c1386o5, interfaceC1248ih, new U3());
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1063b6, io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.ComponentLoader, io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.RequestConfigLoader
    /* renamed from: b */
    public final C1323lh load(C1038a6 c1038a6) {
        C1323lh c1323lh = (C1323lh) super.load(c1038a6);
        c1323lh.f20046m = ((C1199gh) c1038a6.componentArguments).f19677a;
        c1323lh.f20051r = this.f19865b.f20272t.a();
        c1323lh.f20056w = this.f19865b.f20269q.a();
        C1199gh c1199gh = (C1199gh) c1038a6.componentArguments;
        c1323lh.f20037d = c1199gh.f19678b;
        c1323lh.f20038e = c1199gh.f19679c;
        c1323lh.f20039f = c1199gh.f19680d;
        c1323lh.f20042i = c1199gh.f19681e;
        c1323lh.f20040g = c1199gh.f19682f;
        c1323lh.f20041h = c1199gh.f19683g;
        Boolean valueOf = Boolean.valueOf(c1199gh.f19684h);
        InterfaceC1248ih interfaceC1248ih = this.f19866c;
        c1323lh.f20043j = valueOf;
        c1323lh.f20044k = interfaceC1248ih;
        C1199gh c1199gh2 = (C1199gh) c1038a6.componentArguments;
        c1323lh.f20055v = c1199gh2.f19686j;
        Ql ql = c1038a6.f19374a;
        C4 c42 = ql.f18841n;
        c1323lh.f20047n = c42.f18034a;
        C1569ve c1569ve = ql.f18846s;
        if (c1569ve != null) {
            c1323lh.f20052s = c1569ve.f20805a;
            c1323lh.f20053t = c1569ve.f20806b;
        }
        c1323lh.f20048o = c42.f18035b;
        c1323lh.f20050q = ql.f18832e;
        c1323lh.f20049p = ql.f18838k;
        U3 u32 = this.f19867d;
        Map<String, String> map = c1199gh2.f19685i;
        R3 e10 = C1665za.E.e();
        u32.getClass();
        c1323lh.f20054u = U3.a(map, ql, e10);
        return c1323lh;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.ComponentLoader
    public final BaseRequestConfig createBlankConfig() {
        return new C1323lh(this.f19865b);
    }

    public C1273jh(C1386o5 c1386o5, InterfaceC1248ih interfaceC1248ih, U3 u32) {
        super(c1386o5.getContext(), c1386o5.b().c());
        this.f19865b = c1386o5;
        this.f19866c = interfaceC1248ih;
        this.f19867d = u32;
    }

    public final C1323lh a() {
        return new C1323lh(this.f19865b);
    }
}
