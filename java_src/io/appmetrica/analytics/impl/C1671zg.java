package io.appmetrica.analytics.impl;

import android.content.Context;
/* renamed from: io.appmetrica.analytics.impl.zg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1671zg implements Bl, Sa {

    /* renamed from: a  reason: collision with root package name */
    public final Context f21066a;

    /* renamed from: b  reason: collision with root package name */
    public final C1212h5 f21067b;

    /* renamed from: c  reason: collision with root package name */
    public final C1237i5 f21068c;

    /* renamed from: d  reason: collision with root package name */
    public final C1353mm f21069d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC1068bb f21070e;

    public C1671zg(Context context, C1212h5 c1212h5, G4 g42, InterfaceC1411p5 interfaceC1411p5, C1237i5 c1237i5, C1501sl c1501sl) {
        this.f21066a = context;
        this.f21067b = c1212h5;
        this.f21068c = c1237i5;
        C1353mm a10 = c1501sl.a(context, c1212h5, g42.f18259a);
        this.f21069d = a10;
        this.f21070e = interfaceC1411p5.a(context, c1212h5, g42.f18260b, a10);
        c1501sl.a(c1212h5, this);
    }

    public final C1212h5 a() {
        return this.f21067b;
    }

    public final Context b() {
        return this.f21066a;
    }

    public final void a(InterfaceC1584w4 interfaceC1584w4) {
        this.f21068c.f19775a.add(interfaceC1584w4);
    }

    public final void b(InterfaceC1584w4 interfaceC1584w4) {
        this.f21068c.f19775a.remove(interfaceC1584w4);
    }

    @Override // io.appmetrica.analytics.impl.Bl
    public final void a(Ql ql) {
        this.f21070e.a(ql);
    }

    @Override // io.appmetrica.analytics.impl.Bl
    public final void a(EnumC1551ul enumC1551ul, Ql ql) {
        ((C1386o5) this.f21070e).getClass();
    }

    @Override // io.appmetrica.analytics.impl.Sa
    public final void a(G4 g42) {
        this.f21069d.a(g42.f18259a);
        this.f21070e.a(g42.f18260b);
    }

    public C1671zg(Context context, C1212h5 c1212h5, G4 g42, InterfaceC1411p5 interfaceC1411p5) {
        this(context, c1212h5, g42, interfaceC1411p5, new C1237i5(), C1501sl.a());
    }

    public final void a(C1138e6 c1138e6, G4 g42) {
        if (!H9.f18292c.contains(EnumC1367nb.a(c1138e6.f19574d))) {
            this.f21070e.a(g42.f18260b);
        }
        ((C1386o5) this.f21070e).a(c1138e6);
    }
}
