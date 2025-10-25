package io.appmetrica.analytics.impl;

import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.d9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1116d9 {

    /* renamed from: a  reason: collision with root package name */
    public final Cdo f19508a;

    public C1116d9(Cdo cdo) {
        this.f19508a = cdo;
    }

    public final void a(int i10, long j10) {
        JSONObject optJSONObject;
        Cdo cdo = this.f19508a;
        synchronized (cdo) {
            optJSONObject = cdo.f19546a.a().optJSONObject("numbers_of_type");
        }
        if (optJSONObject == null) {
            optJSONObject = new JSONObject();
        }
        optJSONObject.put(String.valueOf(i10), j10);
        this.f19508a.a(optJSONObject);
    }
}
