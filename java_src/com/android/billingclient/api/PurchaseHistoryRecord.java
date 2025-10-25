package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class PurchaseHistoryRecord {

    /* renamed from: a  reason: collision with root package name */
    private final String f5226a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5227b;

    /* renamed from: c  reason: collision with root package name */
    private final JSONObject f5228c;

    public PurchaseHistoryRecord(String str, String str2) {
        this.f5226a = str;
        this.f5227b = str2;
        this.f5228c = new JSONObject(str);
    }

    private final ArrayList i() {
        ArrayList arrayList = new ArrayList();
        if (this.f5228c.has("productIds")) {
            JSONArray optJSONArray = this.f5228c.optJSONArray("productIds");
            if (optJSONArray != null) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    arrayList.add(optJSONArray.optString(i10));
                }
            }
        } else if (this.f5228c.has("productId")) {
            arrayList.add(this.f5228c.optString("productId"));
        }
        return arrayList;
    }

    public String a() {
        return this.f5228c.optString("developerPayload");
    }

    public String b() {
        return this.f5226a;
    }

    public List c() {
        return i();
    }

    public long d() {
        return this.f5228c.optLong("purchaseTime");
    }

    public String e() {
        JSONObject jSONObject = this.f5228c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PurchaseHistoryRecord)) {
            return false;
        }
        PurchaseHistoryRecord purchaseHistoryRecord = (PurchaseHistoryRecord) obj;
        if (TextUtils.equals(this.f5226a, purchaseHistoryRecord.b()) && TextUtils.equals(this.f5227b, purchaseHistoryRecord.g())) {
            return true;
        }
        return false;
    }

    public int f() {
        return this.f5228c.optInt("quantity", 1);
    }

    public String g() {
        return this.f5227b;
    }

    public ArrayList h() {
        return i();
    }

    public int hashCode() {
        return this.f5226a.hashCode();
    }

    public String toString() {
        return "PurchaseHistoryRecord. Json: ".concat(String.valueOf(this.f5226a));
    }
}
