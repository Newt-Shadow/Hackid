package com.android.billingclient.api;

import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class SkuDetails {

    /* renamed from: a  reason: collision with root package name */
    private final String f5229a;

    /* renamed from: b  reason: collision with root package name */
    private final JSONObject f5230b;

    public SkuDetails(String str) {
        this.f5229a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f5230b = jSONObject;
        if (!TextUtils.isEmpty(jSONObject.optString("productId"))) {
            if (!TextUtils.isEmpty(jSONObject.optString("type"))) {
                return;
            }
            throw new IllegalArgumentException("SkuType cannot be empty.");
        }
        throw new IllegalArgumentException("SKU cannot be empty.");
    }

    public String a() {
        return this.f5230b.optString("freeTrialPeriod");
    }

    public long b() {
        return this.f5230b.optLong("introductoryPriceAmountMicros");
    }

    public int c() {
        return this.f5230b.optInt("introductoryPriceCycles");
    }

    public String d() {
        return this.f5230b.optString("introductoryPricePeriod");
    }

    public long e() {
        return this.f5230b.optLong("price_amount_micros");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SkuDetails)) {
            return false;
        }
        return TextUtils.equals(this.f5229a, ((SkuDetails) obj).f5229a);
    }

    public String f() {
        return this.f5230b.optString("price_currency_code");
    }

    public String g() {
        return this.f5230b.optString("productId");
    }

    public String h() {
        return this.f5230b.optString("subscriptionPeriod");
    }

    public int hashCode() {
        return this.f5229a.hashCode();
    }

    public String i() {
        return this.f5230b.optString("type");
    }

    public int j() {
        return this.f5230b.optInt("offer_type");
    }

    public String k() {
        return this.f5230b.optString("offer_id");
    }

    public String l() {
        String optString = this.f5230b.optString("offerIdToken");
        if (optString.isEmpty()) {
            return this.f5230b.optString("offer_id_token");
        }
        return optString;
    }

    public final String m() {
        return this.f5230b.optString("packageName");
    }

    public String n() {
        return this.f5230b.optString("serializedDocid");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String o() {
        return this.f5230b.optString("skuDetailsToken");
    }

    public String toString() {
        return "SkuDetails: ".concat(String.valueOf(this.f5229a));
    }
}
