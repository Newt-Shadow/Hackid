package io.appmetrica.analytics.impl;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
/* loaded from: classes2.dex */
public final class D1 implements InterfaceC1481s1 {

    /* renamed from: a  reason: collision with root package name */
    public final ICommonExecutor f18070a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC1481s1 f18071b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f18072c;

    public D1(InterfaceC1481s1 interfaceC1481s1) {
        this(C1665za.j().w().b(), interfaceC1481s1);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void a(Intent intent, int i10) {
        this.f18070a.execute(new C1556v1(this, intent, i10));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void b(Intent intent) {
        this.f18070a.execute(new C1656z1(this, intent));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void c(Intent intent) {
        this.f18070a.execute(new C1631y1(this, intent));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void onConfigurationChanged(Configuration configuration) {
        this.f18070a.execute(new C1506t1(this, configuration));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final synchronized void onCreate() {
        this.f18072c = true;
        this.f18070a.execute(new C1531u1(this));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void onDestroy() {
        this.f18070a.removeAll();
        synchronized (this) {
            this.f18072c = false;
        }
        this.f18071b.onDestroy();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void pauseUserSession(Bundle bundle) {
        this.f18070a.execute(new C1(this, bundle));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void reportData(int i10, Bundle bundle) {
        this.f18070a.execute(new A1(this, i10, bundle));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void resumeUserSession(Bundle bundle) {
        this.f18070a.execute(new B1(this, bundle));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void a(Intent intent, int i10, int i11) {
        this.f18070a.execute(new C1581w1(this, intent, i10, i11));
    }

    public D1(IHandlerExecutor iHandlerExecutor, InterfaceC1481s1 interfaceC1481s1) {
        this.f18072c = false;
        this.f18070a = iHandlerExecutor;
        this.f18071b = interfaceC1481s1;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void a(Intent intent) {
        this.f18070a.execute(new C1606x1(this, intent));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1481s1
    public final void a(InterfaceC1456r1 interfaceC1456r1) {
        this.f18071b.a(interfaceC1456r1);
    }
}
