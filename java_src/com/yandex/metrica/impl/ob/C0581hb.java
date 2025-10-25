package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0556gb;
import md.c;
/* renamed from: com.yandex.metrica.impl.ob.hb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0581hb {

    /* renamed from: a  reason: collision with root package name */
    private final C0556gb.b f12514a = new C0556gb.b(false, 1);

    public final C0556gb a(Uh uh) {
        C0556gb.b bVar = this.f12514a;
        c.a aVar = md.c.f26021a;
        F0 g10 = F0.g();
        kotlin.jvm.internal.m.d(g10, "GlobalServiceLocator.getInstance()");
        Pm q10 = g10.q();
        kotlin.jvm.internal.m.d(q10, "GlobalServiceLocator.get…).serviceExecutorProvider");
        ICommonExecutor g11 = q10.g();
        kotlin.jvm.internal.m.d(g11, "GlobalServiceLocator.get…rovider.supportIOExecutor");
        M0 a10 = C0761oh.a();
        kotlin.jvm.internal.m.d(a10, "YandexMetricaSelfReportFacade.getReporter()");
        return new C0556gb(uh, bVar, aVar, g11, new C0655kb(new C0630jb(uh, a10), uh));
    }
}
