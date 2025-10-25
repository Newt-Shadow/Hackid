package io.appmetrica.analytics.impl;

import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.af  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1047af {

    /* renamed from: a  reason: collision with root package name */
    public final String f19381a;

    /* renamed from: b  reason: collision with root package name */
    public final JSONObject f19382b;

    /* renamed from: c  reason: collision with root package name */
    public final EnumC1065b8 f19383c;

    public C1047af(String str, JSONObject jSONObject, EnumC1065b8 enumC1065b8) {
        this.f19381a = str;
        this.f19382b = jSONObject;
        this.f19383c = enumC1065b8;
    }

    public final String toString() {
        return "Candidate{trackingId='" + this.f19381a + "', additionalParams=" + this.f19382b + ", source=" + this.f19383c + '}';
    }
}
