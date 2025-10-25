package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Zm {

    /* renamed from: a  reason: collision with root package name */
    private final String f11897a;

    /* renamed from: b  reason: collision with root package name */
    private final C0467cm f11898b;

    public Zm(int i10, String str, C0467cm c0467cm) {
        this.f11897a = str;
        this.f11898b = c0467cm;
    }

    public boolean a(C0417am c0417am, String str, String str2) {
        int a10 = c0417am.a();
        if (str2 != null) {
            a10 += str2.length();
        }
        if (c0417am.containsKey(str)) {
            String str3 = c0417am.get(str);
            if (str3 != null) {
                a10 -= str3.length();
            }
        } else {
            a10 += str.length();
        }
        return a10 > 4500;
    }

    public void a(String str) {
        if (this.f11898b.isEnabled()) {
            this.f11898b.fw("The %s has reached the total size limit that equals %d symbols. Item with key %s will be ignored", this.f11897a, 4500, str);
        }
    }
}
