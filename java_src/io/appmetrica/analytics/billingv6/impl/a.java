package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
import java.util.List;
/* loaded from: classes2.dex */
public final class a extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f17571a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ com.android.billingclient.api.h f17572b;

    public a(d dVar, com.android.billingclient.api.h hVar) {
        this.f17571a = dVar;
        this.f17572b = hVar;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        List<String> k10;
        d dVar = this.f17571a;
        com.android.billingclient.api.h hVar = this.f17572b;
        dVar.getClass();
        if (hVar.b() == 0) {
            k10 = yc.o.k("inapp", "subs");
            for (String str : k10) {
                BillingConfig billingConfig = dVar.f17578a;
                com.android.billingclient.api.d dVar2 = dVar.f17579b;
                UtilsProvider utilsProvider = dVar.f17580c;
                g gVar = dVar.f17581d;
                p pVar = new p(billingConfig, dVar2, utilsProvider, str, gVar, dVar.f17582e);
                gVar.f17589c.add(pVar);
                dVar.f17580c.getUiExecutor().execute(new c(dVar, str, pVar));
            }
            return;
        }
        dVar.f17582e.onUpdateFinished();
    }
}
