package io.appmetrica.analytics.impl;

import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class eo {

    /* renamed from: a  reason: collision with root package name */
    public final ho f19604a;

    /* renamed from: b  reason: collision with root package name */
    public final ho f19605b;

    /* renamed from: c  reason: collision with root package name */
    public final fo f19606c;

    /* renamed from: d  reason: collision with root package name */
    public JSONObject f19607d;

    public eo(ho hoVar, ho hoVar2, fo foVar) {
        this.f19604a = hoVar;
        this.f19605b = hoVar2;
        this.f19606c = foVar;
    }

    public final synchronized JSONObject a() {
        JSONObject jSONObject;
        if (this.f19607d == null) {
            JSONObject a10 = this.f19606c.a(a(this.f19604a), a(this.f19605b));
            this.f19607d = a10;
            a(a10);
        }
        jSONObject = this.f19607d;
        if (jSONObject == null) {
            kotlin.jvm.internal.m.s("fileContents");
            jSONObject = null;
        }
        return jSONObject;
    }

    public static JSONObject a(ho hoVar) {
        try {
            String a10 = hoVar.a();
            return a10 != null ? new JSONObject(a10) : new JSONObject();
        } catch (Throwable unused) {
            return new JSONObject();
        }
    }

    public final synchronized void a(JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        try {
            this.f19604a.a(jSONObject2);
        } catch (Throwable unused) {
        }
        try {
            this.f19605b.a(jSONObject2);
        } catch (Throwable unused2) {
        }
    }
}
