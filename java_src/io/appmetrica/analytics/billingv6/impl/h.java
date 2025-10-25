package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
import java.util.List;
/* loaded from: classes2.dex */
public final class h extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ k f17590a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ com.android.billingclient.api.h f17591b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ List f17592c;

    public h(k kVar, com.android.billingclient.api.h hVar, List list) {
        this.f17590a = kVar;
        this.f17591b = hVar;
        this.f17592c = list;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        k kVar = this.f17590a;
        com.android.billingclient.api.h hVar = this.f17591b;
        List list = this.f17592c;
        kVar.getClass();
        if (hVar.b() == 0 && !list.isEmpty()) {
            UtilsProvider utilsProvider = kVar.f17599c;
            id.a aVar = kVar.f17600d;
            List list2 = kVar.f17601e;
            g gVar = kVar.f17602f;
            r rVar = new r(utilsProvider, aVar, list2, list, gVar, kVar.f17603g);
            gVar.f17589c.add(rVar);
            kVar.f17599c.getUiExecutor().execute(new j(kVar, rVar));
        } else {
            kVar.f17603g.onUpdateFinished();
        }
        k kVar2 = this.f17590a;
        kVar2.f17602f.a(kVar2);
    }
}
