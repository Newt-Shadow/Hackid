package com.android.billingclient.api;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f5250a;

    /* renamed from: b  reason: collision with root package name */
    private final JSONObject f5251b;

    /* renamed from: c  reason: collision with root package name */
    private final List f5252c;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f5253a;

        /* renamed from: b  reason: collision with root package name */
        private final String f5254b;

        /* renamed from: c  reason: collision with root package name */
        private final String f5255c;

        /* synthetic */ a(JSONObject jSONObject, c2.h0 h0Var) {
            this.f5253a = jSONObject.optString("productId");
            this.f5254b = jSONObject.optString("productType");
            String optString = jSONObject.optString("offerToken");
            this.f5255c = true == optString.isEmpty() ? null : optString;
        }

        public String a() {
            return this.f5253a;
        }

        public String b() {
            return this.f5255c;
        }

        public String c() {
            return this.f5254b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f5253a.equals(aVar.a()) && this.f5254b.equals(aVar.c()) && Objects.equals(this.f5255c, aVar.b())) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.f5253a, this.f5254b, this.f5255c);
        }

        public String toString() {
            return String.format("{id: %s, type: %s, offer token: %s}", this.f5253a, this.f5254b, this.f5255c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str) {
        this.f5250a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f5251b = jSONObject;
        JSONArray optJSONArray = jSONObject.optJSONArray("products");
        ArrayList arrayList = new ArrayList();
        if (optJSONArray != null) {
            for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i10);
                if (optJSONObject != null) {
                    arrayList.add(new a(optJSONObject, null));
                }
            }
        }
        this.f5252c = arrayList;
    }
}
