package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.NetworkServiceLocator;
import io.appmetrica.analytics.networktasks.internal.NetworkTask;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class Sm implements InterfaceC1152ek, G9 {

    /* renamed from: a  reason: collision with root package name */
    public final Qa f18947a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC1576vl f18948b;

    /* renamed from: c  reason: collision with root package name */
    public final AtomicBoolean f18949c = new AtomicBoolean(false);

    public Sm(Qa qa2, InterfaceC1576vl interfaceC1576vl) {
        this.f18947a = qa2;
        this.f18948b = interfaceC1576vl;
        Objects.toString(qa2.b());
    }

    public void a() {
    }

    public final void b() {
        if (!this.f18949c.get()) {
            g();
        }
    }

    public final void c() {
        if (!this.f18949c.get()) {
            f();
            a();
        }
    }

    public final Qa d() {
        return this.f18947a;
    }

    public final boolean e() {
        return this.f18949c.get();
    }

    public void f() {
        this.f18948b.a();
    }

    public void g() {
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1152ek
    public final void onCreate() {
        this.f18949c.compareAndSet(true, false);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1152ek
    public final void onDestroy() {
        if (this.f18949c.compareAndSet(false, true)) {
            a();
        }
    }

    public final void a(NetworkTask networkTask) {
        C1665za.E.getClass();
        NetworkServiceLocator.getInstance().getNetworkCore().startTask(networkTask);
    }
}
