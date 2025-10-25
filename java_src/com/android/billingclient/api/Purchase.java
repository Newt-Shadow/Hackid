package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class Purchase {

    /* renamed from: a  reason: collision with root package name */
    private final String f5223a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5224b;

    /* renamed from: c  reason: collision with root package name */
    private final JSONObject f5225c;

    public Purchase(String str, String str2) {
        this.f5223a = str;
        this.f5224b = str2;
        this.f5225c = new JSONObject(str);
    }

    private final ArrayList o() {
        ArrayList arrayList = new ArrayList();
        if (this.f5225c.has("productIds")) {
            JSONArray optJSONArray = this.f5225c.optJSONArray("productIds");
            if (optJSONArray != null) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    arrayList.add(optJSONArray.optString(i10));
                }
            }
        } else if (this.f5225c.has("productId")) {
            arrayList.add(this.f5225c.optString("productId"));
        }
        return arrayList;
    }

    public a a() {
        JSONObject jSONObject = this.f5225c;
        String optString = jSONObject.optString("obfuscatedAccountId");
        String optString2 = jSONObject.optString("obfuscatedProfileId");
        if (optString == null && optString2 == null) {
            return null;
        }
        return new a(optString, optString2);
    }

    public String b() {
        return this.f5225c.optString("developerPayload");
    }

    public String c() {
        String optString = this.f5225c.optString("orderId");
        if (TextUtils.isEmpty(optString)) {
            return null;
        }
        return optString;
    }

    public String d() {
        return this.f5223a;
    }

    public String e() {
        return this.f5225c.optString("packageName");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        if (TextUtils.equals(this.f5223a, purchase.d()) && TextUtils.equals(this.f5224b, purchase.k())) {
            return true;
        }
        return false;
    }

    public List f() {
        return o();
    }

    public int g() {
        if (this.f5225c.optInt("purchaseState", 1) != 4) {
            return 1;
        }
        return 2;
    }

    public long h() {
        return this.f5225c.optLong("purchaseTime");
    }

    public int hashCode() {
        return this.f5223a.hashCode();
    }

    public String i() {
        JSONObject jSONObject = this.f5225c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    public int j() {
        return this.f5225c.optInt("quantity", 1);
    }

    public String k() {
        return this.f5224b;
    }

    public ArrayList l() {
        return o();
    }

    public boolean m() {
        return this.f5225c.optBoolean("acknowledged", true);
    }

    public boolean n() {
        return this.f5225c.optBoolean("autoRenewing");
    }

    public String toString() {
        return "Purchase. Json: ".concat(String.valueOf(this.f5223a));
    }
}
