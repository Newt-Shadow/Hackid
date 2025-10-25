package com.android.billingclient.api;

import android.os.Bundle;
import com.android.billingclient.api.h;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class y0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static x0 a(Bundle bundle, String str, String str2) {
        h hVar = j0.f5407j;
        if (bundle == null) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", String.format("%s got null owned items list", str2));
            return new x0(hVar, 54);
        }
        int b10 = com.google.android.gms.internal.play_billing.b0.b(bundle, "BillingClient");
        String g10 = com.google.android.gms.internal.play_billing.b0.g(bundle, "BillingClient");
        h.a c10 = h.c();
        c10.c(b10);
        c10.b(g10);
        h a10 = c10.a();
        if (b10 != 0) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", String.format("%s failed. Response code: %s", str2, Integer.valueOf(b10)));
            return new x0(a10, 23);
        } else if (bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") && bundle.containsKey("INAPP_PURCHASE_DATA_LIST") && bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            if (stringArrayList == null) {
                com.google.android.gms.internal.play_billing.b0.k("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", str2));
                return new x0(hVar, 56);
            } else if (stringArrayList2 == null) {
                com.google.android.gms.internal.play_billing.b0.k("BillingClient", String.format("Bundle returned from %s contains null purchases list.", str2));
                return new x0(hVar, 57);
            } else if (stringArrayList3 == null) {
                com.google.android.gms.internal.play_billing.b0.k("BillingClient", String.format("Bundle returned from %s contains null signatures list.", str2));
                return new x0(hVar, 58);
            } else {
                return new x0(j0.f5409l, 1);
            }
        } else {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", str2));
            return new x0(hVar, 55);
        }
    }
}
