package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetricaConfig;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: io.appmetrica.analytics.impl.wb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1591wb {

    /* renamed from: a  reason: collision with root package name */
    public final C1209h2 f20858a = new C1209h2();

    /* renamed from: b  reason: collision with root package name */
    public final C1636y6 f20859b = new C1636y6();

    /* renamed from: c  reason: collision with root package name */
    public C1180fn f20860c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f20861d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f20862e;

    public final synchronized void a(Context context, AppMetricaConfig appMetricaConfig, InterfaceC1168fb interfaceC1168fb) {
        if (this.f20862e) {
            return;
        }
        yc.t.w(this.f20859b.f20958a, new Ra[]{this.f20858a.a(context, appMetricaConfig, interfaceC1168fb)});
        this.f20862e = true;
    }

    public final synchronized void b() {
        int r10;
        if (this.f20861d) {
            return;
        }
        C1636y6 c1636y6 = this.f20859b;
        ArrayList arrayList = C1509t4.j().f20626i.f19027a;
        r10 = yc.p.r(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(r10);
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            c1636y6.f20958a.addAll(arrayList2);
            this.f20861d = true;
            return;
        }
        it.next().getClass();
        throw new ClassCastException();
    }

    public final synchronized void c() {
        if (this.f20860c != null) {
            return;
        }
        Q1 q12 = new Q1(this.f20859b);
        this.f20860c = new C1180fn(q12);
        C1155en c1155en = new C1155en();
        c1155en.f19603a.add(q12);
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null) {
            c1155en.f19603a.add(defaultUncaughtExceptionHandler);
        }
        Thread.setDefaultUncaughtExceptionHandler(c1155en);
    }

    public final synchronized void a() {
        this.f20859b.f20958a.clear();
        this.f20861d = false;
        this.f20862e = false;
    }
}
