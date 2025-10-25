package com.yandex.metrica.impl.ob;

import com.yandex.metrica.j;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes2.dex */
public class Wf {
    public com.yandex.metrica.j a(com.yandex.metrica.j jVar) {
        if (A2.a(jVar.maxReportsInDatabaseCount)) {
            j.b h10 = com.yandex.metrica.j.a(jVar).h(new ArrayList());
            if (A2.a((Object) jVar.f14099a)) {
                h10.n(jVar.f14099a);
            }
            if (A2.a((Object) jVar.f14100b) && A2.a(jVar.f14107i)) {
                h10.i(jVar.f14100b, jVar.f14107i);
            }
            if (A2.a(jVar.f14103e)) {
                h10.b(jVar.f14103e.intValue());
            }
            if (A2.a(jVar.f14104f)) {
                h10.m(jVar.f14104f.intValue());
            }
            if (A2.a(jVar.f14105g)) {
                h10.r(jVar.f14105g.intValue());
            }
            if (A2.a((Object) jVar.f14101c)) {
                h10.f14115f = jVar.f14101c;
            }
            if (A2.a((Object) jVar.f14106h)) {
                for (Map.Entry entry : jVar.f14106h.entrySet()) {
                    h10.g((String) entry.getKey(), (String) entry.getValue());
                }
            }
            if (A2.a(jVar.f14108j)) {
                h10.D(jVar.f14108j.booleanValue());
            }
            if (A2.a((Object) jVar.f14102d)) {
                h10.h(jVar.f14102d);
            }
            if (A2.a(jVar.f14109k)) {
                h10.p(jVar.f14109k.booleanValue());
            }
            return h10.v(a(jVar.maxReportsInDatabaseCount, jVar.apiKey)).k();
        }
        return jVar;
    }

    public com.yandex.metrica.f a(com.yandex.metrica.f fVar) {
        return A2.a(fVar.maxReportsInDatabaseCount) ? com.yandex.metrica.f.a(fVar).a(a(fVar.maxReportsInDatabaseCount, fVar.apiKey)).b() : fVar;
    }

    private int a(Integer num, String str) {
        if (num.intValue() < 100) {
            Ul.b(str).fw("Value passed as maxReportsInDatabaseCount is invalid. Should be greater than or equal to %d, but was: %d. Default value (%d) will be used", 100, num, 100);
            return 100;
        } else if (num.intValue() > 10000) {
            Ul.b(str).fw("Value passed as maxReportsInDatabaseCount is invalid. Should be less than or equal to %d, but was: %d. Default value (%d) will be used", 10000, num, 10000);
            return 10000;
        } else {
            return num.intValue();
        }
    }
}
