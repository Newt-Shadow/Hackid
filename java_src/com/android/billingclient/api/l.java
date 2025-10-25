package com.android.billingclient.api;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private final String f5435a;

    /* renamed from: b  reason: collision with root package name */
    private final JSONObject f5436b;

    /* renamed from: c  reason: collision with root package name */
    private final List f5437c;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f5438a;

        /* renamed from: b  reason: collision with root package name */
        private final String f5439b;

        /* renamed from: c  reason: collision with root package name */
        private final String f5440c;

        public String a() {
            return this.f5438a;
        }

        public String b() {
            return this.f5440c;
        }

        public String c() {
            return this.f5439b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f5438a.equals(aVar.a()) && this.f5439b.equals(aVar.c()) && Objects.equals(this.f5440c, aVar.b())) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.f5438a, this.f5439b, this.f5440c);
        }

        public String toString() {
            return String.format("{id: %s, type: %s, offer token: %s}", this.f5438a, this.f5439b, this.f5440c);
        }

        private a(JSONObject jSONObject) {
            this.f5438a = jSONObject.optString("productId");
            this.f5439b = jSONObject.optString("productType");
            String optString = jSONObject.optString("offerToken");
            this.f5440c = true == optString.isEmpty() ? null : optString;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(String str) {
        this.f5435a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f5436b = jSONObject;
        this.f5437c = d(jSONObject.optJSONArray("products"));
    }

    private static List d(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                if (optJSONObject != null) {
                    arrayList.add(new a(optJSONObject));
                }
            }
        }
        return arrayList;
    }

    public String a() {
        return this.f5436b.optString("externalTransactionToken");
    }

    public String b() {
        String optString = this.f5436b.optString("originalExternalTransactionId");
        if (optString.isEmpty()) {
            return null;
        }
        return optString;
    }

    public List c() {
        return this.f5437c;
    }
}
