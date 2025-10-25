package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import org.apache.tika.metadata.ClimateForcast;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.of  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1396of implements InterfaceC1090c8 {

    /* renamed from: a  reason: collision with root package name */
    public final String f20298a;

    /* renamed from: b  reason: collision with root package name */
    public final JSONObject f20299b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f20300c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f20301d;

    /* renamed from: e  reason: collision with root package name */
    public final EnumC1065b8 f20302e;

    public C1396of(String str, JSONObject jSONObject, boolean z10, boolean z11, EnumC1065b8 enumC1065b8) {
        this.f20298a = str;
        this.f20299b = jSONObject;
        this.f20300c = z10;
        this.f20301d = z11;
        this.f20302e = enumC1065b8;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1090c8
    public final EnumC1065b8 a() {
        return this.f20302e;
    }

    public final JSONObject b() {
        if (this.f20300c) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("trackingId", this.f20298a);
                if (this.f20299b.length() > 0) {
                    jSONObject.put("additionalParams", this.f20299b);
                    return jSONObject;
                }
                return jSONObject;
            } catch (Throwable unused) {
                return jSONObject;
            }
        }
        return null;
    }

    public final JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackingId", this.f20298a);
            jSONObject.put("additionalParams", this.f20299b);
            jSONObject.put("wasSet", this.f20300c);
            jSONObject.put("autoTracking", this.f20301d);
            jSONObject.put(ClimateForcast.SOURCE, this.f20302e.f19429a);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public final String toString() {
        return "PreloadInfoState{trackingId='" + this.f20298a + "', additionalParameters=" + this.f20299b + ", wasSet=" + this.f20300c + ", autoTrackingEnabled=" + this.f20301d + ", source=" + this.f20302e + '}';
    }

    public static C1396of a(JSONObject jSONObject) {
        EnumC1065b8 enumC1065b8;
        String optStringOrNull = JsonUtils.optStringOrNull(jSONObject, "trackingId");
        JSONObject optJsonObjectOrDefault = JsonUtils.optJsonObjectOrDefault(jSONObject, "additionalParams", new JSONObject());
        int i10 = 0;
        boolean optBooleanOrDefault = JsonUtils.optBooleanOrDefault(jSONObject, "wasSet", false);
        boolean optBooleanOrDefault2 = JsonUtils.optBooleanOrDefault(jSONObject, "autoTracking", false);
        String optStringOrNull2 = JsonUtils.optStringOrNull(jSONObject, ClimateForcast.SOURCE);
        EnumC1065b8[] values = EnumC1065b8.values();
        int length = values.length;
        while (true) {
            if (i10 >= length) {
                enumC1065b8 = null;
                break;
            }
            enumC1065b8 = values[i10];
            if (kotlin.jvm.internal.m.a(enumC1065b8.f19429a, optStringOrNull2)) {
                break;
            }
            i10++;
        }
        return new C1396of(optStringOrNull, optJsonObjectOrDefault, optBooleanOrDefault, optBooleanOrDefault2, enumC1065b8 == null ? EnumC1065b8.f19424b : enumC1065b8);
    }
}
