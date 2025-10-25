package io.appmetrica.analytics.impl;

import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Fk {

    /* renamed from: a  reason: collision with root package name */
    public final String f18230a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18231b;

    /* renamed from: c  reason: collision with root package name */
    public final String f18232c;

    /* renamed from: d  reason: collision with root package name */
    public final String f18233d;

    /* renamed from: e  reason: collision with root package name */
    public final String f18234e;

    /* renamed from: f  reason: collision with root package name */
    public final int f18235f;

    /* renamed from: g  reason: collision with root package name */
    public final int f18236g;

    public Fk(JSONObject jSONObject) {
        this.f18230a = jSONObject.optString("analyticsSdkVersionName", "");
        this.f18231b = jSONObject.optString("kitBuildNumber", "");
        this.f18232c = jSONObject.optString("appVer", "");
        this.f18233d = jSONObject.optString("appBuild", "");
        this.f18234e = jSONObject.optString("osVer", "");
        this.f18235f = jSONObject.optInt("osApiLev", -1);
        this.f18236g = jSONObject.optInt("attribution_id", 0);
    }

    public final String toString() {
        return "SessionRequestParams(kitVersionName='" + this.f18230a + "', kitBuildNumber='" + this.f18231b + "', appVersion='" + this.f18232c + "', appBuild='" + this.f18233d + "', osVersion='" + this.f18234e + "', apiLevel=" + this.f18235f + ", attributionId=" + this.f18236g + ')';
    }
}
