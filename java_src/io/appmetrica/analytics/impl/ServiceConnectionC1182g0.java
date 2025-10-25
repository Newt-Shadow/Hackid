package io.appmetrica.analytics.impl;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import io.appmetrica.analytics.internal.IAppMetricaService;
/* renamed from: io.appmetrica.analytics.impl.g0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ServiceConnectionC1182g0 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1207h0 f19663a;

    public ServiceConnectionC1182g0(C1207h0 c1207h0) {
        this.f19663a = c1207h0;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f19663a) {
            this.f19663a.f19702d = IAppMetricaService.Stub.asInterface(iBinder);
            this.f19663a.f19703e.countDown();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f19663a) {
            this.f19663a.f19702d = null;
        }
    }
}
