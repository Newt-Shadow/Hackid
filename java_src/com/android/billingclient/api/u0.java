package com.android.billingclient.api;

import com.android.billingclient.api.i;
import io.flutter.plugins.firebase.analytics.Constants;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class u0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f5479a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5480b;

    /* renamed from: c  reason: collision with root package name */
    private final String f5481c;

    /* renamed from: d  reason: collision with root package name */
    private final String f5482d;

    /* renamed from: e  reason: collision with root package name */
    private final String f5483e;

    /* renamed from: f  reason: collision with root package name */
    private final i.b f5484f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(JSONObject jSONObject) {
        i.b bVar;
        this.f5479a = jSONObject.getString("productId");
        this.f5480b = jSONObject.optString("title");
        this.f5481c = jSONObject.optString(Constants.NAME);
        this.f5482d = jSONObject.optString("description");
        this.f5483e = jSONObject.optString("basePlanId");
        JSONObject optJSONObject = jSONObject.optJSONObject("pricingPhase");
        if (optJSONObject == null) {
            bVar = null;
        } else {
            bVar = new i.b(optJSONObject);
        }
        this.f5484f = bVar;
    }
}
