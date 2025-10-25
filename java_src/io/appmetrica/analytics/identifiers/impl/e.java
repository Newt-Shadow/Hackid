package io.appmetrica.analytics.identifiers.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
/* loaded from: classes2.dex */
public final class e implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public final Intent f17899a;

    /* renamed from: b  reason: collision with root package name */
    public IBinder f17900b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f17901c = new Object();

    public e(Intent intent, String str) {
        this.f17899a = intent;
        String.format("[AdvServiceConnection-%s]", str);
    }

    public final void a(Context context) {
        synchronized (this.f17901c) {
            this.f17900b = null;
            this.f17901c.notifyAll();
        }
        context.unbindService(this);
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        synchronized (this.f17901c) {
            this.f17900b = null;
            this.f17901c.notifyAll();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        synchronized (this.f17901c) {
            this.f17901c.notifyAll();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f17901c) {
            this.f17900b = iBinder;
            this.f17901c.notifyAll();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f17901c) {
            this.f17900b = null;
            this.f17901c.notifyAll();
        }
    }
}
