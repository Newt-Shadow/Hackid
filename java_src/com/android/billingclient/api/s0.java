package com.android.billingclient.api;

import org.json.JSONObject;
/* loaded from: classes.dex */
public final class s0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f5469a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5470b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0(JSONObject jSONObject) {
        this.f5469a = jSONObject.getString("rentalPeriod");
        String optString = jSONObject.optString("rentalExpirationPeriod");
        this.f5470b = true == optString.isEmpty() ? null : optString;
    }
}
