package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Ja {

    /* renamed from: a  reason: collision with root package name */
    public static final HashSet f18432a;

    static {
        HashSet hashSet = new HashSet();
        f18432a = hashSet;
        hashSet.add("get_ad");
        hashSet.add("report");
        hashSet.add("report_ad");
        hashSet.add("startup");
        hashSet.add("diagnostic");
    }

    public static ArrayList a(JSONObject jSONObject, String str) {
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject(str);
            if (optJSONObject != null) {
                return AbstractC1491sb.a(optJSONObject.getJSONArray("urls"));
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
