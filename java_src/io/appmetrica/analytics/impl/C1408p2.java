package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import android.util.Pair;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.p2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1408p2 {
    public static void a(Ol ol, JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject != null) {
            ArrayList arrayList = new ArrayList();
            JSONArray optJSONArray = optJSONObject.optJSONArray("deeplink_conditions");
            if (optJSONArray != null) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    JSONObject optJSONObject2 = optJSONArray.optJSONObject(i10);
                    C1333m2 c1333m2 = null;
                    String optString = optJSONObject2.optString("key", null);
                    if (!TextUtils.isEmpty(optString)) {
                        String optString2 = optJSONObject2.optString("value", null);
                        if (optString2 != null) {
                            c1333m2 = new C1333m2(optString2);
                        }
                        arrayList.add(new Pair(optString, c1333m2));
                    }
                }
            }
            ol.f18735t = new C1358n2(arrayList);
        }
    }
}
