package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.impl.ob.C0784pf;
import io.appmetrica.analytics.gpllibrary.internal.GplLibraryWrapper;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.ad  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0408ad {
    public C0784pf.b a(Hc hc2) {
        long longValue;
        int i10;
        C0784pf.b bVar = new C0784pf.b();
        Location c10 = hc2.c();
        if (hc2.b() == null) {
            longValue = bVar.f13131a;
        } else {
            longValue = hc2.b().longValue();
        }
        bVar.f13131a = longValue;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        bVar.f13133c = timeUnit.toSeconds(c10.getTime());
        bVar.f13141k = J1.a(hc2.f10196a);
        bVar.f13132b = timeUnit.toSeconds(hc2.e());
        bVar.f13142l = timeUnit.toSeconds(hc2.d());
        bVar.f13134d = c10.getLatitude();
        bVar.f13135e = c10.getLongitude();
        bVar.f13136f = Math.round(c10.getAccuracy());
        bVar.f13137g = Math.round(c10.getBearing());
        bVar.f13138h = Math.round(c10.getSpeed());
        bVar.f13139i = (int) Math.round(c10.getAltitude());
        String provider = c10.getProvider();
        if ("gps".equals(provider)) {
            i10 = 1;
        } else if ("network".equals(provider)) {
            i10 = 2;
        } else if (GplLibraryWrapper.FUSED_PROVIDER.equals(provider)) {
            i10 = 3;
        } else {
            i10 = 0;
        }
        bVar.f13140j = i10;
        bVar.f13143m = J1.a(hc2.a());
        return bVar;
    }
}
