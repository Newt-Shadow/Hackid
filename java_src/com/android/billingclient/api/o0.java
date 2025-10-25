package com.android.billingclient.api;

import org.json.JSONObject;
/* loaded from: classes.dex */
public final class o0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(JSONObject jSONObject) {
        jSONObject.getInt("commitmentPaymentsCount");
        jSONObject.optInt("subsequentCommitmentPaymentsCount");
    }
}
