package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class ao implements Zn {

    /* renamed from: a  reason: collision with root package name */
    public final L8 f19411a;

    public ao() {
        this(new L8());
    }

    @Override // io.appmetrica.analytics.impl.Zn
    public final byte[] a(W8 w82, C1323lh c1323lh) {
        if (!((C1386o5) c1323lh.f20045l).A() && !TextUtils.isEmpty(w82.f19159b)) {
            try {
                JSONObject jSONObject = new JSONObject(w82.f19159b);
                jSONObject.remove("preloadInfo");
                w82.f19159b = jSONObject.toString();
            } catch (Throwable unused) {
            }
        }
        return this.f19411a.a(w82, c1323lh);
    }

    public ao(L8 l82) {
        this.f19411a = l82;
    }
}
