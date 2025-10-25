package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.fg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1173fg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InterfaceC1447qg f19646a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Throwable f19647b;

    public RunnableC1173fg(InterfaceC1447qg interfaceC1447qg, Throwable th) {
        this.f19646a = interfaceC1447qg;
        this.f19647b = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19646a.a(this.f19647b);
    }
}
