package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.f0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1157f0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1207h0 f19614a;

    public RunnableC1157f0(C1207h0 c1207h0) {
        this.f19614a = c1207h0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1207h0 c1207h0 = this.f19614a;
        synchronized (c1207h0) {
            if (c1207h0.f19699a != null && c1207h0.a()) {
                try {
                    c1207h0.f19702d = null;
                    c1207h0.f19699a.unbindService(c1207h0.f19707i);
                } catch (Throwable unused) {
                }
            }
            c1207h0.f19702d = null;
        }
    }
}
