package com.yandex.metrica.impl.ob;

import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class F2 {

    /* renamed from: a  reason: collision with root package name */
    public final String f10056a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10057b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f10058c;

    /* renamed from: d  reason: collision with root package name */
    public final int f10059d;

    /* renamed from: e  reason: collision with root package name */
    public final Long f10060e;

    public F2(String str, String str2, boolean z10, int i10, Long l10) {
        this.f10056a = str;
        this.f10057b = str2;
        this.f10058c = z10;
        this.f10059d = i10;
        this.f10060e = l10;
    }

    public static JSONArray a(Collection<F2> collection) {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        if (collection != null) {
            for (F2 f22 : collection) {
                f22.getClass();
                try {
                    jSONObject = new JSONObject().put("mac", f22.f10056a).put("ssid", f22.f10057b).put("signal_strength", f22.f10059d).put("is_connected", f22.f10058c).put("last_visible_offset_seconds", f22.f10060e);
                } catch (Throwable unused) {
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    jSONArray.put(jSONObject);
                }
            }
        }
        return jSONArray;
    }
}
