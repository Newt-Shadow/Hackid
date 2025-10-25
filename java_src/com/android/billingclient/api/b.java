package com.android.billingclient.api;

import org.json.JSONObject;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f5238a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str) {
        this.f5238a = new JSONObject(str).optString("externalTransactionToken");
    }

    public String a() {
        return this.f5238a;
    }
}
