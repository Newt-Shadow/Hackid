package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.PreloadInfo;
import org.apache.tika.metadata.ClimateForcast;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.ie  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0609ie {

    /* renamed from: a  reason: collision with root package name */
    private C0509ee f12612a;

    public C0609ie(PreloadInfo preloadInfo, C0467cm c0467cm, boolean z10) {
        if (preloadInfo != null) {
            if (TextUtils.isEmpty(preloadInfo.getTrackingId())) {
                if (c0467cm.isEnabled()) {
                    c0467cm.e("Required field \"PreloadInfo.trackingId\" is empty!\nThis preload info will be skipped.");
                    return;
                }
                return;
            }
            this.f12612a = new C0509ee(preloadInfo.getTrackingId(), new JSONObject(preloadInfo.getAdditionalParams()), true, z10, EnumC0888u0.APP);
        }
    }

    public JSONObject a(JSONObject jSONObject) {
        C0509ee c0509ee = this.f12612a;
        if (c0509ee != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("trackingId", c0509ee.f12323a);
                    jSONObject2.put("additionalParams", c0509ee.f12324b);
                    jSONObject2.put("wasSet", c0509ee.f12325c);
                    jSONObject2.put("autoTracking", c0509ee.f12326d);
                    jSONObject2.put(ClimateForcast.SOURCE, c0509ee.f12327e.a());
                } catch (Throwable unused) {
                }
                jSONObject.put("preloadInfo", jSONObject2);
            } catch (Throwable unused2) {
            }
        }
        return jSONObject;
    }
}
