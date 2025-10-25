package io.appmetrica.analytics.billingv6.impl;

import com.android.billingclient.api.PurchaseHistoryRecord;
import io.appmetrica.analytics.billinginterface.internal.BillingInfo;
import io.appmetrica.analytics.billinginterface.internal.ProductType;
import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import yc.w;
/* loaded from: classes2.dex */
public final class l extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ p f17604a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ com.android.billingclient.api.h f17605b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ List f17606c;

    public l(p pVar, com.android.billingclient.api.h hVar, List list) {
        this.f17604a = pVar;
        this.f17605b = hVar;
        this.f17606c = list;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        List k02;
        ProductType productType;
        p pVar = this.f17604a;
        com.android.billingclient.api.h hVar = this.f17605b;
        List<PurchaseHistoryRecord> list = this.f17606c;
        pVar.getClass();
        if (hVar.b() == 0 && list != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (PurchaseHistoryRecord purchaseHistoryRecord : list) {
                for (String str : purchaseHistoryRecord.c()) {
                    String str2 = pVar.f17619d;
                    if (kotlin.jvm.internal.m.a(str2, "inapp")) {
                        productType = ProductType.INAPP;
                    } else if (kotlin.jvm.internal.m.a(str2, "subs")) {
                        productType = ProductType.SUBS;
                    } else {
                        productType = ProductType.UNKNOWN;
                    }
                    BillingInfo billingInfo = new BillingInfo(productType, str, purchaseHistoryRecord.e(), purchaseHistoryRecord.d(), 0L);
                    linkedHashMap.put(billingInfo.productId, billingInfo);
                }
            }
            Map<String, BillingInfo> billingInfoToUpdate = pVar.f17618c.getUpdatePolicy().getBillingInfoToUpdate(pVar.f17616a, linkedHashMap, pVar.f17618c.getBillingInfoManager());
            if (!billingInfoToUpdate.isEmpty()) {
                k02 = w.k0(billingInfoToUpdate.keySet());
                u uVar = pVar.f17621f;
                m mVar = new m(linkedHashMap, billingInfoToUpdate, pVar);
                String str3 = pVar.f17619d;
                com.android.billingclient.api.d dVar = pVar.f17617b;
                UtilsProvider utilsProvider = pVar.f17618c;
                g gVar = pVar.f17620e;
                k kVar = new k(str3, dVar, utilsProvider, mVar, list, gVar, uVar);
                gVar.f17589c.add(kVar);
                pVar.f17618c.getUiExecutor().execute(new o(pVar, k02, kVar, uVar));
            } else {
                t.a(linkedHashMap, billingInfoToUpdate, pVar.f17619d, pVar.f17618c.getBillingInfoManager());
                pVar.f17621f.onUpdateFinished();
            }
        } else {
            pVar.f17621f.onUpdateFinished();
        }
        p pVar2 = this.f17604a;
        pVar2.f17620e.a(pVar2);
    }
}
