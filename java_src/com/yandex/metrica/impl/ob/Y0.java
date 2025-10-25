package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import com.yandex.metrica.impl.ob.C0793q0;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.KotlinVersion;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Y0 {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f11822a = new JSONObject();

    /* renamed from: b  reason: collision with root package name */
    private final Context f11823b;

    /* renamed from: c  reason: collision with root package name */
    private final C0793q0 f11824c;

    public Y0(Context context, C0793q0 c0793q0) {
        this.f11823b = context;
        this.f11824c = c0793q0;
    }

    static <T> T a(JSONObject jSONObject, String str, T t10) {
        if (!jSONObject.has(str)) {
            jSONObject.put(str, t10);
        }
        return (T) jSONObject.get(str);
    }

    private void d() {
        if (A2.a(24)) {
            JSONObject jSONObject = (JSONObject) a(this.f11822a, "dfid", new JSONObject());
            jSONObject.putOpt("wids", (Integer) A2.a(new B2(1), this.f11823b, "wallpaper", "getting wallpaper id", "wallpaper manager"));
            jSONObject.putOpt("widl", (Integer) A2.a(new B2(2), this.f11823b, "wallpaper", "getting wallpaper id", "wallpaper manager"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Y0 b() {
        JSONArray jSONArray;
        JSONObject jSONObject = (JSONObject) a(this.f11822a, "dfid", new JSONObject());
        if (A2.a(21)) {
            jSONArray = new JSONArray(Build.SUPPORTED_ABIS);
        } else {
            ArrayList arrayList = new ArrayList();
            String str = Build.CPU_ABI;
            if (!CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE.equals(str)) {
                arrayList.add(str);
            }
            String str2 = Build.CPU_ABI2;
            if (!CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE.equals(str2)) {
                arrayList.add(str2);
            }
            jSONArray = new JSONArray((Collection) arrayList);
        }
        jSONObject.put("cpu_abis", jSONArray);
        return this;
    }

    public Y0 c() {
        try {
            JSONObject jSONObject = (JSONObject) a(this.f11822a, "dfid", new JSONObject());
            C0793q0.a a10 = this.f11824c.a();
            jSONObject.put("tds", a10.f13207a);
            jSONObject.put("fds", a10.f13208b);
            ((JSONObject) a(this.f11822a, "dfid", new JSONObject())).put("boot_time", (System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000);
            d();
            ((JSONObject) a(this.f11822a, "dfid", new JSONObject())).put("lc", Tl.b((List<?>) C0546g1.a(this.f11823b).a()));
        } catch (Throwable unused) {
        }
        try {
            KotlinVersion.a aVar = KotlinVersion.Companion;
            Object obj = KotlinVersion.class.getDeclaredField("CURRENT").get(null);
            int intValue = ((Integer) obj.getClass().getDeclaredMethod("getMajor", new Class[0]).invoke(obj, new Object[0])).intValue();
            int intValue2 = ((Integer) obj.getClass().getDeclaredMethod("getMinor", new Class[0]).invoke(obj, new Object[0])).intValue();
            ((JSONObject) a(this.f11822a, "dfid", new JSONObject())).put("kotlin_runtime", new JSONObject().put("major", intValue).put("minor", intValue2).put("patch", ((Integer) obj.getClass().getDeclaredMethod("getPatch", new Class[0]).invoke(obj, new Object[0])).intValue()));
        } catch (Throwable unused2) {
        }
        return this;
    }

    public String toString() {
        return this.f11822a.toString();
    }

    public String a() {
        return this.f11822a.toString();
    }
}
