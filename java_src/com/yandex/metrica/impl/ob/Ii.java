package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.Tl;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Ii {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f10426a;

    static {
        HashSet hashSet = new HashSet();
        f10426a = hashSet;
        hashSet.add("get_ad");
        hashSet.add("report");
        hashSet.add("report_ad");
        hashSet.add("location");
        hashSet.add("startup");
        hashSet.add("diagnostic");
        hashSet.add("mediascope");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Ui ui, Tl.a aVar) {
        String str;
        List<String> a10;
        String str2 = "";
        try {
            Object jSONObject = new JSONObject();
            try {
                jSONObject = aVar.get("query_hosts");
            } catch (Throwable unused) {
            }
            JSONObject optJSONObject = ((JSONObject) jSONObject).optJSONObject("list");
            if (optJSONObject != null) {
                try {
                    str = optJSONObject.getJSONObject("get_ad").getJSONArray("urls").getString(0);
                } catch (Throwable unused2) {
                    str = "";
                }
                if (!TextUtils.isEmpty(str)) {
                    ui.f(str);
                }
                List<String> a11 = a(optJSONObject, "report");
                if (!A2.b(a11)) {
                    ui.f(a11);
                }
                try {
                    str2 = optJSONObject.getJSONObject("report_ad").getJSONArray("urls").getString(0);
                } catch (Throwable unused3) {
                }
                if (!TextUtils.isEmpty(str2)) {
                    ui.g(str2);
                }
                List<String> a12 = a(optJSONObject, "location");
                if (!A2.b(a12)) {
                    ui.c(a12);
                }
                List<String> a13 = a(optJSONObject, "startup");
                if (!A2.b(a13)) {
                    ui.h(a13);
                }
                List<String> a14 = a(optJSONObject, "diagnostic");
                if (!A2.b(a14)) {
                    ui.a(a14);
                }
                List<String> a15 = a(optJSONObject, "mediascope");
                if (!A2.b(a15)) {
                    ui.e(a15);
                }
                HashMap hashMap = new HashMap();
                Iterator<String> keys = optJSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!f10426a.contains(next) && (a10 = a(optJSONObject, next)) != null) {
                        hashMap.put(next, a10);
                    }
                }
                ui.a(hashMap);
            }
        } catch (Throwable unused4) {
        }
    }

    private List<String> a(JSONObject jSONObject, String str) {
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject(str);
            if (optJSONObject != null) {
                return Tl.b(optJSONObject.getJSONArray("urls"));
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
