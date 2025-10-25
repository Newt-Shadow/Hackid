package com.android.billingclient.api;

import org.json.JSONObject;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final String f5303a;

    /* renamed from: b  reason: collision with root package name */
    private final JSONObject f5304b;

    /* renamed from: c  reason: collision with root package name */
    private final String f5305c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str) {
        this.f5303a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f5304b = jSONObject;
        this.f5305c = jSONObject.optString("countryCode");
    }

    public String a() {
        return this.f5305c;
    }
}
