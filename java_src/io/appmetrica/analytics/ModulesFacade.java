package io.appmetrica.analytics;

import android.content.Context;
import io.appmetrica.analytics.impl.AbstractC1399oi;
import io.appmetrica.analytics.impl.C1369nd;
import io.appmetrica.analytics.impl.C1381o0;
import io.appmetrica.analytics.impl.C1419pd;
import io.appmetrica.analytics.impl.C1444qd;
import io.appmetrica.analytics.impl.C1468rd;
import io.appmetrica.analytics.impl.C1493sd;
import io.appmetrica.analytics.impl.C1518td;
import io.appmetrica.analytics.impl.C1543ud;
/* loaded from: classes2.dex */
public final class ModulesFacade {
    public static final int EXTERNAL_ATTRIBUTION_ADJUST = 2;
    public static final int EXTERNAL_ATTRIBUTION_AIRBRIDGE = 5;
    public static final int EXTERNAL_ATTRIBUTION_APPSFLYER = 1;
    public static final int EXTERNAL_ATTRIBUTION_KOCHAVA = 3;
    public static final int EXTERNAL_ATTRIBUTION_SINGULAR = 6;
    public static final int EXTERNAL_ATTRIBUTION_TENJIN = 4;

    /* renamed from: a  reason: collision with root package name */
    private static C1543ud f17521a = new C1543ud();

    public static IModuleReporter getModuleReporter(Context context, String str) {
        C1543ud c1543ud = f17521a;
        C1369nd c1369nd = c1543ud.f20731b;
        c1369nd.f20206b.a(context);
        c1369nd.f20208d.a(str);
        c1543ud.f20732c.f17950a.a(context.getApplicationContext().getApplicationContext());
        return AbstractC1399oi.f20306a.a(context.getApplicationContext(), str);
    }

    public static boolean isActivatedForApp() {
        boolean z10;
        C1543ud c1543ud = f17521a;
        c1543ud.f20731b.getClass();
        c1543ud.f20732c.getClass();
        c1543ud.f20730a.getClass();
        synchronized (C1381o0.class) {
            z10 = C1381o0.f20245f;
        }
        return z10;
    }

    public static void reportAdRevenue(AdRevenue adRevenue) {
        reportAdRevenue(adRevenue, Boolean.TRUE);
    }

    public static void reportEvent(ModuleEvent moduleEvent) {
        C1543ud c1543ud = f17521a;
        c1543ud.f20731b.f20205a.a(null);
        c1543ud.f20732c.getClass();
        c1543ud.f20733d.execute(new C1444qd(c1543ud, moduleEvent));
    }

    public static void reportExternalAttribution(int i10, String str) {
        C1543ud c1543ud = f17521a;
        c1543ud.f20731b.getClass();
        c1543ud.f20732c.getClass();
        c1543ud.f20733d.execute(new C1468rd(c1543ud, i10, str));
    }

    public static void sendEventsBuffer() {
        C1543ud c1543ud = f17521a;
        c1543ud.f20731b.getClass();
        c1543ud.f20732c.getClass();
        AppMetrica.sendEventsBuffer();
    }

    public static void setAdvIdentifiersTracking(boolean z10) {
        C1543ud c1543ud = f17521a;
        c1543ud.f20731b.getClass();
        c1543ud.f20732c.getClass();
        c1543ud.f20733d.execute(new C1493sd(c1543ud, z10));
    }

    public static void setProxy(C1543ud c1543ud) {
        f17521a = c1543ud;
    }

    public static void setSessionExtra(String str, byte[] bArr) {
        C1543ud c1543ud = f17521a;
        c1543ud.f20731b.f20207c.a(str);
        c1543ud.f20732c.getClass();
        c1543ud.f20733d.execute(new C1518td(c1543ud, str, bArr));
    }

    public static void reportAdRevenue(AdRevenue adRevenue, Boolean bool) {
        C1543ud c1543ud = f17521a;
        boolean booleanValue = bool.booleanValue();
        c1543ud.f20731b.getClass();
        c1543ud.f20732c.getClass();
        c1543ud.f20733d.execute(new C1419pd(c1543ud, adRevenue, booleanValue));
    }
}
