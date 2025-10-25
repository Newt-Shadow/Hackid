package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Ac implements InterfaceC1247ig {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Bc f17949a;

    public Ac(Bc bc2) {
        this.f17949a = bc2;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1247ig
    public final void a(C1322lg c1322lg) {
        if (c1322lg == null) {
            return;
        }
        C1138e6 c1138e6 = new C1138e6("", "", 0);
        c1138e6.setValueBytes(c1322lg.a());
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        c1138e6.f19574d = 4097;
        this.f17949a.a(c1138e6);
    }
}
