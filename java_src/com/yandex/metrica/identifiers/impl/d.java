package com.yandex.metrica.identifiers.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
/* loaded from: classes.dex */
public class d implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final Intent f9657a;

    /* renamed from: b  reason: collision with root package name */
    private IBinder f9658b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f9659c = new Object();

    public d(Intent intent, String str) {
        this.f9657a = intent;
        String.format("[AdServiceConnection-%s]", str);
    }

    public Intent a() {
        return this.f9657a;
    }

    public IBinder b(long j10) {
        if (this.f9658b == null) {
            synchronized (this.f9659c) {
                if (this.f9658b == null) {
                    try {
                        this.f9659c.wait(j10);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
        return this.f9658b;
    }

    public boolean c(Context context) {
        return context.bindService(this.f9657a, this, 1);
    }

    public void d(Context context) {
        synchronized (this.f9659c) {
            this.f9658b = null;
            this.f9659c.notifyAll();
        }
        context.unbindService(this);
    }

    @Override // android.content.ServiceConnection
    public void onBindingDied(ComponentName componentName) {
        synchronized (this.f9659c) {
            this.f9658b = null;
            this.f9659c.notifyAll();
        }
    }

    @Override // android.content.ServiceConnection
    public void onNullBinding(ComponentName componentName) {
        synchronized (this.f9659c) {
            this.f9659c.notifyAll();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f9659c) {
            this.f9658b = iBinder;
            this.f9659c.notifyAll();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f9659c) {
            this.f9658b = null;
            this.f9659c.notifyAll();
        }
    }
}
