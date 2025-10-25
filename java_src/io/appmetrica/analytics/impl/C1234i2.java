package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationState;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationStateObserver;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationStateProvider;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: io.appmetrica.analytics.impl.i2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1234i2 implements InterfaceC1152ek, ApplicationStateProvider {

    /* renamed from: a  reason: collision with root package name */
    public final HashSet f19770a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    public final HashSet f19771b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    public volatile ApplicationState f19772c = ApplicationState.UNKNOWN;

    /* renamed from: d  reason: collision with root package name */
    public final CopyOnWriteArraySet f19773d = new CopyOnWriteArraySet();

    public final void a(int i10) {
        this.f19770a.remove(Integer.valueOf(i10));
        a();
    }

    public final void b(int i10) {
        this.f19771b.add(Integer.valueOf(i10));
        this.f19770a.remove(Integer.valueOf(i10));
        a();
    }

    public final void c(int i10) {
        this.f19770a.add(Integer.valueOf(i10));
        this.f19771b.remove(Integer.valueOf(i10));
        a();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationStateProvider
    public final ApplicationState getCurrentState() {
        return this.f19772c;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1152ek
    public final void onCreate() {
        a();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1152ek
    public final void onDestroy() {
        if (this.f19772c == ApplicationState.VISIBLE) {
            this.f19772c = ApplicationState.BACKGROUND;
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationStateProvider
    public final ApplicationState registerStickyObserver(ApplicationStateObserver applicationStateObserver) {
        if (applicationStateObserver != null) {
            this.f19773d.add(applicationStateObserver);
        }
        return this.f19772c;
    }

    public final void a() {
        ApplicationState applicationState = ApplicationState.UNKNOWN;
        if (!this.f19770a.isEmpty()) {
            applicationState = ApplicationState.VISIBLE;
        } else if (!this.f19771b.isEmpty()) {
            applicationState = ApplicationState.BACKGROUND;
        }
        if (this.f19772c != applicationState) {
            this.f19772c = applicationState;
            Iterator it = this.f19773d.iterator();
            while (it.hasNext()) {
                ((ApplicationStateObserver) it.next()).onApplicationStateChanged(this.f19772c);
            }
        }
    }
}
