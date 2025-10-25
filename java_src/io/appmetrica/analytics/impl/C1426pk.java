package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import io.appmetrica.analytics.internal.AppMetricaService;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceWakeLock;
import java.util.HashMap;
/* renamed from: io.appmetrica.analytics.impl.pk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1426pk implements ServiceWakeLock {

    /* renamed from: a  reason: collision with root package name */
    public final Context f20391a;

    /* renamed from: b  reason: collision with root package name */
    public final C1401ok f20392b;

    /* renamed from: c  reason: collision with root package name */
    public final HashMap f20393c = new HashMap();

    public C1426pk(Context context, C1401ok c1401ok) {
        this.f20391a = context;
        this.f20392b = c1401ok;
    }

    public final String a(String str) {
        return "io.appmetrica.analytics.ACTION_SERVICE_WAKELOCK." + str;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceWakeLock
    public final synchronized boolean acquireWakeLock(String str) {
        boolean z10;
        z10 = true;
        if (this.f20393c.get(str) == null) {
            HashMap hashMap = this.f20393c;
            C1401ok c1401ok = this.f20392b;
            Context context = this.f20391a;
            String a10 = a(str);
            c1401ok.f20309a.getClass();
            Intent intent = new Intent(context, AppMetricaService.class);
            intent.setAction(a10);
            ServiceConnectionC1376nk serviceConnectionC1376nk = new ServiceConnectionC1376nk();
            try {
                context.bindService(intent, serviceConnectionC1376nk, 1);
            } catch (Throwable unused) {
                serviceConnectionC1376nk = null;
            }
            hashMap.put(str, serviceConnectionC1376nk);
        }
        if (this.f20393c.get(str) == null) {
            z10 = false;
        }
        return z10;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceWakeLock
    public final synchronized void releaseWakeLock(String str) {
        ServiceConnection serviceConnection = (ServiceConnection) this.f20393c.get(str);
        if (serviceConnection != null) {
            C1401ok c1401ok = this.f20392b;
            a(str);
            Context context = this.f20391a;
            c1401ok.getClass();
            try {
                context.unbindService(serviceConnection);
            } catch (Throwable unused) {
            }
            ServiceConnection serviceConnection2 = (ServiceConnection) this.f20393c.remove(str);
        }
    }
}
