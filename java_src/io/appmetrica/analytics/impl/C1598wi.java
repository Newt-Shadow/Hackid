package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.internal.CounterConfiguration;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
/* renamed from: io.appmetrica.analytics.impl.wi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1598wi {

    /* renamed from: a  reason: collision with root package name */
    public final W4 f20871a;

    /* renamed from: b  reason: collision with root package name */
    public final C1653yn f20872b;

    /* renamed from: c  reason: collision with root package name */
    public final C1623xi f20873c;

    /* renamed from: d  reason: collision with root package name */
    public final C1207h0 f20874d;

    /* renamed from: e  reason: collision with root package name */
    public Al f20875e;

    /* renamed from: f  reason: collision with root package name */
    public final Uj f20876f;

    public C1598wi(C1207h0 c1207h0, C1653yn c1653yn, W4 w42, Uj uj) {
        this(c1207h0, c1653yn, w42, uj, new C1623xi(c1207h0, uj));
    }

    public final void a(C1597wh c1597wh) {
        Gh gh = c1597wh.f20870e;
        Al al = this.f20875e;
        if (al != null) {
            gh.f19320b.setUuid(((C1676zl) al).g());
        } else {
            gh.getClass();
        }
        this.f20873c.a(c1597wh);
    }

    public final void b(String str) {
        C1645yf c1645yf = this.f20871a.f19319a;
        synchronized (c1645yf) {
            c1645yf.f20987a.put("PROCESS_CFG_INSTALL_REFERRER_SOURCE", str);
        }
    }

    public C1598wi(C1207h0 c1207h0, C1653yn c1653yn, W4 w42, Uj uj, C1623xi c1623xi) {
        this.f20874d = c1207h0;
        this.f20871a = w42;
        this.f20872b = c1653yn;
        this.f20876f = uj;
        this.f20873c = c1623xi;
    }

    public final void a(C1676zl c1676zl) {
        this.f20875e = c1676zl;
        this.f20871a.f19320b.setUuid(c1676zl.g());
    }

    public final void a(Boolean bool, Boolean bool2, Boolean bool3) {
        if (Rn.a(bool)) {
            this.f20871a.f19320b.setLocationTracking(bool.booleanValue());
        }
        if (Rn.a(bool2)) {
            this.f20871a.f19320b.setDataSendingEnabled(bool2.booleanValue());
        }
        if (Rn.a(bool3)) {
            this.f20871a.f19320b.setAdvIdentifiersTracking(bool3.booleanValue());
        }
        C1138e6 a10 = C1138e6.a();
        W4 w42 = this.f20871a;
        a(a(a10, w42), w42, 1, null);
    }

    public final void a(C1138e6 c1138e6, Gh gh, int i10, Map map) {
        String str;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        this.f20874d.b();
        if (!Rn.a(map)) {
            c1138e6.setValue(AbstractC1491sb.b(map));
            a(c1138e6, gh);
        }
        C1645yf c1645yf = new C1645yf(gh.f19319a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(gh.f19320b);
        synchronized (gh) {
            str = gh.f18274f;
        }
        a(new C1597wh(c1138e6, false, i10, null, new Gh(c1645yf, counterConfiguration, str)));
    }

    public static C1138e6 a(C1138e6 c1138e6, Gh gh) {
        if (H9.f18290a.contains(Integer.valueOf(c1138e6.f19574d))) {
            c1138e6.f19573c = gh.d();
        }
        return c1138e6;
    }

    public final void a(List list) {
        C1645yf c1645yf = this.f20871a.f19319a;
        synchronized (c1645yf) {
            c1645yf.f20987a.put("PROCESS_CFG_CUSTOM_HOSTS", Rn.a((Collection) list) ? null : new JSONArray((Collection) list).toString());
        }
    }

    public final void a(HashMap hashMap) {
        C1645yf c1645yf = this.f20871a.f19319a;
        synchronized (c1645yf) {
            c1645yf.f20987a.put("PROCESS_CFG_CLIDS", AbstractC1491sb.b(hashMap));
        }
    }

    public final void a(String str) {
        C1645yf c1645yf = this.f20871a.f19319a;
        synchronized (c1645yf) {
            c1645yf.f20987a.put("PROCESS_CFG_DISTRIBUTION_REFERRER", str);
        }
    }
}
