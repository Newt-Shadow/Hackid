package com.android.billingclient.api;

import android.text.TextUtils;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final String f5348a;

    /* renamed from: b  reason: collision with root package name */
    private final JSONObject f5349b;

    /* renamed from: c  reason: collision with root package name */
    private final String f5350c;

    /* renamed from: d  reason: collision with root package name */
    private final String f5351d;

    /* renamed from: e  reason: collision with root package name */
    private final String f5352e;

    /* renamed from: f  reason: collision with root package name */
    private final String f5353f;

    /* renamed from: g  reason: collision with root package name */
    private final String f5354g;

    /* renamed from: h  reason: collision with root package name */
    private final String f5355h;

    /* renamed from: i  reason: collision with root package name */
    private final String f5356i;

    /* renamed from: j  reason: collision with root package name */
    private final String f5357j;

    /* renamed from: k  reason: collision with root package name */
    private final String f5358k;

    /* renamed from: l  reason: collision with root package name */
    private final List f5359l;

    /* renamed from: m  reason: collision with root package name */
    private final List f5360m;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f5361a;

        /* renamed from: b  reason: collision with root package name */
        private final long f5362b;

        /* renamed from: c  reason: collision with root package name */
        private final String f5363c;

        /* renamed from: d  reason: collision with root package name */
        private final String f5364d;

        /* renamed from: e  reason: collision with root package name */
        private final String f5365e;

        /* renamed from: f  reason: collision with root package name */
        private final String f5366f;

        /* renamed from: g  reason: collision with root package name */
        private final com.google.android.gms.internal.play_billing.j f5367g;

        /* renamed from: h  reason: collision with root package name */
        private final Long f5368h;

        /* renamed from: i  reason: collision with root package name */
        private final p0 f5369i;

        /* renamed from: j  reason: collision with root package name */
        private final t0 f5370j;

        /* renamed from: k  reason: collision with root package name */
        private final q0 f5371k;

        /* renamed from: l  reason: collision with root package name */
        private final r0 f5372l;

        /* renamed from: m  reason: collision with root package name */
        private final s0 f5373m;

        a(JSONObject jSONObject) {
            Long l10;
            p0 p0Var;
            t0 t0Var;
            q0 q0Var;
            r0 r0Var;
            this.f5361a = jSONObject.optString("formattedPrice");
            this.f5362b = jSONObject.optLong("priceAmountMicros");
            this.f5363c = jSONObject.optString("priceCurrencyCode");
            String optString = jSONObject.optString("offerIdToken");
            this.f5364d = true == optString.isEmpty() ? null : optString;
            String optString2 = jSONObject.optString("offerId");
            this.f5365e = true == optString2.isEmpty() ? null : optString2;
            String optString3 = jSONObject.optString("purchaseOptionId");
            this.f5366f = true == optString3.isEmpty() ? null : optString3;
            jSONObject.optInt("offerType");
            JSONArray optJSONArray = jSONObject.optJSONArray("offerTags");
            ArrayList arrayList = new ArrayList();
            if (optJSONArray != null) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    arrayList.add(optJSONArray.getString(i10));
                }
            }
            this.f5367g = com.google.android.gms.internal.play_billing.j.r(arrayList);
            if (jSONObject.has("fullPriceMicros")) {
                l10 = Long.valueOf(jSONObject.optLong("fullPriceMicros"));
            } else {
                l10 = null;
            }
            this.f5368h = l10;
            JSONObject optJSONObject = jSONObject.optJSONObject("discountDisplayInfo");
            if (optJSONObject == null) {
                p0Var = null;
            } else {
                p0Var = new p0(optJSONObject);
            }
            this.f5369i = p0Var;
            JSONObject optJSONObject2 = jSONObject.optJSONObject("validTimeWindow");
            if (optJSONObject2 == null) {
                t0Var = null;
            } else {
                t0Var = new t0(optJSONObject2);
            }
            this.f5370j = t0Var;
            JSONObject optJSONObject3 = jSONObject.optJSONObject("limitedQuantityInfo");
            if (optJSONObject3 == null) {
                q0Var = null;
            } else {
                q0Var = new q0(optJSONObject3);
            }
            this.f5371k = q0Var;
            JSONObject optJSONObject4 = jSONObject.optJSONObject("preorderDetails");
            if (optJSONObject4 == null) {
                r0Var = null;
            } else {
                r0Var = new r0(optJSONObject4);
            }
            this.f5372l = r0Var;
            JSONObject optJSONObject5 = jSONObject.optJSONObject("rentalDetails");
            this.f5373m = optJSONObject5 != null ? new s0(optJSONObject5) : null;
        }

        public String a() {
            return this.f5361a;
        }

        public long b() {
            return this.f5362b;
        }

        public String c() {
            return this.f5363c;
        }

        public final String d() {
            return this.f5364d;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f5374a;

        /* renamed from: b  reason: collision with root package name */
        private final long f5375b;

        /* renamed from: c  reason: collision with root package name */
        private final String f5376c;

        /* renamed from: d  reason: collision with root package name */
        private final String f5377d;

        /* renamed from: e  reason: collision with root package name */
        private final int f5378e;

        /* renamed from: f  reason: collision with root package name */
        private final int f5379f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(JSONObject jSONObject) {
            this.f5377d = jSONObject.optString("billingPeriod");
            this.f5376c = jSONObject.optString("priceCurrencyCode");
            this.f5374a = jSONObject.optString("formattedPrice");
            this.f5375b = jSONObject.optLong("priceAmountMicros");
            this.f5379f = jSONObject.optInt("recurrenceMode");
            this.f5378e = jSONObject.optInt("billingCycleCount");
        }

        public int a() {
            return this.f5378e;
        }

        public String b() {
            return this.f5377d;
        }

        public String c() {
            return this.f5374a;
        }

        public long d() {
            return this.f5375b;
        }

        public String e() {
            return this.f5376c;
        }

        public int f() {
            return this.f5379f;
        }
    }

    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final List f5380a;

        c(JSONArray jSONArray) {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                    if (optJSONObject != null) {
                        arrayList.add(new b(optJSONObject));
                    }
                }
            }
            this.f5380a = arrayList;
        }

        public List a() {
            return this.f5380a;
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f5381a;

        /* renamed from: b  reason: collision with root package name */
        private final String f5382b;

        /* renamed from: c  reason: collision with root package name */
        private final String f5383c;

        /* renamed from: d  reason: collision with root package name */
        private final c f5384d;

        /* renamed from: e  reason: collision with root package name */
        private final List f5385e;

        /* renamed from: f  reason: collision with root package name */
        private final o0 f5386f;

        /* renamed from: g  reason: collision with root package name */
        private final u0 f5387g;

        d(JSONObject jSONObject) {
            o0 o0Var;
            this.f5381a = jSONObject.optString("basePlanId");
            String optString = jSONObject.optString("offerId");
            this.f5382b = true == optString.isEmpty() ? null : optString;
            this.f5383c = jSONObject.getString("offerIdToken");
            this.f5384d = new c(jSONObject.getJSONArray("pricingPhases"));
            JSONObject optJSONObject = jSONObject.optJSONObject("installmentPlanDetails");
            if (optJSONObject == null) {
                o0Var = null;
            } else {
                o0Var = new o0(optJSONObject);
            }
            this.f5386f = o0Var;
            JSONObject optJSONObject2 = jSONObject.optJSONObject("transitionPlanDetails");
            this.f5387g = optJSONObject2 != null ? new u0(optJSONObject2) : null;
            ArrayList arrayList = new ArrayList();
            JSONArray optJSONArray = jSONObject.optJSONArray("offerTags");
            if (optJSONArray != null) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    arrayList.add(optJSONArray.getString(i10));
                }
            }
            this.f5385e = arrayList;
        }

        public String a() {
            return this.f5381a;
        }

        public String b() {
            return this.f5382b;
        }

        public List c() {
            return this.f5385e;
        }

        public String d() {
            return this.f5383c;
        }

        public c e() {
            return this.f5384d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(String str) {
        ArrayList arrayList;
        this.f5348a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f5349b = jSONObject;
        String optString = jSONObject.optString("productId");
        this.f5350c = optString;
        String optString2 = jSONObject.optString("type");
        this.f5351d = optString2;
        if (!TextUtils.isEmpty(optString)) {
            if (!TextUtils.isEmpty(optString2)) {
                this.f5352e = jSONObject.optString("title");
                this.f5353f = jSONObject.optString(Constants.NAME);
                this.f5354g = jSONObject.optString("description");
                this.f5356i = jSONObject.optString("packageDisplayName");
                this.f5357j = jSONObject.optString("iconUrl");
                this.f5355h = jSONObject.optString("skuDetailsToken");
                this.f5358k = jSONObject.optString("serializedDocid");
                JSONArray optJSONArray = jSONObject.optJSONArray("subscriptionOfferDetails");
                if (optJSONArray != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                        arrayList2.add(new d(optJSONArray.getJSONObject(i10)));
                    }
                    this.f5359l = arrayList2;
                } else {
                    if (!optString2.equals("subs") && !optString2.equals("play_pass_subs")) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList();
                    }
                    this.f5359l = arrayList;
                }
                JSONObject optJSONObject = this.f5349b.optJSONObject("oneTimePurchaseOfferDetails");
                JSONArray optJSONArray2 = this.f5349b.optJSONArray("oneTimePurchaseOfferDetailsList");
                ArrayList arrayList3 = new ArrayList();
                if (optJSONArray2 != null) {
                    for (int i11 = 0; i11 < optJSONArray2.length(); i11++) {
                        arrayList3.add(new a(optJSONArray2.getJSONObject(i11)));
                    }
                    this.f5360m = arrayList3;
                    return;
                } else if (optJSONObject != null) {
                    arrayList3.add(new a(optJSONObject));
                    this.f5360m = arrayList3;
                    return;
                } else {
                    this.f5360m = null;
                    return;
                }
            }
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        throw new IllegalArgumentException("Product id cannot be empty.");
    }

    public String a() {
        return this.f5354g;
    }

    public String b() {
        return this.f5353f;
    }

    public a c() {
        List list = this.f5360m;
        if (list != null && !list.isEmpty()) {
            return (a) this.f5360m.get(0);
        }
        return null;
    }

    public String d() {
        return this.f5350c;
    }

    public String e() {
        return this.f5351d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        return TextUtils.equals(this.f5348a, ((i) obj).f5348a);
    }

    public List f() {
        return this.f5359l;
    }

    public String g() {
        return this.f5352e;
    }

    public final String h() {
        return this.f5349b.optString("packageName");
    }

    public int hashCode() {
        return this.f5348a.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String i() {
        return this.f5355h;
    }

    public String j() {
        return this.f5358k;
    }

    public String toString() {
        List list = this.f5359l;
        String obj = this.f5349b.toString();
        String valueOf = String.valueOf(list);
        return "ProductDetails{jsonString='" + this.f5348a + "', parsedJson=" + obj + ", productId='" + this.f5350c + "', productType='" + this.f5351d + "', title='" + this.f5352e + "', productDetailsToken='" + this.f5355h + "', subscriptionOfferDetails=" + valueOf + "}";
    }
}
