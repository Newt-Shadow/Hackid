package io.appmetrica.analytics.impl;

import java.util.HashMap;
/* renamed from: io.appmetrica.analytics.impl.fe  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1171fe {

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f19645a;

    public C1171fe() {
        HashMap hashMap = new HashMap();
        this.f19645a = hashMap;
        hashMap.put("google_aid", "g");
        hashMap.put("huawei_oaid", "h");
        hashMap.put("sim_info", "si");
        hashMap.put("features_collecting", "fc");
        hashMap.put("permissions_collecting", "pc");
        hashMap.put("retry_policy", "rp");
        hashMap.put("cache_control", "cc");
        hashMap.put("auto_inapp_collecting", "aic");
        hashMap.put("attribution", "at");
        hashMap.put("startup_update", "su");
        hashMap.put("ssl_pinning", "sp");
        hashMap.put("external_attribution", "exta");
    }

    public final String a(String str) {
        if (this.f19645a.containsKey(str)) {
            return (String) this.f19645a.get(str);
        }
        return str;
    }
}
