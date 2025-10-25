package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.Tl;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.ih  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0611ih {
    public List<C0587hh> a(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray optJSONArray = new Tl.a(str).optJSONArray("sdk_list");
            if (optJSONArray != null) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    JSONObject jSONObject = optJSONArray.getJSONObject(i10);
                    String optString = jSONObject.optString(Constants.NAME);
                    if (!TextUtils.isEmpty(optString)) {
                        JSONArray optJSONArray2 = jSONObject.optJSONArray("classes");
                        ArrayList arrayList2 = new ArrayList();
                        if (optJSONArray2 != null) {
                            for (int i11 = 0; i11 < optJSONArray2.length(); i11++) {
                                try {
                                    String optString2 = optJSONArray2.getJSONObject(i11).optString(Constants.NAME);
                                    if (!TextUtils.isEmpty(optString2)) {
                                        arrayList2.add(optString2);
                                    }
                                } catch (Throwable unused) {
                                }
                            }
                        }
                        if (!A2.b(arrayList2)) {
                            arrayList.add(new C0587hh(optString, arrayList2));
                        }
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        return arrayList;
    }
}
