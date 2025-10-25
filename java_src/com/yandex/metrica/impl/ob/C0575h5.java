package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.PackageManager;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.h5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0575h5 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final I1 f12502b;

    /* renamed from: c  reason: collision with root package name */
    private final C0428b8 f12503c;

    /* renamed from: d  reason: collision with root package name */
    private final C0717mn f12504d;

    public C0575h5(L3 l32) {
        this(l32, l32.x(), F0.g().k(), new C0717mn());
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        C0445c0 c10;
        String str;
        L3 a10 = a();
        if (!this.f12503c.l()) {
            if (a10.m().P()) {
                c10 = C0445c0.e(c0445c0);
            } else {
                c10 = C0445c0.c(c0445c0);
            }
            JSONObject jSONObject = new JSONObject();
            C0717mn c0717mn = this.f12504d;
            Context g10 = a10.g();
            String b10 = a10.e().b();
            c0717mn.getClass();
            JSONObject jSONObject2 = null;
            try {
                PackageManager packageManager = g10.getPackageManager();
                if (A2.a(30)) {
                    str = C0742nn.a(packageManager, b10);
                } else {
                    str = packageManager.getInstallerPackageName(b10);
                }
            } catch (Throwable unused) {
                str = null;
            }
            if (str == null) {
                str = "";
            }
            try {
                jSONObject.put("appInstaller", str);
                C0509ee b11 = this.f12502b.b();
                if (b11.f12325c) {
                    jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("trackingId", b11.f12323a);
                        if (b11.f12324b.length() > 0) {
                            jSONObject2.put("additionalParams", b11.f12324b);
                        }
                    } catch (Throwable unused2) {
                    }
                }
                jSONObject.put("preloadInfo", jSONObject2);
            } catch (Throwable unused3) {
            }
            a10.r().b(c10.f(jSONObject.toString()));
            this.f12503c.b(true);
            return false;
        }
        return false;
    }

    C0575h5(L3 l32, C0428b8 c0428b8, I1 i12, C0717mn c0717mn) {
        super(l32);
        this.f12503c = c0428b8;
        this.f12502b = i12;
        this.f12504d = c0717mn;
    }
}
