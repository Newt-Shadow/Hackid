package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.l5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0674l5 extends X4 {
    public C0674l5(L3 l32) {
        super(l32);
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        String p10 = c0445c0.p();
        com.yandex.metrica.i a10 = C0419b.a(p10);
        String h10 = a().h();
        com.yandex.metrica.i a11 = C0419b.a(h10);
        if (!a10.equals(a11)) {
            boolean z10 = false;
            if (TextUtils.isEmpty(a10.f()) && !TextUtils.isEmpty(a11.f())) {
                c0445c0.e(h10);
                a(c0445c0, EnumC0616im.LOGOUT);
            } else {
                if (!TextUtils.isEmpty(a10.f()) && TextUtils.isEmpty(a11.f())) {
                    a(c0445c0, EnumC0616im.LOGIN);
                } else {
                    if (!TextUtils.isEmpty(a10.f()) && !a10.f().equals(a11.f())) {
                        z10 = true;
                    }
                    if (z10) {
                        a(c0445c0, EnumC0616im.SWITCH);
                    } else {
                        a(c0445c0, EnumC0616im.UPDATE);
                    }
                }
            }
            a().a(p10);
        }
        return true;
    }

    private void a(C0445c0 c0445c0, EnumC0616im enumC0616im) {
        String str;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("action", enumC0616im.toString());
            str = jSONObject.toString();
        } catch (Throwable unused) {
            str = null;
        }
        c0445c0.f(str);
        a().r().b(c0445c0);
    }
}
