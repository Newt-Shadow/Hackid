package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.yh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1001yh {

    /* renamed from: a  reason: collision with root package name */
    private final C0971xb f14011a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f14012b;

    /* renamed from: c  reason: collision with root package name */
    private String f14013c;

    /* renamed from: d  reason: collision with root package name */
    private String f14014d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f14015e;

    /* renamed from: f  reason: collision with root package name */
    private C0787pi f14016f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1001yh(Context context, C0787pi c0787pi) {
        this(context, c0787pi, F0.g().r());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        C0875tb c0875tb;
        C0875tb c0875tb2;
        JSONObject jSONObject = new JSONObject();
        if (!this.f14015e) {
            C1019zb a10 = this.f14011a.a(this.f14012b);
            C0899ub a11 = a10.a();
            String str = null;
            this.f14013c = (!a11.a() || (c0875tb2 = a11.f13685a) == null) ? null : c0875tb2.f13629b;
            C0899ub b10 = a10.b();
            if (b10.a() && (c0875tb = b10.f13685a) != null) {
                str = c0875tb.f13629b;
            }
            this.f14014d = str;
            this.f14015e = true;
        }
        try {
            a(jSONObject, CommonUrlParts.UUID, this.f14016f.V());
            a(jSONObject, "device_id", this.f14016f.i());
            a(jSONObject, "google_aid", this.f14013c);
            a(jSONObject, "huawei_aid", this.f14014d);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    C1001yh(Context context, C0787pi c0787pi, C0971xb c0971xb) {
        this.f14015e = false;
        this.f14012b = context;
        this.f14016f = c0787pi;
        this.f14011a = c0971xb;
    }

    public void a(C0787pi c0787pi) {
        this.f14016f = c0787pi;
    }

    private void a(JSONObject jSONObject, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }
}
