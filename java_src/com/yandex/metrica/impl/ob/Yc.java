package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0784pf;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
/* loaded from: classes2.dex */
public class Yc {
    public C0784pf.a a(C0681lc c0681lc) {
        long longValue;
        int a10;
        int a11;
        C0784pf.a aVar = new C0784pf.a();
        if (c0681lc.f() == null) {
            longValue = aVar.f13123a;
        } else {
            longValue = c0681lc.f().longValue();
        }
        aVar.f13123a = longValue;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        aVar.f13124b = timeUnit.toSeconds(c0681lc.d());
        aVar.f13127e = timeUnit.toSeconds(c0681lc.c());
        if (c0681lc.b() == null) {
            a10 = 0;
        } else {
            a10 = J1.a(c0681lc.b());
        }
        aVar.f13128f = a10;
        if (c0681lc.e() == null) {
            a11 = 3;
        } else {
            a11 = J1.a(c0681lc.e());
        }
        aVar.f13129g = a11;
        JSONArray a12 = c0681lc.a();
        if (a12 != null) {
            aVar.f13125c = J1.b(a12);
        }
        JSONArray g10 = c0681lc.g();
        if (g10 != null) {
            aVar.f13126d = J1.a(g10);
        }
        return aVar;
    }
}
