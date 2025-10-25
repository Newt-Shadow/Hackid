package com.yandex.metrica.impl.ob;

import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.ee  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0509ee implements InterfaceC0912v0 {

    /* renamed from: a  reason: collision with root package name */
    public final String f12323a;

    /* renamed from: b  reason: collision with root package name */
    public final JSONObject f12324b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f12325c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f12326d;

    /* renamed from: e  reason: collision with root package name */
    public final EnumC0888u0 f12327e;

    public C0509ee(String str, JSONObject jSONObject, boolean z10, boolean z11, EnumC0888u0 enumC0888u0) {
        this.f12323a = str;
        this.f12324b = jSONObject;
        this.f12325c = z10;
        this.f12326d = z11;
        this.f12327e = enumC0888u0;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0912v0
    public EnumC0888u0 a() {
        return this.f12327e;
    }

    public String toString() {
        return "PreloadInfoState{trackingId='" + this.f12323a + "', additionalParameters=" + this.f12324b + ", wasSet=" + this.f12325c + ", autoTrackingEnabled=" + this.f12326d + ", source=" + this.f12327e + '}';
    }
}
