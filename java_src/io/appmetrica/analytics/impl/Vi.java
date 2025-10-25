package io.appmetrica.analytics.impl;

import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Vi extends Pg {

    /* renamed from: b  reason: collision with root package name */
    public final C1470rf f19135b;

    public Vi(C1386o5 c1386o5) {
        this(c1386o5, C1665za.j().s());
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(c1138e6.getValue()).optJSONObject("preloadInfo");
        } catch (Throwable unused) {
            jSONObject = null;
        }
        this.f19135b.b(C1396of.a(jSONObject));
        return false;
    }

    public Vi(C1386o5 c1386o5, C1470rf c1470rf) {
        super(c1386o5);
        this.f19135b = c1470rf;
    }
}
