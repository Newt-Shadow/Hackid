package com.yandex.metrica.impl.ob;

import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.android.billingclient.api.SkuDetails;
/* renamed from: com.yandex.metrica.impl.ob.e  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0494e {

    /* renamed from: a  reason: collision with root package name */
    public static final C0494e f12260a = new C0494e();

    private C0494e() {
    }

    private final int b(SkuDetails skuDetails) {
        boolean z10;
        String a10 = skuDetails.a();
        kotlin.jvm.internal.m.d(a10, "skuDetails.freeTrialPeriod");
        if (a10.length() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            return 1;
        }
        return skuDetails.c();
    }

    private final zb.c c(SkuDetails skuDetails) {
        boolean z10;
        String a10 = skuDetails.a();
        kotlin.jvm.internal.m.d(a10, "skuDetails.freeTrialPeriod");
        if (a10.length() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return zb.c.a(skuDetails.d());
        }
        return zb.c.a(skuDetails.a());
    }

    public final zb.d a(PurchaseHistoryRecord purchasesHistoryRecord, SkuDetails skuDetails, Purchase purchase) {
        zb.e eVar;
        kotlin.jvm.internal.m.e(purchasesHistoryRecord, "purchasesHistoryRecord");
        kotlin.jvm.internal.m.e(skuDetails, "skuDetails");
        String type = skuDetails.i();
        kotlin.jvm.internal.m.d(type, "skuDetails.type");
        kotlin.jvm.internal.m.e(type, "type");
        int hashCode = type.hashCode();
        if (hashCode != 3541555) {
            if (hashCode == 100343516 && type.equals("inapp")) {
                eVar = zb.e.INAPP;
            }
            eVar = zb.e.UNKNOWN;
        } else {
            if (type.equals("subs")) {
                eVar = zb.e.SUBS;
            }
            eVar = zb.e.UNKNOWN;
        }
        return new zb.d(eVar, skuDetails.g(), purchasesHistoryRecord.f(), skuDetails.e(), skuDetails.f(), a(skuDetails), c(skuDetails), b(skuDetails), zb.c.a(skuDetails.h()), purchasesHistoryRecord.g(), purchasesHistoryRecord.e(), purchasesHistoryRecord.d(), purchase != null ? purchase.n() : false, (purchase == null || (r1 = purchase.d()) == null) ? "{}" : "{}");
    }

    private final long a(SkuDetails skuDetails) {
        String a10 = skuDetails.a();
        kotlin.jvm.internal.m.d(a10, "skuDetails.freeTrialPeriod");
        if (a10.length() == 0) {
            return skuDetails.b();
        }
        return 0L;
    }
}
