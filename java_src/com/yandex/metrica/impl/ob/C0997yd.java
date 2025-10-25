package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.yd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0997yd {

    /* renamed from: a  reason: collision with root package name */
    private InterfaceC0949wd f14001a;

    public C0997yd(InterfaceC0949wd interfaceC0949wd) {
        this.f14001a = interfaceC0949wd;
    }

    public void a(InterfaceC0949wd interfaceC0949wd) {
        this.f14001a = interfaceC0949wd;
    }

    public boolean b(Context context) {
        if (!this.f14001a.a("android.permission.READ_PHONE_STATE")) {
            return false;
        }
        return C0925vd.a(context, "android.permission.READ_PHONE_STATE");
    }

    public boolean c(Context context) {
        if (!this.f14001a.a("android.permission.ACCESS_WIFI_STATE")) {
            return false;
        }
        return C0925vd.a(context, "android.permission.ACCESS_WIFI_STATE");
    }

    public boolean a(Context context) {
        if (this.f14001a.a("android.permission.ACCESS_COARSE_LOCATION")) {
            return C0925vd.a(context, "android.permission.ACCESS_COARSE_LOCATION");
        }
        return false;
    }
}
