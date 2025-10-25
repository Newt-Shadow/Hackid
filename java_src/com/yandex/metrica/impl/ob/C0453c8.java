package com.yandex.metrica.impl.ob;

import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.c8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0453c8 {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f12132a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0528f8 f12133b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0528f8 f12134c;

    /* renamed from: d  reason: collision with root package name */
    private final String f12135d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC0478d8 f12136e;

    public C0453c8(InterfaceC0528f8 interfaceC0528f8, InterfaceC0528f8 interfaceC0528f82, String str, InterfaceC0478d8 interfaceC0478d8) {
        this.f12133b = interfaceC0528f8;
        this.f12134c = interfaceC0528f82;
        this.f12135d = str;
        this.f12136e = interfaceC0478d8;
    }

    public final synchronized JSONObject a() {
        JSONObject jSONObject;
        if (this.f12132a == null) {
            JSONObject a10 = this.f12136e.a(a(this.f12133b), a(this.f12134c));
            this.f12132a = a10;
            a(a10);
        }
        jSONObject = this.f12132a;
        if (jSONObject == null) {
            kotlin.jvm.internal.m.s("fileContents");
        }
        return jSONObject;
    }

    private final JSONObject a(InterfaceC0528f8 interfaceC0528f8) {
        try {
            String c10 = interfaceC0528f8.c();
            return c10 != null ? new JSONObject(c10) : new JSONObject();
        } catch (Throwable th) {
            a(th);
            return new JSONObject();
        }
    }

    public final synchronized void a(JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        kotlin.jvm.internal.m.d(jSONObject2, "contents.toString()");
        this.f12133b.a(jSONObject2);
        this.f12134c.a(jSONObject2);
    }

    private final void a(Throwable th) {
        Map<String, Object> h10;
        M0 a10 = C0761oh.a();
        h10 = yc.h0.h(xc.q.a("tag", this.f12135d), xc.q.a(Constants.EXCEPTION, kotlin.jvm.internal.d0.b(th.getClass()).b()));
        ((C0736nh) a10).reportEvent("vital_data_provider_exception", h10);
        M0 a11 = C0761oh.a();
        ((C0736nh) a11).reportError("Error during reading vital data for tag = " + this.f12135d, th);
    }
}
