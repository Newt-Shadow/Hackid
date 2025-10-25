package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.coreapi.internal.control.ToggleObserver;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;
import java.util.ArrayList;
/* renamed from: io.appmetrica.analytics.impl.dc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1119dc implements InterfaceC1044ac, ToggleObserver {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f19512a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public final IHandlerExecutor f19513b = C1665za.j().w().c();

    /* renamed from: c  reason: collision with root package name */
    public C1454qn f19514c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f19515d;

    public final void a(Toggle toggle) {
        C1454qn c1454qn = new C1454qn(toggle);
        this.f19514c = c1454qn;
        c1454qn.f20460c.registerObserver(this, true);
    }

    public final void b(Object obj) {
        C1454qn c1454qn = this.f19514c;
        if (c1454qn == null) {
            kotlin.jvm.internal.m.s("togglesHolder");
            c1454qn = null;
        }
        c1454qn.f20459b.b(obj);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.ToggleObserver
    public final void onStateChanged(final boolean z10) {
        this.f19513b.execute(new Runnable() { // from class: io.appmetrica.analytics.impl.np
            @Override // java.lang.Runnable
            public final void run() {
                C1119dc.a(C1119dc.this, z10);
            }
        });
    }

    public final void a(final LocationControllerObserver locationControllerObserver, final boolean z10) {
        this.f19513b.execute(new Runnable() { // from class: io.appmetrica.analytics.impl.mp
            @Override // java.lang.Runnable
            public final void run() {
                C1119dc.a(C1119dc.this, locationControllerObserver, z10);
            }
        });
    }

    public static final void a(C1119dc c1119dc, LocationControllerObserver locationControllerObserver, boolean z10) {
        c1119dc.f19512a.add(locationControllerObserver);
        if (z10) {
            if (c1119dc.f19515d) {
                locationControllerObserver.startLocationTracking();
            } else {
                locationControllerObserver.stopLocationTracking();
            }
        }
    }

    public static final void a(C1119dc c1119dc, boolean z10) {
        if (c1119dc.f19515d != z10) {
            c1119dc.f19515d = z10;
            id.l lVar = z10 ? C1069bc.f19430a : C1094cc.f19474a;
            for (LocationControllerObserver locationControllerObserver : c1119dc.f19512a) {
                lVar.invoke(locationControllerObserver);
            }
        }
    }

    public final void a(Object obj) {
        C1454qn c1454qn = this.f19514c;
        if (c1454qn == null) {
            kotlin.jvm.internal.m.s("togglesHolder");
            c1454qn = null;
        }
        c1454qn.f20459b.a(obj);
    }

    public final void a(boolean z10) {
        C1454qn c1454qn = this.f19514c;
        if (c1454qn == null) {
            kotlin.jvm.internal.m.s("togglesHolder");
            c1454qn = null;
        }
        c1454qn.f20458a.a(z10);
    }
}
