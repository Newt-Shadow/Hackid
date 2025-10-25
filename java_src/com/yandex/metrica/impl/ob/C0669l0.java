package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.j;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.l0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0669l0 implements InterfaceC0720n1 {

    /* renamed from: a  reason: collision with root package name */
    private Location f12757a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f12758b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f12759c;

    /* renamed from: d  reason: collision with root package name */
    private Boolean f12760d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, String> f12761e = new LinkedHashMap();

    /* renamed from: f  reason: collision with root package name */
    private Map<String, String> f12762f = new LinkedHashMap();

    /* renamed from: g  reason: collision with root package name */
    private String f12763g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f12764h;

    /* renamed from: i  reason: collision with root package name */
    private T1 f12765i;

    private static boolean a(Object obj) {
        return obj == null;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void b(boolean z10) {
        this.f12758b = Boolean.valueOf(z10);
        b();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void c(String str, String str2) {
        this.f12762f.put(str, str2);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void setStatisticsSending(boolean z10) {
        this.f12760d = Boolean.valueOf(z10);
        b();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void setUserProfileID(String str) {
        this.f12763g = str;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void a(boolean z10) {
        this.f12759c = Boolean.valueOf(z10);
        b();
    }

    private void b(Map<String, String> map, j.b bVar) {
        if (A2.b(map)) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bVar.o(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void a(Location location) {
        this.f12757a = location;
    }

    public com.yandex.metrica.j a(com.yandex.metrica.j jVar) {
        if (this.f12764h) {
            return jVar;
        }
        j.b b10 = com.yandex.metrica.j.b(jVar.apiKey);
        b10.i(jVar.f14100b, jVar.f14107i);
        b10.n(jVar.f14099a);
        b10.d(jVar.preloadInfo);
        b10.c(jVar.location);
        if (A2.a((Object) jVar.f14102d)) {
            b10.h(jVar.f14102d);
        }
        if (A2.a((Object) jVar.appVersion)) {
            b10.f(jVar.appVersion);
        }
        if (A2.a(jVar.f14104f)) {
            b10.m(jVar.f14104f.intValue());
        }
        if (A2.a(jVar.f14103e)) {
            b10.b(jVar.f14103e.intValue());
        }
        if (A2.a(jVar.f14105g)) {
            b10.r(jVar.f14105g.intValue());
        }
        if (A2.a(jVar.logs) && jVar.logs.booleanValue()) {
            b10.l();
        }
        if (A2.a(jVar.sessionTimeout)) {
            b10.z(jVar.sessionTimeout.intValue());
        }
        if (A2.a(jVar.crashReporting)) {
            b10.w(jVar.crashReporting.booleanValue());
        }
        if (A2.a(jVar.nativeCrashReporting)) {
            b10.B(jVar.nativeCrashReporting.booleanValue());
        }
        if (A2.a(jVar.locationTracking)) {
            b10.A(jVar.locationTracking.booleanValue());
        }
        if (A2.a((Object) jVar.f14101c)) {
            b10.f14115f = jVar.f14101c;
        }
        if (A2.a(jVar.firstActivationAsUpdate)) {
            b10.j(jVar.firstActivationAsUpdate.booleanValue());
        }
        if (A2.a(jVar.statisticsSending)) {
            b10.J(jVar.statisticsSending.booleanValue());
        }
        if (A2.a(jVar.f14109k)) {
            b10.p(jVar.f14109k.booleanValue());
        }
        if (A2.a(jVar.maxReportsInDatabaseCount)) {
            b10.v(jVar.maxReportsInDatabaseCount.intValue());
        }
        if (A2.a((Object) null)) {
            b10.e(null);
        }
        if (A2.a((Object) jVar.userProfileID)) {
            b10.s(jVar.userProfileID);
        }
        if (A2.a(jVar.revenueAutoTrackingEnabled)) {
            b10.F(jVar.revenueAutoTrackingEnabled.booleanValue());
        }
        if (A2.a(jVar.appOpenTrackingEnabled)) {
            b10.t(jVar.appOpenTrackingEnabled.booleanValue());
        }
        a(this.f12761e, b10);
        a(jVar.f14106h, b10);
        b(this.f12762f, b10);
        b(jVar.errorEnvironment, b10);
        Boolean bool = this.f12758b;
        if (a(jVar.locationTracking) && A2.a(bool)) {
            b10.A(bool.booleanValue());
        }
        Location location = this.f12757a;
        if (a((Object) jVar.location) && A2.a(location)) {
            b10.c(location);
        }
        Boolean bool2 = this.f12760d;
        if (a(jVar.statisticsSending) && A2.a(bool2)) {
            b10.J(bool2.booleanValue());
        }
        if (!A2.a((Object) jVar.userProfileID) && A2.a((Object) this.f12763g)) {
            b10.s(this.f12763g);
        }
        this.f12764h = true;
        this.f12757a = null;
        this.f12758b = null;
        this.f12760d = null;
        this.f12761e.clear();
        this.f12762f.clear();
        this.f12763g = null;
        return b10.k();
    }

    private void b() {
        T1 t12 = this.f12765i;
        if (t12 != null) {
            t12.a(this.f12758b, this.f12760d, this.f12759c);
        }
    }

    private void a(Map<String, String> map, j.b bVar) {
        if (A2.b(map)) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bVar.g(entry.getKey(), entry.getValue());
        }
    }

    public void a(T1 t12) {
        this.f12765i = t12;
    }
}
