package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.measurement.internal.cc;
import i6.f0;
/* loaded from: classes.dex */
public final class AppMeasurementService extends Service implements f0 {

    /* renamed from: a  reason: collision with root package name */
    private cc f7202a;

    private final cc d() {
        if (this.f7202a == null) {
            this.f7202a = new cc(this);
        }
        return this.f7202a;
    }

    @Override // i6.f0
    public final boolean a(int i10) {
        return stopSelfResult(i10);
    }

    @Override // i6.f0
    public final void b(Intent intent) {
        v0.a.b(intent);
    }

    @Override // i6.f0
    public final void c(JobParameters jobParameters, boolean z10) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return d().d(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        d().a();
    }

    @Override // android.app.Service
    public void onDestroy() {
        d().b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        d();
        cc.i(intent);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        d().c(intent, i10, i11);
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        d();
        cc.j(intent);
        return true;
    }
}
