package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class He implements Ge {

    /* renamed from: a  reason: collision with root package name */
    private final C0783pe f10203a;

    public He() {
        this(new C0783pe());
    }

    @Override // com.yandex.metrica.impl.ob.Ge
    public byte[] a(C0807qe c0807qe, Lg lg) {
        if (!lg.T() && !TextUtils.isEmpty(c0807qe.f13272b)) {
            try {
                JSONObject jSONObject = new JSONObject(c0807qe.f13272b);
                jSONObject.remove("preloadInfo");
                c0807qe.f13272b = jSONObject.toString();
            } catch (Throwable unused) {
            }
        }
        return this.f10203a.a(c0807qe, lg);
    }

    He(C0783pe c0783pe) {
        this.f10203a = c0783pe;
    }
}
